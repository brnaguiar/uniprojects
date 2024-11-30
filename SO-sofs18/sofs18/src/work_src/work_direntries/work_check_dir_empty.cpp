#include "direntries.h"

#include "core.h"
#include "dal.h"
#include "fileblocks.h"
#include "bin_direntries.h"

#include <errno.h>
#include <string.h>
#include <sys/stat.h>

namespace sofs18
{
    namespace work
    {

        bool soCheckDirEmpty(int ih)
        {
            soProbe(205, "%s(%d)\n", __FUNCTION__, ih);
            SOInode *inode = soITGetInodePointer(ih);
            SODirEntry dir[DirentriesPerBlock];

            
            for(uint32_t j = 0; j < (inode->size/BlockSize);j++){
                sofs18::soReadFileBlock(ih,j,dir);
                for(uint32_t k = 0;k < DirentriesPerBlock;k++){
                    if(dir[k].in != NullReference){
                        if(!(strcmp(dir[k].name,"..")== 0 || strcmp(dir[k].name,".") == 0)){
                            return false;
                        }
                    }

                }
            }
            return true;


            /* change the following line by your code */
            //return bin::soCheckDirEmpty(ih);
            
        }

    };

};

