#!/bin/sh

BRANCH=android-msm-redfin-4.19-android11-d1
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

#git clone https://android.googlesource.com/kernel/msm-extra/camera-kernel/ msm/techpack/camera
git clone $GIT_PATH_FORK/google-qca-wifi-host-cmn.git msm/drivers/staging/qca-wifi-host-cmn
cd msm/drivers/staging/qca-wifi-host-cmn
git checkout $BRANCH
cd ../../../..

git clone $GIT_PATH_FORK/google-qcacld.git msm/drivers/staging/qcacld-3.0
cd msm/drivers/staging/qcacld-3.0
git checkout $BRANCH
cd ../../../..

git clone $GIT_PATH_FORK/google-wlan-fw-api.git msm/drivers/staging/fw-api
cd msm/drivers/staging/fw-api
git checkout $BRANCH
cd ../../../..
