; ModuleID = 'main.faffb8145578e6cd-cgu.0'
source_filename = "main.faffb8145578e6cd-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E" }>, align 8
@0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_bbc68d7e373e87a0c26c626661a44c46 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"what is this" }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_9771be2481f51be410bd2ac520d18601 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hc40032e9d0726b86E(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %_7, align 8
; call std::rt::lang_start_internal
  %_0 = call i64 @_ZN3std2rt19lang_start_internal17h15895544e2012228E(ptr align 1 %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe)
  ret i64 %_0
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E"(ptr align 8 %_1) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8
; call std::sys::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E(ptr %_4)
; call <() as std::process::Termination>::report
  %self = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE"()
  %_0 = zext i8 %self to i32
  ret i32 %_0
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E(ptr %f) unnamed_addr #2 {
start:
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E(ptr %f)
  call void asm sideeffect "", "~{memory}"(), !srcloc !4
  ret void
}

; <&T as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h101ec47fd363200dE"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_3.1 = load i64, ptr %0, align 8
; call <str as core::fmt::Display>::fmt
  %_0 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hb62cc6ef72f6aff0E"(ptr align 1 %_3.0, i64 %_3.1, ptr align 8 %f)
  ret i1 %_0
}

; <&T as core::fmt::Pointer>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h539793738d933470E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_4 = alloca [8 x i8], align 8
  %self1 = load ptr, ptr %self, align 8
  store ptr %self1, ptr %_4, align 8
  %_7 = load ptr, ptr %_4, align 8
  %_6 = ptrtoint ptr %_7 to i64
; call core::fmt::pointer_fmt_inner
  %_0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64 %_6, ptr align 8 %f)
  ret i1 %_0
}

; <&T as core::fmt::Pointer>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hd198ac7f08d0c8e9E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_4 = alloca [16 x i8], align 8
  %self.0 = load ptr, ptr %self, align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self.1 = load i64, ptr %0, align 8
  store ptr %self.0, ptr %_4, align 8
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 %self.1, ptr %1, align 8
  %_7 = load ptr, ptr %_4, align 8
  %2 = getelementptr inbounds i8, ptr %_4, i64 8
  %3 = load i64, ptr %2, align 8
  %_6 = ptrtoint ptr %_7 to i64
; call core::fmt::pointer_fmt_inner
  %_0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64 %_6, ptr align 8 %f)
  ret i1 %_0
}

; <&T as core::fmt::Pointer>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hed00610758c1035aE"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #0 {
start:
  %_4 = alloca [8 x i8], align 8
  %self1 = load ptr, ptr %self, align 8
  store ptr %self1, ptr %_4, align 8
  %_7 = load ptr, ptr %_4, align 8
  %_6 = ptrtoint ptr %_7 to i64
; call core::fmt::pointer_fmt_inner
  %_0 = call zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64 %_6, ptr align 8 %f)
  ret i1 %_0
}

; core::fmt::rt::Argument::new_display
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt2rt8Argument11new_display17h6eab08c13145a251E(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_3 = alloca [16 x i8], align 8
  store ptr %x, ptr %_3, align 8
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h101ec47fd363200dE", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_3, i64 16, i1 false)
  ret void
}

; core::fmt::rt::Argument::new_pointer
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt2rt8Argument11new_pointer17hd108d81487109b9dE(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_3 = alloca [16 x i8], align 8
  store ptr %x, ptr %_3, align 8
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hd198ac7f08d0c8e9E", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_3, i64 16, i1 false)
  ret void
}

; core::fmt::rt::Argument::new_pointer
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt2rt8Argument11new_pointer17hef2c86317c8f8497E(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_3 = alloca [16 x i8], align 8
  store ptr %x, ptr %_3, align 8
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17hed00610758c1035aE", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_3, i64 16, i1 false)
  ret void
}

; core::fmt::rt::Argument::new_pointer
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt2rt8Argument11new_pointer17hf60f640a955293b1E(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_3 = alloca [16 x i8], align 8
  store ptr %x, ptr %_3, align 8
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h539793738d933470E", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_3, i64 16, i1 false)
  ret void
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h54685b635a2f47a0E(ptr sret([48 x i8]) align 8 %_0, ptr align 8 %pieces, ptr align 8 %args) unnamed_addr #1 {
start:
  store ptr %pieces, ptr %_0, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 2, ptr %0, align 8
  %1 = load ptr, ptr @0, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %3 = getelementptr inbounds i8, ptr %_0, i64 32
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %args, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 1, ptr %6, align 8
  ret void
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE"(ptr %_1) unnamed_addr #1 {
start:
  %_2 = alloca [0 x i8], align 1
  %0 = load ptr, ptr %_1, align 8
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E(ptr %0)
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1
  resume { ptr, i32 } %6

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E(ptr %_1) unnamed_addr #1 {
start:
  %_2 = alloca [0 x i8], align 1
  call void %_1()
  ret void
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E"(ptr align 8 %_1) unnamed_addr #1 {
start:
  ret void
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE"() unnamed_addr #1 {
start:
  ret i8 0
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17h9b68587896d3bd06E() unnamed_addr #0 {
start:
  %_35 = alloca [8 x i8], align 8
  %_34 = alloca [8 x i8], align 8
  %_33 = alloca [8 x i8], align 8
  %_32 = alloca [8 x i8], align 8
  %_30 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_26 = alloca [48 x i8], align 8
  %z = alloca [8 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_18 = alloca [48 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %_11 = alloca [48 x i8], align 8
  %y = alloca [8 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  %x = alloca [16 x i8], align 8
  store ptr @alloc_bbc68d7e373e87a0c26c626661a44c46, ptr %x, align 8
  %0 = getelementptr inbounds i8, ptr %x, i64 8
  store i64 12, ptr %0, align 8
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17h6eab08c13145a251E(ptr sret([16 x i8]) align 8 %_7, ptr align 8 %x)
  %1 = getelementptr inbounds %"core::fmt::rt::Argument<'_>", ptr %_6, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %_7, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h54685b635a2f47a0E(ptr sret([48 x i8]) align 8 %_3, ptr align 8 @alloc_9771be2481f51be410bd2ac520d18601, ptr align 8 %_6)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17ha3861c4b52105cd3E(ptr align 8 %_3)
  store ptr %x, ptr %y, align 8
; call core::fmt::rt::Argument::new_pointer
  call void @_ZN4core3fmt2rt8Argument11new_pointer17hd108d81487109b9dE(ptr sret([16 x i8]) align 8 %_15, ptr align 8 %x)
  %2 = getelementptr inbounds %"core::fmt::rt::Argument<'_>", ptr %_14, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %_15, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h54685b635a2f47a0E(ptr sret([48 x i8]) align 8 %_11, ptr align 8 @alloc_9771be2481f51be410bd2ac520d18601, ptr align 8 %_14)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17ha3861c4b52105cd3E(ptr align 8 %_11)
; call core::fmt::rt::Argument::new_pointer
  call void @_ZN4core3fmt2rt8Argument11new_pointer17hef2c86317c8f8497E(ptr sret([16 x i8]) align 8 %_22, ptr align 8 %y)
  %3 = getelementptr inbounds %"core::fmt::rt::Argument<'_>", ptr %_21, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %_22, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h54685b635a2f47a0E(ptr sret([48 x i8]) align 8 %_18, ptr align 8 @alloc_9771be2481f51be410bd2ac520d18601, ptr align 8 %_21)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17ha3861c4b52105cd3E(ptr align 8 %_18)
  store ptr %y, ptr %z, align 8
  store ptr %z, ptr %_35, align 8
  store ptr %_35, ptr %_34, align 8
  store ptr %_34, ptr %_33, align 8
  store ptr %_33, ptr %_32, align 8
; call core::fmt::rt::Argument::new_pointer
  call void @_ZN4core3fmt2rt8Argument11new_pointer17hf60f640a955293b1E(ptr sret([16 x i8]) align 8 %_30, ptr align 8 %_32)
  %4 = getelementptr inbounds %"core::fmt::rt::Argument<'_>", ptr %_29, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %_30, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h54685b635a2f47a0E(ptr sret([48 x i8]) align 8 %_26, ptr align 8 @alloc_9771be2481f51be410bd2ac520d18601, ptr align 8 %_29)
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17ha3861c4b52105cd3E(ptr align 8 %_26)
  ret void
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h15895544e2012228E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; <str as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hb62cc6ef72f6aff0E"(ptr align 1, i64, ptr align 8) unnamed_addr #0

; core::fmt::pointer_fmt_inner
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt17pointer_fmt_inner17h76f21e636b0fba41E(i64, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17ha3861c4b52105cd3E(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #5 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17hc40032e9d0726b86E(ptr @_ZN4main4main17h9b68587896d3bd06E, i64 %2, ptr %1, i8 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nonlazybind "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.86.0 (05f9846f8 2025-03-31)"}
!4 = !{i64 8546443755150543}
