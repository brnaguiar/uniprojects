/**
 *  \author Bruno Filipe Oliveira Aguiar, 80177
 *  \tester Bruno Filipe Oliveira Aguiar, 80177
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

        /*
         filling in the contents of the root directory:
         the first 2 entries are filled in with "." and ".." references
         the other entries are empty.
         If rdsize is 2, a second block exists and should be filled as well.

         */

        uint32_t fillInRootDir(uint32_t first_block, uint32_t rdsize)
        {
            soProbe(606, "%s(%u, %u)\n", __FUNCTION__, first_block, rdsize);

            if (rdsize == 2) {

                  SODirEntry dirEntry[2][DirentriesPerBlock];
                  memset(dirEntry[0], 0, SOFS18_MAX_NAME+1); // alocar / reservar memoria: memeset(endereço de memória que / onde começa, valor a alocar / preencher, numero de bytes a alocar)
                  memset(dirEntry[1], 0, SOFS18_MAX_NAME+1);

                  strncpy((char*)dirEntry[0][0].name, (char*) ".", SOFS18_MAX_NAME+1); // copia para o dir entry, os caracteres ("." e ".."), com um length;
  	              strncpy((char*)dirEntry[0][1].name, (char*) "..", SOFS18_MAX_NAME+1);

                  strncpy((char*)dirEntry[1][0].name, (char*) ".", SOFS18_MAX_NAME+1);
                  strncpy((char*)dirEntry[1][1].name, (char*) "..", SOFS18_MAX_NAME+1);

  	             for(uint32_t index = 2; index < DirentriesPerBlock; index++) {
  		             dirEntry[0][index].in = NullReference;
                   dirEntry[1][index].in = NullReference;
                    strncpy((char*)dirEntry[0][index].name, (char*) "", SOFS18_MAX_NAME+1);
                      strncpy((char*)dirEntry[1][index].name, (char*) "", SOFS18_MAX_NAME+1);
                 }

                 soWriteRawBlock(first_block, dirEntry[0]);


                 soWriteRawBlock(first_block+1, dirEntry[1]);


            }

            if (rdsize == 1) {

                SODirEntry dirEntry[DirentriesPerBlock ];
                memset(dirEntry, 0, SOFS18_MAX_NAME+1);

                strncpy((char*)dirEntry[0].name, (char*) ".", SOFS18_MAX_NAME+1);
                strncpy((char*)dirEntry[1].name, (char*) "..", SOFS18_MAX_NAME+1);

               for(uint32_t index = 2; index < DirentriesPerBlock; index++) {
                  strncpy((char*)dirEntry[index].name, (char*) "", SOFS18_MAX_NAME+1);
                 dirEntry[index].in = NullReference;
               }

               soWriteRawBlock(first_block,dirEntry);

            }

           return rdsize;

           /*
           return bin::fillInRootDir(first_block, rdsize);
           */

         }

    };

};
