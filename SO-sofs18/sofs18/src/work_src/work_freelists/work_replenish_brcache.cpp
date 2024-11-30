/*
 *  \author António Rui Borges - 2012-2015
 *  \authur Artur Pereira - 2016-2018
 */

/*
 *  \author Bruno Filipe Oliveira Aguiar, 80177
 *  \tester Bruno Filipe oliveira Aguiar, 80177
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

        void soReplenishBRCache(void)
        {
            soProbe(443, "%s()\n", __FUNCTION__);




                        /* change the following line by your code */
                        SOSuperBlock *sbp = soSBGetPointer();
                        //Nothing should be done if the retrieval cache is not empty.
                        if(sbp->brcache.idx != BLOCK_REFERENCE_CACHE_SIZE ) {
                            return;
                        }

                        uint32_t brindex;
                        uint32_t bindex = 0;
                        uint32_t index;
                        // The insertion cache should only be used if the free inode list table is empty
                        if(sbp->fblt_head == sbp->fblt_tail) {

                           for(brindex = BLOCK_REFERENCE_CACHE_SIZE  - sbp->bicache.idx; brindex < BLOCK_REFERENCE_CACHE_SIZE ; brindex++){
                               sbp->brcache.ref[brindex] = sbp->bicache.ref[bindex];
                               bindex++;
                           }

                           sbp->bicache.idx = 0;
                           sbp->brcache.idx = BLOCK_REFERENCE_CACHE_SIZE  - sbp->bicache.idx;


                        } else {

                            soSBOpen();
                            //Only a single block should be processed, even if it is not enough to fulfill the retrieval cache.
                            // The block to be processes is the one pointed to by the fblt_head field of the superblock.
                            uint32_t *block = soFBLTOpenBlock(sbp->fblt_head / ReferencesPerBlock);
                            //position in the block
                            uint32_t pos = sbp->fblt_head % ReferencesPerBlock;


                            if(pos <= BLOCK_REFERENCE_CACHE_SIZE)
                              pos = pos;
                            else
                                pos = BLOCK_REFERENCE_CACHE_SIZE;

                            for(index = BLOCK_REFERENCE_CACHE_SIZE  - sbp->brcache.idx; index < BLOCK_REFERENCE_CACHE_SIZE  ;index++) {
                              sbp->brcache.ref[index] = block[pos];
                              pos++;
                            }

                            sbp->brcache.idx = BLOCK_REFERENCE_CACHE_SIZE - pos;
                            sbp->fblt_head = ((sbp->fblt_head + 1) * ReferencesPerBlock) % sbp->fblt_size;
                            soSBSave();
                            soSBClose();
                            soFBLTSaveBlock();
                            soFBLTCloseBlock();


                    }
            /* change the following line by your code */
          //  bin::soReplenishBRCache();
        }

    };

};
