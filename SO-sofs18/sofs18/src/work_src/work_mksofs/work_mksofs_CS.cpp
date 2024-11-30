#include "work_mksofs.h"

#include "core.h"
#include "bin_mksofs.h"

#include <inttypes.h>
#include <iostream>
#include <assert.h>

namespace sofs18
{
    namespace work
    {

        void computeStructure(uint32_t ntotal, uint32_t & itotal, uint32_t & btotal, uint32_t & rdsize)
        {
            soProbe(601, "%s(%u, %u, ...)\n", __FUNCTION__, ntotal, itotal);
            
            /* change the following line by your code */
            //bin::computeStructure(ntotal, itotal, btotal, rdsize);
            // if itotal = 0 ->  the value ntotal / 8 should be used as a start value;
        
            if(itotal == 0){
                itotal = ntotal/8;
            }
            //itotal must be always lower than or equal to ntotal / 4;
             assert(itotal >= ntotal/ 8);
             if(itotal >= 0 || itotal <= ntotal/4)
             {
                 //arredondar para multiplo de 8
                 while(itotal%8 != 0){
                     itotal = itotal + 1;
                 }
             }
             uint32_t inodes;
             uint32_t fblt_db; // fblt + data blocks
             uint32_t fblt;
             uint32_t resto;
             
            
             inodes = itotal / InodesPerBlock;

             fblt_db = ntotal - 1 - (itotal/ReferencesPerBlock) - inodes ; 
          
             fblt = fblt_db / (ReferencesPerBlock) +1;
             
             resto = fblt_db % ReferencesPerBlock;
             btotal = fblt_db - fblt;

            //rdsize represents the number f blocks used by the root dir for formatting; 
            //it is normally 1, but can be 2 if a block can not be assigned to any other purpose
             rdsize = 1;

             if(resto == 1){
                 rdsize = 2;
             }
            
        }

    };

};

