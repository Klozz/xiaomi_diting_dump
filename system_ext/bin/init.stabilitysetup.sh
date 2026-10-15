#!/bin/sh

total_memory=$(grep MemTotal /proc/meminfo | awk '{print $2}')
scout_enabled=$(getprop persist.sys.miui_scout_enable)

# For device with 6GB+ memory
if [ $total_memory -gt 4194304 ]; then
    # If no explict config, enable scout by default
    if [ -z $scout_enabled ]; then
        setprop persist.sys.miui_scout_enable true
    fi
    exit 0
fi

# For device with less than 4GB memory
# Only allow scout to be enabled during MTBF/UAT
if [ -z $scout_enabled ]; then
    library_test=$(getprop persist.mtbf.test)
    if [ "$library_test" = "1" ] || [ "$library_test" = "true" ]; then
        setprop persist.sys.miui_scout_enable true
    fi
fi