/*
 *  \author António Rui Borges - 2012-2015
 *  \authur Artur Pereira - 2016-2018
 */

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

        void soFreeInode(uint32_t in)
        {
            soProbe(442, "%s(%u)\n", __FUNCTION__, in);
            
            SOSuperBlock* sb = soSBGetPointer();

            if(sb->iicache.idx == BLOCK_REFERENCE_CACHE_SIZE){
				soDepleteIICache();
            }
 
            sb->iicache.ref[sb->iicache.idx] = in;
            sb->iicache.idx += 1;
            
            soSBSave();
            //bin::soFreeDataBlock(bn);
        }

    };

};
