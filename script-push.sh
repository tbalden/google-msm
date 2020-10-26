#!/bin/sh

BRANCH=cleanslate
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

#cd devicetree
#git push
#cd ..

#cd camera-devicetree
#git push
#cd ..

cd msm/techpack/camera/
git push
cd ../../..

cd msm/techpack/display/
git push
cd ../../..

cd msm/techpack/data/
git push
cd ../../..
