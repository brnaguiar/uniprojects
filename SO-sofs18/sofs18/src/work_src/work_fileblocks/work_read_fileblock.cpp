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

        void soReadFileBlock(int ih, uint32_t fbn, void *buf)
        {
 /* if (soBinSelected(331))
            bin::soReadFileBlock(ih, fbn, buf);
        else
            work::soReadFileBlock(ih, fbn, buf);*/
            if(soGetFileBlock(ih,fbn) == NullReference){
				uint32_t temp[BlockSize] = {0x00000000};
				buf = temp;															
			}
			else{
		soReadFileBlock(ih,fbn,buf);						
		}
        }

    };

};
