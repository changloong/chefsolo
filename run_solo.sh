#!/bin/sh

if [ $# -eq 0 ]; then
        echo "usage: $0 <config file>"
        exit 1;
fi

config_file=$1

if [ ! -e $config_file ]; then
	echo "config file '$config_file' not exists"
	exit 2;
fi

echo $config_file
chef-solo -c src/solo_setup.rb -j $config_file
