#!/bin/sh
#
git pull --rebase 
#./build.sh --setup-poudriere
echo "***"
echo "*** Update Jail ***"
./build.sh --update-poudriere-jails
echo "***"
echo "*** Update Ports ***"
./build.sh --update-poudriere-ports
echo "***"
echo "*** Update package repo ***"
./build.sh --update-pkg-repo
echo "***"
echo "*** Build Kernels ***"
./build.sh --build-kernels
echo "***"
echo "*** Create memstick image ***"
./build.sh -i iso
echo "***"
echo "*** Done ***"
