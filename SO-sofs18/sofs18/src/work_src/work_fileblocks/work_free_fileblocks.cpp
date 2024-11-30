#include "work_fileblocks.h"

#include "freelists.h"
#include "dal.h"
#include "core.h"
#include "bin_fileblocks.h"

#include <inttypes.h>
#include <errno.h>
#include <assert.h>
#include <cmath>

namespace sofs18
{
    namespace work
    {

#if true
        /* free all blocks between positions ffbn and ReferencesPerBlock - 1
         * existing in the block of references given by i1.
         * Return true if, after the operation, all references become NullReference.
         * It assumes i1 is valid.
         */
        static bool soFreeIndirectFileBlocks(SOInode * ip, uint32_t i1, uint32_t ffbn);
        
        /* free all blocks between positions ffbn and ReferencesPerBloc**2 - 1
         * existing in the block of indirect references given by i2.
         * Return true if, after the operation, all references become NullReference.
         * It assumes i2 is valid.
         */

        static bool soFreeDoubleIndirectFileBlocks(SOInode * ip, uint32_t i2, uint32_t ffbn);
#endif

        /* ********************************************************* */

        void soFreeFileBlocks(int ih, uint32_t ffbn)
        {
            soProbe(303, "%s(%d, %u)\n", __FUNCTION__, ih, ffbn);
            //bin::soFreeFileBlocks(ih, ffbn);
            
            uint32_t bn = soGetFileBlock(ih, ffbn);
            uint32_t buffer[ReferencesPerBlock];
            
            if(ffbn < N_DIRECT){

	            soReadDataBlock(bn, buffer); //escreve no buffer o block
	            for(uint32_t i=0; i<ReferencesPerBlock; i++){
	                if(buffer[i] != NullReference){
	                    buffer[i] = NullReference;
	                }
	            }
	            soWriteDataBlock(bn, buffer);
        	}else if(ffbn < (N_DIRECT + N_INDIRECT*ReferencesPerBlock)){
        		SOInode* ip = soITGetInodePointer(ih);
        		if(soFreeIndirectFileBlocks(ip, bn, ffbn)){
        			bn = NullReference;
        		}
        	}else{
        		SOInode* ip = soITGetInodePointer(ih);
        		if(soFreeDoubleIndirectFileBlocks(ip, bn, ffbn)){
        			bn = NullReference;
        		}
        	}
	        soSBSave();
        }

        /* ********************************************************* */

#if true
        static bool soFreeIndirectFileBlocks(SOInode * ip, uint32_t i1, uint32_t ffbn)
        {
            soProbe(303, "%s(..., %u, %u)\n", __FUNCTION__, i1, ffbn);

            throw SOException(ENOSYS, __FUNCTION__); 
           
            bool allNull= false;
            uint32_t bn;
            uint32_t buffer[ReferencesPerBlock];

            for(uint32_t i=0; i<N_INDIRECT; i++){
                bn = soGetFileBlock(ip->i1[i], ffbn);
                allNull = false;
                soReadDataBlock(bn, buffer); //lê o block; escreve no buffer o block                
                for(uint32_t j=0; j<ReferencesPerBlock; j++){
                    if(buffer[i] != NullReference){
                    buffer[i] = NullReference;
                    }
                }
                soWriteDataBlock(bn, buffer); //escreve no block; lê o buffer  
                allNull = true;
            }

            soSBSave();
            return allNull;
        }
#endif

        /* ********************************************************* */

#if true
        static bool soFreeDoubleIndirectFileBlocks(SOInode * ip, uint32_t i2, uint32_t ffbn)
        {
            soProbe(303, "%s(..., %u, %u)\n", __FUNCTION__, i2, ffbn);

            throw SOException(ENOSYS, __FUNCTION__); 

            bool allNull= false;
            uint32_t bn;
            uint32_t tmp = pow(ReferencesPerBlock, 2);
            uint32_t buffer[tmp];

            for(uint32_t i=0; i<N_DOUBLE_INDIRECT; i++){
                bn = soGetFileBlock(ip->i2[i], ffbn);
                allNull = false;
                soReadDataBlock(bn, buffer); //lê o block; escreve no buffer o block                
                for(uint32_t j=0; j<tmp; j++){
                    if(buffer[i] != NullReference){
                    buffer[i] = NullReference;
                    }
                }
                soWriteDataBlock(bn, buffer); //escreve no block; lê o buffer  
                allNull = true;
            }
            
            soSBSave();
            return allNull;
        }
#endif

        /* ********************************************************* */

    };

};

