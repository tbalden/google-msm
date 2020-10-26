#!/bin/sh

BRANCH=cleanslate
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

cd devicetree
git checkout -B $BRANCH
cd ..

cd camera-devicetree
git checkout -B $BRANCH
cd ..

cd msm/techpack/camera/
git checkout -B $BRANCH
cd ../../..

cd msm/techpack/display/
git checkout -B $BRANCH
cd ../../..

#cd msm/techpack/data/
#git checkout -B $BRANCH
#cd ../../..
