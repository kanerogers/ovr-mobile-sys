#![allow(dead_code)]
#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(deprecated)]
#![allow(unused_imports)]
pub mod helpers;

extern crate jni_sys;
use jni_sys::{
    JNIInvokeInterface_ as JNIInvokeInterface, JNINativeInterface_ as JNINativeInterface,
};

include!("bindings_android.rs");
