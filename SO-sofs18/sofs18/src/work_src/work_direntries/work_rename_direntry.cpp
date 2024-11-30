
/*
 *  \author José Moreira , 79671
 */

#include "direntries.h"

#include "core.h"
#include "dal.h"
#include "fileblocks.h"
#include "bin_direntries.h"

#include <string.h>
#include <errno.h>
#include <sys/stat.h>

namespace sofs18
{
    namespace work
    {

        void soRenameDirEntry(int pih, const char *name, const char *newName)
        {
            soProbe(204, "%s(%d, %s, %s)\n", __FUNCTION__, pih, name, newName);

            /* change the following line by your code */
            SOInode* inode = soITGetInodePointer(pih);
            SODirEntry dir[DirentriesPerBlock];
            for(uint32_t i=0; i<inode->blkcnt; i++)
            {
              sofs18::soReadFileBlock(pih, i, dir);
              for(uint32_t j=0; j<DirentriesPerBlock; j++)
              {
                if(strcmp(dir[j].name, name)==0) //encontrar o nome;
                {
                  strcpy(dir[j].name, newName);
                  sofs18::soWriteFileBlock(pih, i, dir);
                  break;
                }
              }
            }


            //bin::soRenameDirEntry(pih, name, newName);
        }

    };

};
