
/*
 *  \author José Moreira , 79671
 *  \author Luís Santana, 80304
 */

#include "work_mksofs.h"

#include "rawdisk.h"
#include "core.h"
#include "bin_mksofs.h"

#include <string.h>
#include <inttypes.h>

namespace sofs18
{
    namespace work
    {

        void resetBlocks(uint32_t first_block, uint32_t cnt)
        {
            soProbe(607, "%s(%u, %u)\n", __FUNCTION__, first_block, cnt);

            /* change the following line by your code */
            char* array[BlockSize];
            memset(array, '0', BlockSize);
            for(uint32_t i = first_block; i<first_block+cnt; i++)
            {
                //memset(i, '0', BlockSize);
                soWriteRawBlock(i, array);
            }

            //bin::resetBlocks(first_block, cnt);
        }

    };

};
