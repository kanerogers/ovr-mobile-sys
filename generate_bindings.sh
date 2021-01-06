# Default bindings
bindgen \
  --whitelist-function "ovr.*" \
  --whitelist-function "vrapi.*" \
  --whitelist-type "ovr.*" \
  --whitelist-var "VRAPI.*" \
  --rustified-enum "ovr.*" \
  -o src/bindings.rs \
  VrApi-1.40/wrapper.h -- -std=c99 \
  -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include

# Android bindings
bindgen \
  --whitelist-function "ovr.*" \
  --whitelist-function "vrapi.*" \
  --whitelist-type "ovr.*" \
  --whitelist-var "VRAPI.*" \
  --rustified-enum "ovr.*" \
  -o src/bindings_android.rs \
  VrApi-1.40/wrapper.h -- -std=c99 -D__ANDROID__ -DANDROID \
  -I/usr/local/share/android-ndk/sysroot/usr/include/aarch64-linux-android \
  -I/usr/local/share/android-ndk/sysroot/usr/include