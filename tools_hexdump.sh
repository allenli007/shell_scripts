#!/bin/sh


hexdump -v -n 



show_file_binary_info()   
{
## hexdump can show the binary information of status
[root@23-SLOT1:/tmp]# hexdump -v -n 96 -C /dev/mtd8
00000000  27 05 19 56 55 2d 42 6f  6f 74 20 32 30 31 36 2e  |'..VU-Boot 2016.|
00000010  30 31 2d 73 76 6e 37 36  20 28 4e 6f 76 20 32 32  |01-svn76 (Nov 22|
00000020  20 32 30 31 37 20 2d 20  30 39 3a 31 32 3a 35 37  | 2017 - 09:12:57|
00000030  20 2b 30 38 30 30 29 75  62 6f 6f 74 5f 67 31 36  | +0800)uboot_g16|
00000040  65 5f 63 6f 6d 6d 6f 6e  2d 32 30 31 37 31 31 32  |e_common-2017112|
00000050  32 30 31 00 60 00 00 00  60 00 00 00 60 00 00 00  |201.`...`...`...|
}


show_value_info_with_format()
{
[root@23-SLOT1:/tmp]# hexdump -v -e '4/1 "%02x" "\n"' /proc/device-tree/localbus@ffe124000/nor@0,0/reg
00000000
00000000
08000000


# hexdump -v -e '4/1 "%02x" ""' /proc/device-tree/localbus@ffe124000/nor@0,0/reg
000000000000000008000000[root@23-SLOT1:/tmp]# 


flash_total_len=$(hexdump -v -e "${word_len}/1 \"%02x\"\" \"" ${flash_dir}/reg | awk '{printf "0x%s", $3}' | xargs printf "%d")


}


example_show_env_param()
{

[root@23-SLOT1:/tmp]# hexdump -s 8 -C /dev/mtd7
00000008  72 61 74 65 3d 31 31 35  32 30 30 00 62 6f 6f 74  |rate=115200.boot|
00000018  61 72 67 73 3d 62 6f 6f  74 61 72 67 73 3d 72 6f  |args=bootargs=ro|
00000028  6f 74 3d 2f 64 65 76 2f  72 61 6d 20 72 77 20 63  |ot=/dev/ram rw c|
00000038  6f 6e 73 6f 6c 65 3d 74  74 79 53 30 2c 31 31 35  |onsole=ttyS0,115|
00000048  32 30 30 20 53 54 5f 4d  41 43 5f 41 44 44 52 3d  |200 ST_MAC_ADDR=|
00000058  36 30 3a 45 36 3a 42 43  3a 30 30 3a 33 34 3a 46  |60:E6:BC:00:34:F|
00000068  36 20 53 54 5f 42 4f 4f  54 3d 74 72 75 65 20 53  |6 ST_BOOT=true S|
00000078  54 5f 53 4e 3d 31 30 31  31 47 38 32 42 59 31 36  |T_SN=1011G82BY16|
00000088  31 32 30 31 30 20 53 54  5f 49 50 5f 41 44 44 52  |12010 ST_IP_ADDR|
00000098  3d 31 39 32 2e 31 36 38  2e 31 2e 33 32 20 53 54  |=192.168.1.32 ST|
000000a8  5f 42 43 4d 5f 43 4f 4e  46 49 47 3d 63 6f 6e 66  |_BCM_CONFIG=conf|
000000b8  69 67 32 78 65 2e 62 63  6d 00 62 6f 6f 74 63 6d  |ig2xe.bcm.bootcm|
000000c8  64 3d 72 75 6e 20 73 65  74 5f 72 61 6d 5f 65 6e  |d=run set_ram_en|
000000d8  76 3b 20 72 75 6e 20 66  6c 61 73 68 62 6f 6f 74  |v; run flashboot|


}

