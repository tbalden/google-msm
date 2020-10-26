#!/bin/sh

BRANCH=cleanslate
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

#cd devicetree
#git push --set-upstream origin $BRANCH
#cd ..

#cd camera-devicetree
#git push --set-upstream origin $BRANCH
#cd ..

cd msm/techpack/camera/
git push --set-upstream origin $BRANCH
cd ../../..

cd msm/techpack/display/
git push --set-upstream origin $BRANCH
cd ../../..

cd msm/techpack/data/
git push --set-upstream origin $BRANCH
cd ../../..
