#!/bin/sh





### find using regex to match 
### -a add more conditions
### -type d  for directories only
example_get_1()
{
[root@23-SLOT1:/tmp]# find /proc/device-tree/localbus@ffe124000/nor@0,0 ! -regex /proc/device-tree/localbus@ffe124000/nor@0,0 -a -type d | s
ort -n
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@0
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@1920000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@1940000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@1960000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@1f60000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@20000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@3ee0000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@7ee0000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@7f00000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@7f20000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@7f40000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@820000
/proc/device-tree/localbus@ffe124000/nor@0,0/partition@920000
}

