#include "work_mksofs.h"

#include "rawdisk.h"
#include "core.h"
#include "bin_mksofs.h"

#include <string.h>
#include <inttypes.h>
#include <math.h>

namespace sofs18
{
    namespace work
    {


 /**
         * \brief Format the free inode list table
         * \details The list should represent the sequence 1..itotal-1
         * \param [in] first_block Number of the block where the table starts
         * \param [in] itotal Total number of inodes
         * \return The number of blocks occupied by the table
         */
         
        uint32_t fillInFreeInodeListTable(uint32_t first_block, uint32_t itotal)
        {
            soProbe(603, "%s(%u, %u)\n", __FUNCTION__, first_block, itotal);
            
		
		uint32_t numb=ceil(itotal/128); 
          	uint32_t cnt = 0;
           	uint32_t ref[ReferencesPerBlock];
           	
           	for(uint32_t i=0; i<numb; i++){
           		for(uint32_t k=0; k<ReferencesPerBlock; k++){
           			ref[k] = cnt++;
           		}     		
              soWriteRawBlock(first_block+i, ref);
           	}

            if(itotal % ReferencesPerBlock != 0){
              for(uint32_t j=0; j<ReferencesPerBlock; j++){
                /*if(cnt <= itotal-1){
                  ref[j] = cnt++;
                }
                else{
                  ref[j] = NullReference;
                }*/
                ref[j] = NullReference;
              }
              soWriteRawBlock(first_block+numb, ref);
              numb++;
            }

            return numb;		
		
				
									
	
		
	  
	 
	
            
           // return fillInFreeInodeListTable(first_block, itotal);
       

    };

};
};

