#!/bin/bash

mkdir -p artwork cfg frontend hi inp memcard nvram roms samples snap
if [ ! -f frontend/mame.cfg ] ; then
	cp default.cfg frontend/mame.cfg
fi

op_runfbapp ./mame-fe

# In case we bailed out...
sudo /usr/pandora/scripts/op_videofir.sh default
ofbset -fb /dev/fb1 -pos 0 0 -size 0 0 -mem 0 -en 0

