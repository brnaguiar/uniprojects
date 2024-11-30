//luis santana 80304

#include "work_fileblocks.h"

#include "dal.h"
#include "core.h"
#include "bin_fileblocks.h"

#include <errno.h>

namespace sofs18
{
    namespace work
    {

        /* ********************************************************* */

        static uint32_t soGetIndirectFileBlock(SOInode * ip, uint32_t fbn);
        static uint32_t soGetDoubleIndirectFileBlock(SOInode * ip, uint32_t fbn);


        /* ********************************************************* */

        uint32_t soGetFileBlock(int ih, uint32_t fbn)
        {
            soProbe(301, "%s(%d, %u)\n", __FUNCTION__, ih, fbn);

            /* change the following line by your code */
            //return bin::soGetFileBlock(ih, fbn);
            uint32_t res;
            
            if(fbn < 0){
                throw SOException(EINVAL,__FUNCTION__);          
            }
            
            SOInode* ind = soITGetInodePointer(ih);
            if(fbn < N_DIRECT){
                res = ind->d[fbn];
            }else if(fbn < (N_INDIRECT * ReferencesPerBlock + N_DIRECT)){
                res = soGetIndirectFileBlock(ind,fbn);
            }else{
                res = soGetDoubleIndirectFileBlock(ind,fbn);
            }
            
            soITSaveInode(ih);
            return res;
        }

        /* ********************************************************* */


        static uint32_t soGetIndirectFileBlock(SOInode * ip, uint32_t afbn)
        {
            soProbe(301, "%s(%d, ...)\n", __FUNCTION__, afbn);

            /* change the following two lines by your code */
            //throw SOException(ENOSYS, __FUNCTION__); 
            
            uint32_t res;
            uint32_t *ref;
            uint32_t blk[ReferencesPerBlock];
            afbn = afbn - N_DIRECT;
            //bloco = afbn/RPB
            //indice dentro do bloco afbn%RPB

            if(ip->i1 == (uint32_t*)NullReference){
                res = NullReference;  
                return res;
            }else{
                soReadDataBlock((ip->i1[afbn/ReferencesPerBlock]),blk);
                ref = (uint32_t *) blk;
                res = ref[afbn%ReferencesPerBlock];
                return res;
            }   
        }


        /* ********************************************************* */

        static uint32_t soGetDoubleIndirectFileBlock(SOInode * ip, uint32_t afbn)
        {
            soProbe(301, "%s(%d, ...)\n", __FUNCTION__, afbn);

            /* change the following two lines by your code */
            //throw SOException(ENOSYS, __FUNCTION__); 
            
            uint32_t res;
            uint32_t temp;
            uint32_t *ref;
            uint32_t blk[ReferencesPerBlock];
            afbn = afbn - N_DIRECT -(N_INDIRECT * ReferencesPerBlock);
            //bloco = afbn/RPB
            //indice dentro do bloco afbn%RPB

            if(ip->i2 == (uint32_t*)NullReference){
                res = NullReference;  
                return res;
            }else{
                soReadDataBlock((ip->i2[afbn/ReferencesPerBlock]),blk);
                temp = blk[afbn];
                soReadDataBlock(temp,blk);
                ref = (uint32_t *) blk;
                res = ref[afbn%ReferencesPerBlock];
                return res;
            }  
        }
    };

};

