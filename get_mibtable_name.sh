#!/bin/sh

function print_usage()
{
    echo "TABLE list:
    temperature
    port
    interface
    alarm"
}


function get_mib_for_table()
{
    case "$1" in
        temperature)           MIB="ST-COMMON-MIB.mib"      ;;
        *)                     MIB="NOT FOUND"              ;;
    esac
    echo $MIB
}

snmp_table_name=$1

MIB_NAME=$(get_mib_for_table $snmp_table_name)

if [ "$MIB_NAME" == "NOT FOUND" ]; then
    echo "NOT found MIB $snmp_table_name"
    print_usage
else
    echo "$MIB_NAME"
fi

