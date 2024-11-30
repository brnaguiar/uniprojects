#include "work_freelists.h"

#include <stdio.h>
#include <errno.h>
#include <inttypes.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>

#include "core.h"
#include "dal.h"
#include "freelists.h"
#include "bin_freelists.h"

namespace sofs18
{
    namespace work
    {

        uint32_t soAllocInode(uint32_t type)
        {
            soProbe(401, "%s(%x)\n", __FUNCTION__, type);

            /* change the following line by your code */
         //  return bin::soAllocInode(type);
            SOSuperBlock* sb = soSBGetPointer();
               if(sb->ircache.idx == BLOCK_REFERENCE_CACHE_SIZE){
				   soReplenishIRCache();
			   }

			   if( sb -> ircache.idx == NullReference){
				   throw SOException(ENOSPC,__FUNCTION__);
				   }


			   uint32_t i = sb -> ircache.idx;
			   uint32_t temp = sb -> ircache.ref[i];
			   sb -> ircache.ref[i] = NullReference;
			   sb -> ircache.idx++;
			   sb -> ifree--;

			   soSBSave();

			   return temp;
	     }

    };

};
