/*
 *  \author António Rui Borges - 2012-2015
 *  \authur Artur Pereira - 2016-2018
 */

//luis santana 80304

#include "work_freelists.h"

#include "core.h"
#include "dal.h"
#include "freelists.h"
#include "bin_freelists.h"

#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <iostream>
using namespace std;

namespace sofs18
{
    namespace work
    {

        /* only fill the current block to its end */
        void soDepleteBICache(void)
        {
            soProbe(444, "%s()\n", __FUNCTION__);            
            
            //fblt_tail%referencesPerBlock posicao idx dentro do bloco 
            //referencepPErBLock -  (fblt_tail&referencesPerBlock) +1 posiçoes
            //"encostar " valores da cache
            //mudar idx
            //memcopy
            
            


            SOSuperBlock* sb = soSBGetPointer();
            uint32_t nblock = sb->fblt_tail/ReferencesPerBlock;
            uint32_t* blckHead = soFBLTOpenBlock(nblock);
            uint32_t index = sb->fblt_tail%ReferencesPerBlock;


            if(ReferencesPerBlock-index >= BLOCK_REFERENCE_CACHE_SIZE){
              memcpy(blckHead + (index * sizeof(uint32_t)), &sb->bicache.ref[0], BLOCK_REFERENCE_CACHE_SIZE * sizeof(uint32_t));
              memset(sb->bicache.ref,NullReference,sb->bicache.idx * sizeof(uint32_t));
              sb->bicache.idx = sb->bicache.idx - (BLOCK_REFERENCE_CACHE_SIZE);
              sb->fblt_tail = (index+BLOCK_REFERENCE_CACHE_SIZE) % ReferencesPerBlock;
            }else{
              memcpy(blckHead + (index * sizeof(uint32_t)), &sb->bicache.ref[0], (ReferencesPerBlock-index) * sizeof(uint32_t));
              memset(sb->bicache.ref,NullReference,sb->bicache.idx * sizeof(uint32_t));
              sb->bicache.idx = sb->bicache.idx - (ReferencesPerBlock-index);
              sb->fblt_tail = 0;
            }

            soSBSave();
            soFBLTSaveBlock();
            soFBLTCloseBlock();

            /*SOSuperBlock* sb = soSBGetPointer();
            uint32_t nblock = sb->fblt_tail/ReferencesPerBlock;
            uint32_t idx = sb->fblt_tail%ReferencesPerBlock;

            uint32_t* blckHead = soFBLTOpenBlock(nblock);

            

            if(sb->bicache.idx != BLOCK_REFERENCE_CACHE_SIZE)
            {
              //error handling
            }
            

            if(ReferencesPerBlock - fblt_tail > BLOCK_REFERENCE_CACHE_SIZE){
              memcpy(blckHead,sb->bicache.ref,);
            }*/

            /*SOSuperBlock* sb = soSBGetPointer();
            uint32_t nblock = sb->fblt_tail/ReferencesPerBlock;
            uint32_t idx = sb->fblt_tail%ReferencesPerBlock;
            uint32_t npos = ReferencesPerBlock - idx;
            void* blk;
            soReadDataBlock(nblock,&blk);

            for(uint32_t j=0; j<npos; j++){
              blk = (void*) sb->bicache.ref[j];
              soWriteDataBlock(nblock,&blk);
            }

            for(uint32_t i=npos;i<BLOCK_REFERENCE_CACHE_SIZE; i++){
              int aux = 0;
              sb->bicache.ref[aux] = sb->bicache.ref[i];
              aux++;
            }
            for(uint32_t i = BLOCK_REFERENCE_CACHE_SIZE; i>BLOCK_REFERENCE_CACHE_SIZE-npos; i--){
              sb->bicache.ref[i] = NullReference;
              sb->bicache.idx = (sb->bicache.idx - 1 + BLOCK_REFERENCE_CACHE_SIZE)%BLOCK_REFERENCE_CACHE_SIZE;

            }

            soSBSave();

            for(int i=npos; i<BLOCK_REFERENCE_CACHE_SIZE; i++)
            {
              int soma = 0;
              sb->bicache.ref[soma] = sb->bicache.ref[npos];
              soma++;
            }
            for(int i = BLOCK_REFERENCE_CACHE_SIZE; i<BLOCK_REFERENCE_CACHE_SIZE-npos; i--)
            {
              sb->bicache.ref[i] = NullReference;
            }

            sb->iicache.idx = sb->iicache.idx-npos;

            for(int i=0; i<BLOCK_REFERENCE_CACHE_SIZE; i++){
                
                //fblt_tail = sb->bicache.ref[i];   
                sb->bicache.ref[i] = NullReference;         //tirar da insertion cache, 
                                                            //ocupar posiçao fblt_tail, mudar posiçoes insertion cache
            }

             change the following line by your code */
            //bin::soDepleteBICache();
        }

    };

};

