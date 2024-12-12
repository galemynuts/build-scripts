#!/bin/sh

echo "Enter threads amount to use: "
read jvalue

echo "Enter build target (example: lineage_gale-userdebug): "
read target

. build/envsetup.sh
lunch $target
mka bacon -j$jvalue
