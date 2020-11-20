#!/bin/sh

BRANCH=android-msm-redfin-4.19-android11-d1
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

#git clone https://android.googlesource.com/kernel/msm-extra/camera-kernel/ msm/techpack/camera
git clone $GIT_PATH_FORK/google-msm-sec_touch msm/drivers/input/touchscreen/sec_touch
cd msm/drivers/input/touchscreen/sec_touch
git checkout $BRANCH
cd ../../../../..

