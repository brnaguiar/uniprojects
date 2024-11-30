#include "work_mksofs.h"

#include "rawdisk.h"
#include "core.h"
#include "bin_mksofs.h"

#include <inttypes.h>
#include <string.h>
#include <math.h>

namespace sofs18
{
    namespace work
    {

        uint32_t fillInFreeBlockListTable(uint32_t first_block, uint32_t btotal, uint32_t rdsize)
        {
            soProbe(605, "%s(%u, %u, %u)\n", __FUNCTION__, first_block, btotal, rdsize);

           	uint32_t numRef=ceil(btotal/ReferencesPerBlock); 
          	uint32_t cnt = rdsize;
           	uint32_t ref[ReferencesPerBlock];
           	
           	for(uint32_t i=0; i<numRef; i++){
           		for(uint32_t k=0; k<ReferencesPerBlock; k++){
           			ref[k] = cnt++;
           		}     		
              soWriteRawBlock(first_block+i, ref);
           	}

            if(btotal % ReferencesPerBlock != 0){
              for(uint32_t j=0; j<ReferencesPerBlock; j++){
                if(cnt <= btotal-1){
                  ref[j] = cnt++;
                }
                else{
                  ref[j] = NullReference;
                }
              }
              soWriteRawBlock(first_block+numRef, ref);
              numRef++;
            }

            return numRef;
           // return bin::fillInFreeBlockListTable(first_block, btotal, rdsize);
        }

    };

};

