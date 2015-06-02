#!/bin/bash

echo "Starting copy"

# this is where we store list of modules to be processed
#data_file=x11_file_list.txt
data_file=/apps/xrdp-devel/xorg/X11R7.6/x11_file_list.txt
data_file=/tmp/tmp.86NE5z6V0U.X11RDP-RH-Matic/neutrinolabs-xrdp-8904252/xorg/X11R7.6/x11_file_list.txt

num_modules=`cat $data_file | wc -l`
count=0

echo "data_file=data_file"

while IFS=: read mod_file mod_dir mod_args
do
    echo "hi"
    mod_args=`eval echo $mod_args`

    echo "mod_args: $mod_args"
    echo "cp downloads/$mod_file newdownloads"
    cp downloads/$mod_file newdownloads
done < $data_file

