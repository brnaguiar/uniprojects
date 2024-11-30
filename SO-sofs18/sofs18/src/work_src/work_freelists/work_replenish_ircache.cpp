/*
 *  \author António Rui Borges - 2012-2015
 *  \authur Artur Pereira - 2016-2018
 */

#include "work_freelists.h"

#include <string.h>
#include <errno.h>
#include <iostream>

#include "core.h"
#include "dal.h"
#include "freelists.h"
#include "bin_freelists.h"

namespace sofs18
{
    namespace work
    {

        using namespace std;

        void soReplenishIRCache(void)
        {
            soProbe(403, "%s()\n", __FUNCTION__);
            
            SOSuperBlock *sbp = soSBGetPointer();
            //Nothing should be done if the retrieval cache is not empty.
            if(sbp->ircache.idx != INODE_REFERENCE_CACHE_SIZE){
                return;
            }
            uint32_t irindex;
            uint32_t iindex = 0;
            uint32_t index;
            // The insertion cache should only be used if the free inode list table is empty 
            if(sbp->filt_head == sbp->filt_tail){
               for(irindex = INODE_REFERENCE_CACHE_SIZE - sbp->iicache.idx; irindex < INODE_REFERENCE_CACHE_SIZE; irindex++){
                   sbp->ircache.ref[irindex] = sbp->iicache.ref[iindex];
                   iindex++;
               }
               sbp->iicache.idx = 0;
               sbp->ircache.idx = INODE_REFERENCE_CACHE_SIZE - sbp->iicache.idx;
               
            }
            else{
                soSBOpen();
                //Only a single block should be processed, even if it is not enough to fulfill the retrieval cache.
                // The block to be processes is the one pointed to by the filt_head field of the superblock.   
                uint32_t *block = soFILTOpenBlock(sbp->filt_head / ReferencesPerBlock);
                //position in the block
                uint32_t pos = sbp->filt_head % ReferencesPerBlock;
                //

                if(pos <= INODE_REFERENCE_CACHE_SIZE){
                    pos = pos;
                }
                else{
                    pos = INODE_REFERENCE_CACHE_SIZE;
                }
                
                  for(index = INODE_REFERENCE_CACHE_SIZE - sbp->ircache.idx; index < INODE_REFERENCE_CACHE_SIZE ;index++){
                    sbp->ircache.ref[index] = block[pos];
                    pos++;
                   
                }
                sbp->ircache.idx = INODE_REFERENCE_CACHE_SIZE - pos;
                sbp->filt_head = ((sbp->filt_head + 1) * ReferencesPerBlock) % sbp->filt_size;
                soSBSave();
                soSBClose();
                soFILTSaveBlock();
                soFILTCloseBlock();
            }
        }

    };

};
