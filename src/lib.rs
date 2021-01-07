#![allow(dead_code)]
#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]

extern crate jni_sys;
use jni_sys::{JNINativeInterface_ as JNINativeInterface, JNIInvokeInterface_ as JNIInvokeInterface};

include!("bindings_android.rs");