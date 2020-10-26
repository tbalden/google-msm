#!/bin/sh

BRANCH=android-msm-redfin-4.19-android11-d1
HOME_DIR=/home/android/redfin
GIT_PATH_FORK=git@github.com:tbalden

git clone https://android.googlesource.com/kernel/msm-extra/devicetree/
cd devicetree
git checkout $BRANCH
cd ..
mkdir -p msm/arch/arm64/boot/dts/vendor/
ln -sf $HOME_DIR/devicetree/qcom msm/arch/arm64/boot/dts/vendor/qcom
rm -rf devicetree/qcom/qcom

git clone https://android.googlesource.com/kernel/msm-extra/camera-devicetree/
cd camera-devicetree
git checkout $BRANCH
cd ..
ln -sf $HOME_DIR/camera-devicetree devicetree/qcom/camera
rm -rf camera-devicetree/camera-devicetree


#git clone https://android.googlesource.com/kernel/msm-extra/camera-kernel/ msm/techpack/camera
git clone $GIT_PATH_FORK/google-msm-camera-kernel.git msm/techpack/camera
cd msm/techpack/camera/
git checkout $BRANCH
cd ../../..

git clone $GIT_PATH_FORK/google-msm-display-drivers.git msm/techpack/display
cd msm/techpack/display/
git checkout $BRANCH
cd ../../..

#git clone $GIT_PATH_FORK/google-msm-data-kernel.git msm/techpack/data
#cd msm/techpack/data/
#git checkout $BRANCH
#cd ../../..
