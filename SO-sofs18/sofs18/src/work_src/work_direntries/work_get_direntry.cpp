//Mariana Pinheiro 80186
#include "direntries.h"

#include "core.h"
#include "dal.h"
#include "fileblocks.h"
#include "bin_direntries.h"
#include "exception.h"

#include <errno.h>
#include <string.h>
#include <sys/stat.h>

namespace sofs18
{
    namespace work
    {

        uint32_t soGetDirEntry(int pih, const char *name)
        {
            soProbe(201, "%s(%d, %s)\n", __FUNCTION__, pih, name);
            //return bin::soGetDirEntry(pih, name);

            SOInode* ipoint = soITGetInodePointer(pih);
            SODirEntry dir[DirentriesPerBlock];

            if (strchr(name, '/')!=NULL){
                throw SOException(EINVAL, __FUNCTION__);
            }
            
            uint32_t tmp = ipoint->size / sizeof(SODirEntry);
            uint32_t nblock = tmp / DirentriesPerBlock;
           
            for(uint32_t i=0; i<nblock; i++){
            	
            	soReadDataBlock(i, dir);
            	for(uint32_t j=0; j<DirentriesPerBlock; j++){
            		if(strcmp(name, dir[j].name) == 0){
            			return dir[j].in;   //encontrou o file return o inode number
            		}
            	}
            }
            return NullReference;  //nao encontrou return Null
        }

    };

};

