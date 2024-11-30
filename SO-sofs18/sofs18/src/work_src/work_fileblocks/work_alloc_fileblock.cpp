/**
 *  \author Bruno Filipe Oliveira Aguiar, 80177
 *  \tester Bruno Filipe Olveira Aguiar, 80177
 */


#include "work_fileblocks.h"

#include "freelists.h"
#include "dal.h"
#include "core.h"
#include "bin_fileblocks.h"

#include <errno.h>

#include <iostream>
#include <cstring>

namespace sofs18
{
    namespace work
    {

#if true
        static uint32_t soAllocIndirectFileBlock(SOInode * ip, uint32_t afbn);
        static uint32_t soAllocDoubleIndirectFileBlock(SOInode * ip, uint32_t afbn);
#endif

        /* ********************************************************* */

        uint32_t soAllocFileBlock(int ih, uint32_t fbn)
        {
            soProbe(302, "%s(%d, %u)\n", __FUNCTION__, ih, fbn);

            // excepccao
            if((fbn < 0) || (fbn > (N_DIRECT + N_INDIRECT*ReferencesPerBlock + N_DOUBLE_INDIRECT*ReferencesPerBlock)))  throw SOException(EINVAL, __FUNCTION__);

            SOInode* inode_p = soITGetInodePointer(ih);
            uint32_t block_number;

            // se fileblock number menor que o tamanho do array d:
            if (fbn < N_DIRECT) {

              block_number = soAllocDataBlock(); // vai buscar a cache retrieval o prox.imo blocko.

              // not sure se é -1 ou não
              if(inode_p->d[fbn-1] == NullReference) // se for null reference incrementa e escreve, se não override escreve por cima .
                inode_p->blkcnt++;

              inode_p->d[fbn-1] = block_number; // vai alocar o bloco.

            } else if (fbn < (N_DIRECT + N_INDIRECT*ReferencesPerBlock)) block_number = soAllocIndirectFileBlock(inode_p, fbn);

            else block_number = soAllocDoubleIndirectFileBlock(inode_p, fbn);

            return block_number;
        }

        /* ********************************************************* */

#if true
        /*
         */
        static uint32_t soAllocIndirectFileBlock(SOInode * ip, uint32_t afbn)
        {
            soProbe(302, "%s(%d, ...)\n", __FUNCTION__, afbn);

            uint32_t block_number;
            uint32_t buffer[ReferencesPerBlock];

            int i1_n = (afbn-N_DIRECT)/ReferencesPerBlock;
            int i1_n_idx = (afbn-N_DIRECT)%ReferencesPerBlock;

            /* ** alocar ** */
            if (ip->i1[i1_n] == NullReference) {

              ip->i1[i1_n] = soAllocDataBlock();
              memset(buffer, NullReference, sizeof(buffer));

            } else soReadDataBlock(ip->i1[i1_n], buffer);

            if(buffer[i1_n_idx] == NullReference) {

              block_number = soAllocDataBlock();
              buffer[i1_n_idx] = block_number;
              ip->blkcnt++;

             }

            soWriteDataBlock(ip->i1[i1_n],  &buffer);
            return block_number;


        }
#endif

        /* ********************************************************* */

#if true
        /*
         */
        static uint32_t soAllocDoubleIndirectFileBlock(SOInode * ip, uint32_t afbn)
        {
            soProbe(302, "%s(%d, ...)\n", __FUNCTION__, afbn);

            uint32_t
                     indir_buffer[ReferencesPerBlock],
                     indir2_buffer[ReferencesPerBlock];

            uint32_t indir_block_number,
                     indir2_block_number,
                     block_number;

            int i1_n =     (afbn-(N_INDIRECT*ReferencesPerBlock)-N_DIRECT)/ReferencesPerBlock;
            int i1_n_idx = (afbn-(N_INDIRECT*ReferencesPerBlock)-N_DIRECT)%ReferencesPerBlock;

            if(ip->i2[i1_n] == NullReference) {

              indir_block_number = soAllocDataBlock();
              ip->i2[i1_n]       = indir_block_number;
              memset(indir_buffer, NullReference, sizeof(indir_buffer));
              indir_buffer[0]    = indir_block_number;
              soWriteDataBlock(indir_block_number, indir_buffer);

              indir2_block_number = soAllocDataBlock();
              memset(indir2_buffer, NullReference, sizeof(indir2_buffer));
              indir2_buffer[0]    = indir2_block_number;
              soWriteDataBlock(ip->i2[i1_n], indir2_buffer);

            } else soReadDataBlock(ip->i2[ i1_n], indir2_buffer);

            if(indir_buffer[i1_n_idx] == NullReference) {

              block_number = soAllocDataBlock();
              indir_buffer[i1_n_idx] = block_number;
              ip->blkcnt++;

            } else if (indir_buffer[i1_n_idx] != NullReference && indir2_buffer[ i1_n_idx] == NullReference) {

              block_number = soAllocDataBlock();
              indir2_buffer[i1_n_idx] = block_number;
              ip->blkcnt++;

            }
            soWriteDataBlock(ip->i2[i1_n], &indir2_buffer);
            return block_number;

          //  throw SOException(ENOSYS, __FUNCTION__);
          //  return 0;

        }
#endif

    };

};
