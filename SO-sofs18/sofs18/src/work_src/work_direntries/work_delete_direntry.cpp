//luis santana 80304

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

        uint32_t soDeleteDirEntry(int pih, const char *name)
        {
            soProbe(203, "%s(%d, %s)\n", __FUNCTION__, pih, name);

            /* change the following line by your code */
            //return bin::soDeleteDirEntry(pih, name);
        	SOInode* ind = soITGetInodePointer(pih);
        	SODirEntry DE[DirentriesPerBlock];
        	uint32_t tmp;
        	

        	for(uint32_t i=0;i<(ind->size)/BlockSize;i++){
        		sofs18::soReadFileBlock(pih,i,DE);
        		for(uint32_t j=0;j<DirentriesPerBlock;j++){
        			if(strcmp(DE[j].name,name) == 0){
        				memset(DE[j].name,'\0',(SOFS18_MAX_NAME));
        				tmp = DE[j].in;
        				DE[j].in = NullReference;
        				sofs18::soWriteFileBlock(pih,i,DE);
        				return tmp;
        			}
        		}
        	}
        	throw SOException(ENOENT,__FUNCTION__);
        } 

    };
};

