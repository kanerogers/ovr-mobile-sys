#!/usr/bin/bash -X
export CLANG_PATH=/c/android/NDK/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android26-clang.cmd
echo $CLANG_PATH


# Android bindings
bindgen \
  --blacklist-type 
  --whitelist-function "ovr.*" \
  --whitelist-function "vrapi.*" \
  --whitelist-type "ovr.*" \
  --whitelist-var "VRAPI.*" \
  --rustified-enum "ovr.*" \
  -o src/bindings_android.rs \
  VrApi-1.40/wrapper.h -- \
  -std=c99 -D__ANDROID__ -DANDROID \
  -nostdinc \
  -I$ANDROID_NDK_HOME/sysroot/usr/include/aarch64-linux-android \
  -I$ANDROID_NDK_HOME//toolchains/llvm/prebuilt/windows-x86_64/lib64/clang/8.0.2/include \
  -I$ANDROID_NDK_HOME/sysroot/usr/include