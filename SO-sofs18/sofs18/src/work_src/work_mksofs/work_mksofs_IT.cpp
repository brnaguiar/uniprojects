
/*
 *  \author José Moreira , 79671
 */

#include "work_mksofs.h"

#include "rawdisk.h"
#include "core.h"
#include "bin_mksofs.h"

#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/stat.h>
#include <inttypes.h>

namespace sofs18
{
    namespace work
    {

        uint32_t fillInInodeTable(uint32_t first_block, uint32_t itotal, uint32_t rdsize)
        {
            soProbe(604, "%s(%u, %u, %u)\n", __FUNCTION__, first_block, itotal, rdsize);

            /* change the following line by your code */
            /*
            * \param [in] first_block Number of the block where the table starts
            * \param [in] itotal Total number of inodes
            * \param [in] rdsize Initial number of blocks of the root directory
            * \return The number of blocks occupied by the table*/
            SOInode inode_table[InodesPerBlock];
            uint32_t nblocks = itotal/InodesPerBlock;
            for(uint32_t i = first_block; i<nblocks+first_block; i++)           //Percorrer os blocos todos da inode table
            {
              if(i == first_block)                                              //Colocar o inode 0 como rootdir
              {
                inode_table[0].mode = S_IFDIR;
                inode_table[0].lnkcnt = 2;
                inode_table[0].owner = getuid();
                inode_table[0].group = getgid();
		inode_table[0].size = rdsize * BlockSize;
                inode_table[0].blkcnt = rdsize;
                inode_table[0].atime =  time(NULL);
                inode_table[0].mtime =  time(NULL);
                inode_table[0].ctime =  time(NULL);
                for(uint16_t i = 0; i < N_DIRECT; i++)
                {
                  inode_table[0].d[i] = NullReference;
                }
                for(uint32_t i = 0; i < N_INDIRECT; i++)
                {
                  inode_table[0].i1[i] = NullReference;
                }
                for(uint32_t i = 0; i < N_DOUBLE_INDIRECT; i++)
                {
                  inode_table[0].i2[i] = NullReference;
                }
                for(uint32_t auxi = 1; auxi<InodesPerBlock; auxi++)
                {
                  inode_table[auxi].mode = INODE_FREE;
                  inode_table[auxi].lnkcnt = 0;
                  inode_table[auxi].owner = 0;
                  inode_table[auxi].group = 0;
		  inode_table[auxi].size = 0;
                  inode_table[auxi].blkcnt = 0;
                  inode_table[auxi].atime = 0;
                  inode_table[auxi].mtime = 0;
                  inode_table[auxi].ctime = 0;
                  for(uint16_t i = 0; i < N_DIRECT; i++)
                  {
                    inode_table[auxi].d[i] = NullReference;
                  }
                  for(uint32_t i = 0; i < N_INDIRECT; i++)
                  {
                    inode_table[auxi].i1[i] = NullReference;
                  }
                  for(uint32_t i = 0; i < N_DOUBLE_INDIRECT; i++)
                  {
                    inode_table[auxi].i2[i] = NullReference;
                  }
              }
            }
            else
            {
              for(uint32_t auxi = 0; auxi<InodesPerBlock; auxi++)
              {
                inode_table[auxi].mode = INODE_FREE;
                inode_table[auxi].lnkcnt = 0;
                inode_table[auxi].owner = 0;
                inode_table[auxi].group = 0;
		inode_table[auxi].size = 0;
                inode_table[auxi].blkcnt = 0;
                inode_table[auxi].atime = 0;
                inode_table[auxi].mtime = 0;
                inode_table[auxi].ctime = 0;
                for(uint16_t i = 0; i < N_DIRECT; i++)
                {
                  inode_table[auxi].d[i] = NullReference;
                }
                for(uint32_t i = 0; i < N_INDIRECT; i++)
                {
                  inode_table[auxi].i1[i] = NullReference;
                }
                for(uint32_t i = 0; i < N_DOUBLE_INDIRECT; i++)
                {
                  inode_table[auxi].i2[i] = NullReference;
                }
              }
            }
            soWriteRawBlock(i, inode_table);
            }
            return nblocks;
            //return bin::fillInInodeTable(first_block, itotal, rdsize);
        }

    };

};
