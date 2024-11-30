//luis santana 80304

#include "work_mksofs.h"

#include "rawdisk.h"
#include "core.h"
#include "bin_mksofs.h"

#include <string.h>
#include <inttypes.h>

namespace sofs18
{
    namespace work
    {

        void fillInSuperBlock(const char *name, uint32_t ntotal, uint32_t itotal, uint32_t rdsize)
        {
            soProbe(602, "%s(%s, %u, %u, %u)\n", __FUNCTION__, name, ntotal, itotal, rdsize);
                       
            SOSuperBlock sb;
            SOInodeReferenceCache ircache;
            SOInodeReferenceCache iicache;
            SOBlockReferenceCache brcache;
            SOBlockReferenceCache bicache;
           	

           	strncpy(sb.name,name,PARTITION_NAME_SIZE);
            sb.magic = MAGIC_NUMBER;
            sb.version = VERSION_NUMBER;
            sb.mntstat = 1;
            sb.mntcnt = 0;
            sb.filt_start = 1;
            sb.filt_size = itotal/ReferencesPerBlock + (itotal%ReferencesPerBlock == 0 ? 0 : 1); 
            sb.filt_head = 0;
            sb.filt_tail = itotal-1;
            sb.it_size = itotal/InodesPerBlock;
            sb.it_start = 1;
            sb.fblt_start = 1;
            sb.fblt_size = (ntotal-rdsize)/ReferencesPerBlock + ((ntotal-rdsize)%ReferencesPerBlock == 0 ? 0 : 1);
            sb.fblt_head = 0;
            sb.fblt_tail = ntotal - rdsize;
            sb.dz_start = 0;
            sb.dz_total = ntotal - rdsize;
            sb.dz_free = ntotal-1;
            			
            			
            sb.ntotal = ntotal;
            sb.itotal = itotal;
            
           	for(unsigned int i=0;i < INODE_REFERENCE_CACHE_SIZE; i++){
           		ircache.ref[i] = NullReference;
           		iicache.ref[i] = NullReference;
           	}
           	ircache.idx = INODE_REFERENCE_CACHE_SIZE; //?
           	iicache.idx = 0; //? 

           	for(unsigned int i=0;i < BLOCK_REFERENCE_CACHE_SIZE; i++){
           		brcache.ref[i] = NullReference;
           		bicache.ref[i] = NullReference;	
           	}
            brcache.idx = BLOCK_REFERENCE_CACHE_SIZE; //?
            bicache.idx = 0; //?

            sb.ircache = ircache;
            sb.iicache = iicache;
            sb.brcache = brcache;
            sb.bicache = bicache;
            soWriteRawBlock(0, &sb);

            /* change the following line by your code 
            bin::fillInSuperBlock(name, ntotal, itotal, rdsize);*/
        }

    };

};

