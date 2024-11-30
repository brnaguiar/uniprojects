/*
 *  \author António Rui Borges - 2012-2015
 *  \authur Artur Pereira - 2016-2018
 */


/*
 *  \author José Moreira , 79671
 */

#include "work_freelists.h"

#include "core.h"
#include "dal.h"
#include "freelists.h"
#include "bin_freelists.h"

#include <stdio.h>
#include <errno.h>
#include <iostream>
#include <string.h>
using namespace std;

namespace sofs18
{
    namespace work
    {

        /*
         */
        void soDepleteIICache(void)
        {
            soProbe(404, "%s()\n", __FUNCTION__);

            /* change the following line by your code */
            /*
            SOSuperBlock* sb = soSBGetPointer();

            if(sb->iicache.idx != INODE_REFERENCE_CACHE_SIZE)
            {
              //error handling
            }
            uint32_t nblock = sb->filt_tail/ReferencesPerBlock;
            uint32_t idx = sb->filt_tail%ReferencesPerBlock;
            uint32_t npos = ReferencesPerBlock - idx;
            void* blk;
            soReadDataBlock(nblock,&blk);

            for(uint32_t j=0; j<npos; j++){
              blk = (void*) sb->iicache.ref[j];
              soWriteDataBlock(nblock,&blk);
            }

            for(uint32_t i=npos;i<INODE_REFERENCE_CACHE_SIZE; i++){
              int aux = 0;
              sb->iicache.ref[i] = sb->iicache.ref[aux];
              aux++;
            }
            for(uint32_t i = INODE_REFERENCE_CACHE_SIZE; i>INODE_REFERENCE_CACHE_SIZE-npos; i--){
              sb->iicache.ref[i] = NullReference;
              sb->iicache.idx = (sb->iicache.idx - 1 + INODE_REFERENCE_CACHE_SIZE)%INODE_REFERENCE_CACHE_SIZE;

            }
            */
            SOSuperBlock* sb = soSBGetPointer();
            uint32_t nblock = sb->filt_tail/ReferencesPerBlock;
            uint32_t* blckHead = soFILTOpenBlock(nblock);
            uint32_t index = sb->filt_tail%ReferencesPerBlock;


            if(ReferencesPerBlock-index >= INODE_REFERENCE_CACHE_SIZE){
              memcpy(blckHead + (index * sizeof(uint32_t)), &sb->iicache.ref[0], INODE_REFERENCE_CACHE_SIZE * sizeof(uint32_t));
              memset(sb->iicache.ref,NullReference,sb->iicache.idx * sizeof(uint32_t));
              sb->iicache.idx = sb->iicache.idx - (INODE_REFERENCE_CACHE_SIZE);
              sb->filt_tail = (index+INODE_REFERENCE_CACHE_SIZE) % ReferencesPerBlock;
            }else{
              memcpy(blckHead + (index * sizeof(uint32_t)), &sb->iicache.ref[0], (ReferencesPerBlock-index) * sizeof(uint32_t));
              memset(sb->iicache.ref,NullReference,sb->iicache.idx * sizeof(uint32_t));
              sb->iicache.idx = sb->iicache.idx - (ReferencesPerBlock-index);
              sb->filt_tail = 0;
            }

            soSBSave();
            soFILTSaveBlock();
            soFILTCloseBlock();
            //bin::soDepleteIICache();
        }

    };

};
