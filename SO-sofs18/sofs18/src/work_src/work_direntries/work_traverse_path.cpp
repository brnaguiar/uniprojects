#include "direntries.h"

#include "core.h"
#include "dal.h"
#include "fileblocks.h"
#include "direntries.h"
#include "bin_direntries.h"

#include <errno.h>
#include <string.h>
#include <libgen.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>

namespace sofs18
{
    namespace work
    {

        uint32_t soTraversePath(char *path)
        {
            soProbe(221, "%s(%s)\n", __FUNCTION__, path);

            /* change the following line by your code */
            /*return bin::soTraversePath(path);*/
            
             uint32_t InodeN;
	
			char *CopyOfPath = strdupa(path);												
			char *base = strdupa(basename(CopyOfPath));							
			char *Dir = dirname(CopyOfPath);
			
			uint32_t length = strlen(path);
			if(length == 1 && path[0] == '/'){
				InodeN = 0;															
				return InodeN;															
			}
			
			if(strcmp(Dir,"/") == 0){
    	int ih = soITOpenInode(0);														
        if(!soCheckInodeAccess(ih, 01)) throw SOException(EACCES,__FUNCTION__);		
    	InodeN = soGetDirEntry(ih, base);										
    	if(InodeN == NullReference) throw SOException(ENOENT,__FUNCTION__); 	
        soITSaveInode(ih);	
        														
		return InodeN;
		}
		
		int ih = soITOpenInode(soTraversePath(Dir));										
		if(!soCheckInodeAccess(ih, 01)) throw SOException(EACCES,__FUNCTION__);			
		InodeN = soGetDirEntry(ih, base);											
		if(InodeN == NullReference) throw SOException(ENOENT,__FUNCTION__);		
		soITSaveInode(ih);														
    
    return InodeN;		
        }

    };

};

