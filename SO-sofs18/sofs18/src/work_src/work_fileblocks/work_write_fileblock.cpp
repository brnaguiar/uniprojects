
/*
 *  \author José Moreira , 79671
 */


#include "work_fileblocks.h"

#include "dal.h"
#include "core.h"
#include "fileblocks.h"
#include "bin_fileblocks.h"

#include <string.h>
#include <inttypes.h>

namespace sofs18
{
    namespace work
    {

        void soWriteFileBlock(int ih, uint32_t fbn, void *buf)
        {
            soProbe(332, "%s(%d, %u, %p)\n", __FUNCTION__, ih, fbn, buf);

            /* change the following line by your code */
            uint32_t block = sofs18::soGetFileBlock(ih, fbn);
            if(block == NullReference)
            {
              block = sofs18::soAllocFileBlock(ih, fbn);
            }

            soWriteDataBlock(block, &buf);
        }

    };

};
