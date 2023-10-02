; ModuleID = 'main.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pb_TimerSet = type { i32, %struct.pb_async_time_marker_list*, i64, i64, [8 x %struct.pb_Timer], [8 x %struct.pb_SubTimerList*] }
%struct.pb_async_time_marker_list = type { i8*, i32, i8*, %struct.pb_async_time_marker_list* }
%struct.pb_Timer = type { i32, i64, i64 }
%struct.pb_SubTimerList = type { %struct.pb_SubTimer*, %struct.pb_SubTimer* }
%struct.pb_SubTimer = type { i8*, %struct.pb_Timer, %struct.pb_SubTimer* }
%struct.pb_Parameters = type { i8*, i8** }
%struct.argparse = type { i32, i8**, i32, i8**, i8** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"CPU-based 7 points stencil codes****\0A\00", align 1
@.str1 = private unnamed_addr constant [94 x i8] c"Original version by Li-Wen Chang <lchang20@illinois.edu> and I-Jui Sung<sung10@illinois.edu>\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"This version maintained by Chris Rodrigues  ***********\0A\00", align 1
@.str3 = private unnamed_addr constant [113 x i8] c"Usage: probe nx ny nz tx ty t\0Anx: the grid size x\0Any: the grid size y\0Anz: the grid size z\0At: the iteration time\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"Expecting file name after '-o'\0A\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c"Expecting file name after '-i'\0A\00", align 1
@.str27 = private unnamed_addr constant [35 x i8] c"Unexpected command-line parameter\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str38 = private unnamed_addr constant [43 x i8] c"Ignoring attempt to start a running timer\0A\00", align 1
@.str49 = private unnamed_addr constant [32 x i8] c"Warning: Timer was not stopped\0A\00", align 1
@.str510 = private unnamed_addr constant [35 x i8] c"Warning: Subtimer was not stopped\0A\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"Ignoring attempt to start running timer and subtimer\0A\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"Ignoring attempt to stop a stopped timer\0A\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"Warning: Timer was not running\0A\00", align 1
@.str9 = private unnamed_addr constant [35 x i8] c"Warning: Subtimer was not running\0A\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"Ignoring attempt to stop stopped timer and subtimer\0A\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"Elapsed time from a running timer is inaccurate\0A\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"%s\00\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str1611 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"Copy Async\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"Compute\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"%-*s: %f\0A\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c" -%-*s: %f\0A\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"CPU/Kernel Overlap: %f\0A\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"Timer Wall Time: %f\0A\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str126 = private unnamed_addr constant [25 x i8] c"Cannot open output file\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %timers = alloca %struct.pb_TimerSet, align 8
  %parameters = alloca %struct.pb_Parameters*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %size = alloca i32, align 4
  %iteration = alloca i32, align 4
  %c0 = alloca float, align 4
  %c1 = alloca float, align 4
  %h_A0 = alloca float*, align 8
  %h_Anext = alloca float*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  %temp = alloca float*, align 8
  %temp1 = alloca float*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([94 x i8]* @.str1, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str2, i32 0, i32 0))
  %7 = load i8*** %3, align 8
  %8 = call %struct.pb_Parameters* @pb_ReadParameters(i32* %2, i8** %7)
  store %struct.pb_Parameters* %8, %struct.pb_Parameters** %parameters, align 8
  call void @pb_InitializeTimerSet(%struct.pb_TimerSet* %timers)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %timers, i32 6)
  store float 0x3FC5555560000000, float* %c0, align 4
  store float 0x3F9C71C720000000, float* %c1, align 4
  %9 = load i32* %2, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([113 x i8]* @.str3, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %122

; <label>:13                                      ; preds = %0
  %14 = load i8*** %3, align 8
  %15 = getelementptr inbounds i8** %14, i64 1
  %16 = load i8** %15, align 8
  %17 = call i32 @atoi(i8* %16) #6
  store i32 %17, i32* %nx, align 4
  %18 = load i32* %nx, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %13
  store i32 -1, i32* %1
  br label %122

; <label>:21                                      ; preds = %13
  %22 = load i8*** %3, align 8
  %23 = getelementptr inbounds i8** %22, i64 2
  %24 = load i8** %23, align 8
  %25 = call i32 @atoi(i8* %24) #6
  store i32 %25, i32* %ny, align 4
  %26 = load i32* %ny, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %21
  store i32 -1, i32* %1
  br label %122

; <label>:29                                      ; preds = %21
  %30 = load i8*** %3, align 8
  %31 = getelementptr inbounds i8** %30, i64 3
  %32 = load i8** %31, align 8
  %33 = call i32 @atoi(i8* %32) #6
  store i32 %33, i32* %nz, align 4
  %34 = load i32* %nz, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %29
  store i32 -1, i32* %1
  br label %122

; <label>:37                                      ; preds = %29
  %38 = load i8*** %3, align 8
  %39 = getelementptr inbounds i8** %38, i64 4
  %40 = load i8** %39, align 8
  %41 = call i32 @atoi(i8* %40) #6
  store i32 %41, i32* %iteration, align 4
  %42 = load i32* %iteration, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %37
  store i32 -1, i32* %1
  br label %122

; <label>:45                                      ; preds = %37
  %46 = load i32* %nx, align 4
  %47 = load i32* %ny, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32* %nz, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %size, align 4
  %51 = load i32* %size, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = call noalias i8* @malloc(i64 %53) #4
  %55 = bitcast i8* %54 to float*
  store float* %55, float** %h_A0, align 8
  %56 = load i32* %size, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = call noalias i8* @malloc(i64 %58) #4
  %60 = bitcast i8* %59 to float*
  store float* %60, float** %h_Anext, align 8
  %61 = load %struct.pb_Parameters** %parameters, align 8
  %62 = getelementptr inbounds %struct.pb_Parameters* %61, i32 0, i32 1
  %63 = load i8*** %62, align 8
  %64 = getelementptr inbounds i8** %63, i64 0
  %65 = load i8** %64, align 8
  %66 = call %struct._IO_FILE* @fopen(i8* %65, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0))
  store %struct._IO_FILE* %66, %struct._IO_FILE** %fp, align 8
  %67 = load float** %h_A0, align 8
  %68 = load i32* %nx, align 4
  %69 = load i32* %ny, align 4
  %70 = load i32* %nz, align 4
  %71 = load %struct._IO_FILE** %fp, align 8
  %72 = call i32 @read_data(float* %67, i32 %68, i32 %69, i32 %70, %struct._IO_FILE* %71)
  %73 = load %struct._IO_FILE** %fp, align 8
  %74 = call i32 @fclose(%struct._IO_FILE* %73)
  %75 = load float** %h_Anext, align 8
  %76 = bitcast float* %75 to i8*
  %77 = load float** %h_A0, align 8
  %78 = bitcast float* %77 to i8*
  %79 = load i32* %size, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %78, i64 %81, i32 4, i1 false)
  store i32 0, i32* %t, align 4
  br label %82

; <label>:82                                      ; preds = %97, %45
  %83 = load i32* %t, align 4
  %84 = load i32* %iteration, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

; <label>:86                                      ; preds = %82
  %87 = load float* %c0, align 4
  %88 = load float* %c1, align 4
  %89 = load float** %h_A0, align 8
  %90 = load float** %h_Anext, align 8
  %91 = load i32* %nx, align 4
  %92 = load i32* %ny, align 4
  %93 = load i32* %nz, align 4
  call void @cpu_stencil(float %87, float %88, float* %89, float* %90, i32 %91, i32 %92, i32 %93)
  %94 = load float** %h_A0, align 8
  store float* %94, float** %temp, align 8
  %95 = load float** %h_Anext, align 8
  store float* %95, float** %h_A0, align 8
  %96 = load float** %temp, align 8
  store float* %96, float** %h_Anext, align 8
  br label %97

; <label>:97                                      ; preds = %86
  %98 = load i32* %t, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %t, align 4
  br label %82

; <label>:100                                     ; preds = %82
  %101 = load float** %h_A0, align 8
  store float* %101, float** %temp1, align 8
  %102 = load float** %h_Anext, align 8
  store float* %102, float** %h_A0, align 8
  %103 = load float** %temp1, align 8
  store float* %103, float** %h_Anext, align 8
  %104 = load %struct.pb_Parameters** %parameters, align 8
  %105 = getelementptr inbounds %struct.pb_Parameters* %104, i32 0, i32 0
  %106 = load i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %116

; <label>:108                                     ; preds = %100
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %timers, i32 1)
  %109 = load %struct.pb_Parameters** %parameters, align 8
  %110 = getelementptr inbounds %struct.pb_Parameters* %109, i32 0, i32 0
  %111 = load i8** %110, align 8
  %112 = load float** %h_Anext, align 8
  %113 = load i32* %nx, align 4
  %114 = load i32* %ny, align 4
  %115 = load i32* %nz, align 4
  call void @outputData(i8* %111, float* %112, i32 %113, i32 %114, i32 %115)
  br label %116

; <label>:116                                     ; preds = %108, %100
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %timers, i32 6)
  %117 = load float** %h_A0, align 8
  %118 = bitcast float* %117 to i8*
  call void @free(i8* %118) #4
  %119 = load float** %h_Anext, align 8
  %120 = bitcast float* %119 to i8*
  call void @free(i8* %120) #4
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %timers, i32 0)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* %timers)
  %121 = load %struct.pb_Parameters** %parameters, align 8
  call void @pb_FreeParameters(%struct.pb_Parameters* %121)
  store i32 0, i32* %1
  br label %122

; <label>:122                                     ; preds = %116, %44, %36, %28, %20, %11
  %123 = load i32* %1
  ret i32 %123
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_data(float* %A0, i32 %nx, i32 %ny, i32 %nz, %struct._IO_FILE* %fp) #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float* %A0, float** %1, align 8
  store i32 %nx, i32* %2, align 4
  store i32 %ny, i32* %3, align 4
  store i32 %nz, i32* %4, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %5, align 8
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %38, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %41

; <label>:10                                      ; preds = %6
  store i32 0, i32* %j, align 4
  br label %11

; <label>:11                                      ; preds = %34, %10
  %12 = load i32* %j, align 4
  %13 = load i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

; <label>:15                                      ; preds = %11
  store i32 0, i32* %k, align 4
  br label %16

; <label>:16                                      ; preds = %30, %15
  %17 = load i32* %k, align 4
  %18 = load i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

; <label>:20                                      ; preds = %16
  %21 = load float** %1, align 8
  %22 = load i32* %s, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float* %21, i64 %23
  %25 = bitcast float* %24 to i8*
  %26 = load %struct._IO_FILE** %5, align 8
  %27 = call i64 @fread(i8* %25, i64 4, i64 1, %struct._IO_FILE* %26)
  %28 = load i32* %s, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %s, align 4
  br label %30

; <label>:30                                      ; preds = %20
  %31 = load i32* %k, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %k, align 4
  br label %16

; <label>:33                                      ; preds = %16
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32* %j, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %j, align 4
  br label %11

; <label>:37                                      ; preds = %11
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i, align 4
  br label %6

; <label>:41                                      ; preds = %6
  ret i32 0
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.pb_Parameters* @pb_ReadParameters(i32* %_argc, i8** %argv) #0 {
  %1 = alloca %struct.pb_Parameters*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %err_message = alloca i8*, align 8
  %ap = alloca %struct.argparse, align 8
  %ret = alloca %struct.pb_Parameters*, align 8
  %arg = alloca i8*, align 8
  store i32* %_argc, i32** %2, align 8
  store i8** %argv, i8*** %3, align 8
  %4 = call noalias i8* @malloc(i64 16) #4
  %5 = bitcast i8* %4 to %struct.pb_Parameters*
  store %struct.pb_Parameters* %5, %struct.pb_Parameters** %ret, align 8
  %6 = load %struct.pb_Parameters** %ret, align 8
  %7 = getelementptr inbounds %struct.pb_Parameters* %6, i32 0, i32 0
  store i8* null, i8** %7, align 8
  %8 = call noalias i8* @malloc(i64 8) #4
  %9 = bitcast i8* %8 to i8**
  %10 = load %struct.pb_Parameters** %ret, align 8
  %11 = getelementptr inbounds %struct.pb_Parameters* %10, i32 0, i32 1
  store i8** %9, i8*** %11, align 8
  %12 = load %struct.pb_Parameters** %ret, align 8
  %13 = getelementptr inbounds %struct.pb_Parameters* %12, i32 0, i32 1
  %14 = load i8*** %13, align 8
  %15 = getelementptr inbounds i8** %14, i64 0
  store i8* null, i8** %15, align 8
  %16 = load i32** %2, align 8
  %17 = load i32* %16, align 4
  %18 = load i8*** %3, align 8
  call void @initialize_argparse(%struct.argparse* %ap, i32 %17, i8** %18)
  br label %19

; <label>:19                                      ; preds = %72, %0
  %20 = call i32 @is_end_of_arguments(%struct.argparse* %ap)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %73

; <label>:23                                      ; preds = %19
  %24 = call i8* @get_argument(%struct.argparse* %ap)
  store i8* %24, i8** %arg, align 8
  %25 = load i8** %arg, align 8
  %26 = getelementptr inbounds i8* %25, i64 0
  %27 = load i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %71

; <label>:30                                      ; preds = %23
  %31 = load i8** %arg, align 8
  %32 = getelementptr inbounds i8* %31, i64 1
  %33 = load i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

; <label>:36                                      ; preds = %30
  %37 = load i8** %arg, align 8
  %38 = getelementptr inbounds i8* %37, i64 2
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %71

; <label>:42                                      ; preds = %36
  call void @delete_argument(%struct.argparse* %ap)
  %43 = load i8** %arg, align 8
  %44 = getelementptr inbounds i8* %43, i64 1
  %45 = load i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %69 [
    i32 111, label %47
    i32 105, label %59
    i32 45, label %68
  ]

; <label>:47                                      ; preds = %42
  %48 = call i32 @is_end_of_arguments(%struct.argparse* %ap)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  store i8* getelementptr inbounds ([32 x i8]* @.str5, i32 0, i32 0), i8** %err_message, align 8
  br label %79

; <label>:51                                      ; preds = %47
  %52 = load %struct.pb_Parameters** %ret, align 8
  %53 = getelementptr inbounds %struct.pb_Parameters* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  call void @free(i8* %54) #4
  %55 = call i8* @consume_argument(%struct.argparse* %ap)
  %56 = call noalias i8* @strdup(i8* %55) #4
  %57 = load %struct.pb_Parameters** %ret, align 8
  %58 = getelementptr inbounds %struct.pb_Parameters* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %70

; <label>:59                                      ; preds = %42
  %60 = call i32 @is_end_of_arguments(%struct.argparse* %ap)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %59
  store i8* getelementptr inbounds ([32 x i8]* @.str16, i32 0, i32 0), i8** %err_message, align 8
  br label %79

; <label>:63                                      ; preds = %59
  %64 = call i8* @consume_argument(%struct.argparse* %ap)
  %65 = call i8** @read_string_array(i8* %64)
  %66 = load %struct.pb_Parameters** %ret, align 8
  %67 = getelementptr inbounds %struct.pb_Parameters* %66, i32 0, i32 1
  store i8** %65, i8*** %67, align 8
  br label %70

; <label>:68                                      ; preds = %42
  br label %74

; <label>:69                                      ; preds = %42
  store i8* getelementptr inbounds ([35 x i8]* @.str27, i32 0, i32 0), i8** %err_message, align 8
  br label %79

; <label>:70                                      ; preds = %63, %51
  br label %72

; <label>:71                                      ; preds = %36, %30, %23
  call void @next_argument(%struct.argparse* %ap)
  br label %72

; <label>:72                                      ; preds = %71, %70
  br label %19

; <label>:73                                      ; preds = %19
  br label %74

; <label>:74                                      ; preds = %73, %68
  %75 = getelementptr inbounds %struct.argparse* %ap, i32 0, i32 0
  %76 = load i32* %75, align 4
  %77 = load i32** %2, align 8
  store i32 %76, i32* %77, align 4
  call void @finalize_argparse(%struct.argparse* %ap)
  %78 = load %struct.pb_Parameters** %ret, align 8
  store %struct.pb_Parameters* %78, %struct.pb_Parameters** %1
  br label %84

; <label>:79                                      ; preds = %69, %62, %50
  %80 = load i8** %err_message, align 8
  %81 = load %struct._IO_FILE** @stderr, align 8
  %82 = call i32 @fputs(i8* %80, %struct._IO_FILE* %81)
  %83 = load %struct.pb_Parameters** %ret, align 8
  call void @pb_FreeParameters(%struct.pb_Parameters* %83)
  store %struct.pb_Parameters* null, %struct.pb_Parameters** %1
  br label %84

; <label>:84                                      ; preds = %79, %74
  %85 = load %struct.pb_Parameters** %1
  ret %struct.pb_Parameters* %85
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @pb_FreeParameters(%struct.pb_Parameters* %p) #0 {
  %1 = alloca %struct.pb_Parameters*, align 8
  %cpp = alloca i8**, align 8
  store %struct.pb_Parameters* %p, %struct.pb_Parameters** %1, align 8
  %2 = load %struct.pb_Parameters** %1, align 8
  %3 = getelementptr inbounds %struct.pb_Parameters* %2, i32 0, i32 0
  %4 = load i8** %3, align 8
  call void @free(i8* %4) #4
  %5 = load %struct.pb_Parameters** %1, align 8
  %6 = getelementptr inbounds %struct.pb_Parameters* %5, i32 0, i32 1
  %7 = load i8*** %6, align 8
  call void @free_string_array(i8** %7)
  %8 = load %struct.pb_Parameters** %1, align 8
  %9 = bitcast %struct.pb_Parameters* %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pb_Parameters_CountInputs(%struct.pb_Parameters* %p) #0 {
  %1 = alloca %struct.pb_Parameters*, align 8
  %n = alloca i32, align 4
  store %struct.pb_Parameters* %p, %struct.pb_Parameters** %1, align 8
  store i32 0, i32* %n, align 4
  br label %2

; <label>:2                                       ; preds = %12, %0
  %3 = load i32* %n, align 4
  %4 = sext i32 %3 to i64
  %5 = load %struct.pb_Parameters** %1, align 8
  %6 = getelementptr inbounds %struct.pb_Parameters* %5, i32 0, i32 1
  %7 = load i8*** %6, align 8
  %8 = getelementptr inbounds i8** %7, i64 %4
  %9 = load i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %2
  br label %12

; <label>:12                                      ; preds = %11
  %13 = load i32* %n, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %n, align 4
  br label %2

; <label>:15                                      ; preds = %2
  %16 = load i32* %n, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @pb_ResetTimer(%struct.pb_Timer* %timer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  %2 = load %struct.pb_Timer** %1, align 8
  %3 = getelementptr inbounds %struct.pb_Timer* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = load %struct.pb_Timer** %1, align 8
  %5 = getelementptr inbounds %struct.pb_Timer* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pb_StartTimer(%struct.pb_Timer* %timer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  %tv = alloca %struct.timeval, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  %2 = load %struct.pb_Timer** %1, align 8
  %3 = getelementptr inbounds %struct.pb_Timer* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8]* @.str38, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %21

; <label>:9                                       ; preds = %0
  %10 = load %struct.pb_Timer** %1, align 8
  %11 = getelementptr inbounds %struct.pb_Timer* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #4
  %13 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %14 = load i64* %13, align 8
  %15 = mul nsw i64 %14, 1000000
  %16 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = add nsw i64 %15, %17
  %19 = load %struct.pb_Timer** %1, align 8
  %20 = getelementptr inbounds %struct.pb_Timer* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind uwtable
define void @pb_StartTimerAndSubTimer(%struct.pb_Timer* %timer, %struct.pb_Timer* %subtimer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  %2 = alloca %struct.pb_Timer*, align 8
  %numNotStopped = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  store %struct.pb_Timer* %subtimer, %struct.pb_Timer** %2, align 8
  store i32 3, i32* %numNotStopped, align 4
  %3 = load %struct.pb_Timer** %1, align 8
  %4 = getelementptr inbounds %struct.pb_Timer* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8]* @.str49, i32 0, i32 0), %struct._IO_FILE* %8)
  %10 = load i32* %numNotStopped, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %numNotStopped, align 4
  br label %12

; <label>:12                                      ; preds = %7, %0
  %13 = load %struct.pb_Timer** %2, align 8
  %14 = getelementptr inbounds %struct.pb_Timer* %13, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %12
  %18 = load %struct._IO_FILE** @stderr, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8]* @.str510, i32 0, i32 0), %struct._IO_FILE* %18)
  %20 = load i32* %numNotStopped, align 4
  %21 = and i32 %20, 2
  store i32 %21, i32* %numNotStopped, align 4
  br label %22

; <label>:22                                      ; preds = %17, %12
  %23 = load i32* %numNotStopped, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %22
  %26 = load %struct._IO_FILE** @stderr, align 8
  %27 = call i32 @fputs(i8* getelementptr inbounds ([54 x i8]* @.str6, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %59

; <label>:28                                      ; preds = %22
  %29 = load %struct.pb_Timer** %1, align 8
  %30 = getelementptr inbounds %struct.pb_Timer* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.pb_Timer** %2, align 8
  %32 = getelementptr inbounds %struct.pb_Timer* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #4
  %34 = load i32* %numNotStopped, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %28
  %38 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %39 = load i64* %38, align 8
  %40 = mul nsw i64 %39, 1000000
  %41 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %42 = load i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = load %struct.pb_Timer** %1, align 8
  %45 = getelementptr inbounds %struct.pb_Timer* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %46

; <label>:46                                      ; preds = %37, %28
  %47 = load i32* %numNotStopped, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %52 = load i64* %51, align 8
  %53 = mul nsw i64 %52, 1000000
  %54 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %55 = load i64* %54, align 8
  %56 = add nsw i64 %53, %55
  %57 = load %struct.pb_Timer** %2, align 8
  %58 = getelementptr inbounds %struct.pb_Timer* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

; <label>:59                                      ; preds = %50, %46, %25
  ret void
}

; Function Attrs: nounwind uwtable
define void @pb_StopTimer(%struct.pb_Timer* %timer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  %fini = alloca i64, align 8
  %tv = alloca %struct.timeval, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  %2 = load %struct.pb_Timer** %1, align 8
  %3 = getelementptr inbounds %struct.pb_Timer* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 1
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8]* @.str7, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %28

; <label>:9                                       ; preds = %0
  %10 = load %struct.pb_Timer** %1, align 8
  %11 = getelementptr inbounds %struct.pb_Timer* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #4
  %13 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %14 = load i64* %13, align 8
  %15 = mul nsw i64 %14, 1000000
  %16 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* %fini, align 8
  %19 = load %struct.pb_Timer** %1, align 8
  %20 = getelementptr inbounds %struct.pb_Timer* %19, i32 0, i32 1
  %21 = load %struct.pb_Timer** %1, align 8
  %22 = getelementptr inbounds %struct.pb_Timer* %21, i32 0, i32 2
  %23 = load i64* %22, align 8
  %24 = load i64* %fini, align 8
  call void @accumulate_time(i64* %20, i64 %23, i64 %24)
  %25 = load i64* %fini, align 8
  %26 = load %struct.pb_Timer** %1, align 8
  %27 = getelementptr inbounds %struct.pb_Timer* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %28

; <label>:28                                      ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind uwtable
define void @pb_StopTimerAndSubTimer(%struct.pb_Timer* %timer, %struct.pb_Timer* %subtimer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  %2 = alloca %struct.pb_Timer*, align 8
  %fini = alloca i64, align 8
  %numNotRunning = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  store %struct.pb_Timer* %subtimer, %struct.pb_Timer** %2, align 8
  store i32 3, i32* %numNotRunning, align 4
  %3 = load %struct.pb_Timer** %1, align 8
  %4 = getelementptr inbounds %struct.pb_Timer* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8]* @.str8, i32 0, i32 0), %struct._IO_FILE* %8)
  %10 = load i32* %numNotRunning, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %numNotRunning, align 4
  br label %12

; <label>:12                                      ; preds = %7, %0
  %13 = load %struct.pb_Timer** %2, align 8
  %14 = getelementptr inbounds %struct.pb_Timer* %13, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %12
  %18 = load %struct._IO_FILE** @stderr, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8]* @.str9, i32 0, i32 0), %struct._IO_FILE* %18)
  %20 = load i32* %numNotRunning, align 4
  %21 = and i32 %20, 2
  store i32 %21, i32* %numNotRunning, align 4
  br label %22

; <label>:22                                      ; preds = %17, %12
  %23 = load i32* %numNotRunning, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %22
  %26 = load %struct._IO_FILE** @stderr, align 8
  %27 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8]* @.str10, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %67

; <label>:28                                      ; preds = %22
  %29 = load %struct.pb_Timer** %1, align 8
  %30 = getelementptr inbounds %struct.pb_Timer* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.pb_Timer** %2, align 8
  %32 = getelementptr inbounds %struct.pb_Timer* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #4
  %34 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %35 = load i64* %34, align 8
  %36 = mul nsw i64 %35, 1000000
  %37 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %38 = load i64* %37, align 8
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %fini, align 8
  %40 = load i32* %numNotRunning, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

; <label>:43                                      ; preds = %28
  %44 = load %struct.pb_Timer** %1, align 8
  %45 = getelementptr inbounds %struct.pb_Timer* %44, i32 0, i32 1
  %46 = load %struct.pb_Timer** %1, align 8
  %47 = getelementptr inbounds %struct.pb_Timer* %46, i32 0, i32 2
  %48 = load i64* %47, align 8
  %49 = load i64* %fini, align 8
  call void @accumulate_time(i64* %45, i64 %48, i64 %49)
  %50 = load i64* %fini, align 8
  %51 = load %struct.pb_Timer** %1, align 8
  %52 = getelementptr inbounds %struct.pb_Timer* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

; <label>:53                                      ; preds = %43, %28
  %54 = load i32* %numNotRunning, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

; <label>:57                                      ; preds = %53
  %58 = load %struct.pb_Timer** %2, align 8
  %59 = getelementptr inbounds %struct.pb_Timer* %58, i32 0, i32 1
  %60 = load %struct.pb_Timer** %2, align 8
  %61 = getelementptr inbounds %struct.pb_Timer* %60, i32 0, i32 2
  %62 = load i64* %61, align 8
  %63 = load i64* %fini, align 8
  call void @accumulate_time(i64* %59, i64 %62, i64 %63)
  %64 = load i64* %fini, align 8
  %65 = load %struct.pb_Timer** %2, align 8
  %66 = getelementptr inbounds %struct.pb_Timer* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

; <label>:67                                      ; preds = %57, %53, %25
  ret void
}

; Function Attrs: nounwind uwtable
define double @pb_GetElapsedTime(%struct.pb_Timer* %timer) #0 {
  %1 = alloca %struct.pb_Timer*, align 8
  %ret = alloca double, align 8
  store %struct.pb_Timer* %timer, %struct.pb_Timer** %1, align 8
  %2 = load %struct.pb_Timer** %1, align 8
  %3 = getelementptr inbounds %struct.pb_Timer* %2, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fputs(i8* getelementptr inbounds ([49 x i8]* @.str11, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load %struct.pb_Timer** %1, align 8
  %11 = getelementptr inbounds %struct.pb_Timer* %10, i32 0, i32 1
  %12 = load i64* %11, align 8
  %13 = uitofp i64 %12 to double
  %14 = fdiv double %13, 1.000000e+06
  store double %14, double* %ret, align 8
  %15 = load double* %ret, align 8
  ret double %15
}

; Function Attrs: nounwind uwtable
define void @pb_InitializeTimerSet(%struct.pb_TimerSet* %timers) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %n = alloca i32, align 4
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  %2 = call i64 @get_time()
  %3 = load %struct.pb_TimerSet** %1, align 8
  %4 = getelementptr inbounds %struct.pb_TimerSet* %3, i32 0, i32 3
  store i64 %2, i64* %4, align 8
  %5 = load %struct.pb_TimerSet** %1, align 8
  %6 = getelementptr inbounds %struct.pb_TimerSet* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.pb_TimerSet** %1, align 8
  %8 = getelementptr inbounds %struct.pb_TimerSet* %7, i32 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %8, align 8
  store i32 0, i32* %n, align 4
  br label %9

; <label>:9                                       ; preds = %23, %0
  %10 = load i32* %n, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %9
  %13 = load i32* %n, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.pb_TimerSet** %1, align 8
  %16 = getelementptr inbounds %struct.pb_TimerSet* %15, i32 0, i32 4
  %17 = getelementptr inbounds [8 x %struct.pb_Timer]* %16, i32 0, i64 %14
  call void @pb_ResetTimer(%struct.pb_Timer* %17)
  %18 = load i32* %n, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.pb_TimerSet** %1, align 8
  %21 = getelementptr inbounds %struct.pb_TimerSet* %20, i32 0, i32 5
  %22 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %21, i32 0, i64 %19
  store %struct.pb_SubTimerList* null, %struct.pb_SubTimerList** %22, align 8
  br label %23

; <label>:23                                      ; preds = %12
  %24 = load i32* %n, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %n, align 4
  br label %9

; <label>:26                                      ; preds = %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @pb_AddSubTimer(%struct.pb_TimerSet* %timers, i8* %label, i32 %pb_Category) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %subtimer = alloca %struct.pb_SubTimer*, align 8
  %len = alloca i32, align 4
  %subtimerlist = alloca %struct.pb_SubTimerList*, align 8
  %element = alloca %struct.pb_SubTimer*, align 8
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  store i8* %label, i8** %2, align 8
  store i32 %pb_Category, i32* %3, align 4
  %4 = call noalias i8* @malloc(i64 40) #4
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  store %struct.pb_SubTimer* %5, %struct.pb_SubTimer** %subtimer, align 8
  %6 = load i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %len, align 4
  %9 = load i32* %len, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 1, %11
  %13 = call noalias i8* @malloc(i64 %12) #4
  %14 = load %struct.pb_SubTimer** %subtimer, align 8
  %15 = getelementptr inbounds %struct.pb_SubTimer* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.pb_SubTimer** %subtimer, align 8
  %17 = getelementptr inbounds %struct.pb_SubTimer* %16, i32 0, i32 0
  %18 = load i8** %17, align 8
  %19 = load i8** %2, align 8
  %20 = call i32 (i8*, i8*, ...)* @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i8* %19) #4
  %21 = load %struct.pb_SubTimer** %subtimer, align 8
  %22 = getelementptr inbounds %struct.pb_SubTimer* %21, i32 0, i32 1
  call void @pb_ResetTimer(%struct.pb_Timer* %22)
  %23 = load %struct.pb_SubTimer** %subtimer, align 8
  %24 = getelementptr inbounds %struct.pb_SubTimer* %23, i32 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %24, align 8
  %25 = load i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.pb_TimerSet** %1, align 8
  %28 = getelementptr inbounds %struct.pb_TimerSet* %27, i32 0, i32 5
  %29 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %28, i32 0, i64 %26
  %30 = load %struct.pb_SubTimerList** %29, align 8
  store %struct.pb_SubTimerList* %30, %struct.pb_SubTimerList** %subtimerlist, align 8
  %31 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %32 = icmp eq %struct.pb_SubTimerList* %31, null
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %0
  %34 = call noalias i8* @malloc(i64 16) #4
  %35 = bitcast i8* %34 to %struct.pb_SubTimerList*
  store %struct.pb_SubTimerList* %35, %struct.pb_SubTimerList** %subtimerlist, align 8
  %36 = load %struct.pb_SubTimer** %subtimer, align 8
  %37 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %38 = getelementptr inbounds %struct.pb_SubTimerList* %37, i32 0, i32 1
  store %struct.pb_SubTimer* %36, %struct.pb_SubTimer** %38, align 8
  %39 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %40 = load i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.pb_TimerSet** %1, align 8
  %43 = getelementptr inbounds %struct.pb_TimerSet* %42, i32 0, i32 5
  %44 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %43, i32 0, i64 %41
  store %struct.pb_SubTimerList* %39, %struct.pb_SubTimerList** %44, align 8
  br label %62

; <label>:45                                      ; preds = %0
  %46 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %47 = getelementptr inbounds %struct.pb_SubTimerList* %46, i32 0, i32 1
  %48 = load %struct.pb_SubTimer** %47, align 8
  store %struct.pb_SubTimer* %48, %struct.pb_SubTimer** %element, align 8
  br label %49

; <label>:49                                      ; preds = %54, %45
  %50 = load %struct.pb_SubTimer** %element, align 8
  %51 = getelementptr inbounds %struct.pb_SubTimer* %50, i32 0, i32 2
  %52 = load %struct.pb_SubTimer** %51, align 8
  %53 = icmp ne %struct.pb_SubTimer* %52, null
  br i1 %53, label %54, label %58

; <label>:54                                      ; preds = %49
  %55 = load %struct.pb_SubTimer** %element, align 8
  %56 = getelementptr inbounds %struct.pb_SubTimer* %55, i32 0, i32 2
  %57 = load %struct.pb_SubTimer** %56, align 8
  store %struct.pb_SubTimer* %57, %struct.pb_SubTimer** %element, align 8
  br label %49

; <label>:58                                      ; preds = %49
  %59 = load %struct.pb_SubTimer** %subtimer, align 8
  %60 = load %struct.pb_SubTimer** %element, align 8
  %61 = getelementptr inbounds %struct.pb_SubTimer* %60, i32 0, i32 2
  store %struct.pb_SubTimer* %59, %struct.pb_SubTimer** %61, align 8
  br label %62

; <label>:62                                      ; preds = %58, %33
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @pb_SwitchToSubTimer(%struct.pb_TimerSet* %timers, i8* %label, i32 %category) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %topLevelToStop = alloca %struct.pb_Timer*, align 8
  %subtimerlist = alloca %struct.pb_SubTimerList*, align 8
  %curr = alloca %struct.pb_SubTimer*, align 8
  %subtimer = alloca %struct.pb_SubTimer*, align 8
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  store i8* %label, i8** %2, align 8
  store i32 %category, i32* %3, align 4
  store %struct.pb_Timer* null, %struct.pb_Timer** %topLevelToStop, align 8
  %4 = load %struct.pb_TimerSet** %1, align 8
  %5 = getelementptr inbounds %struct.pb_TimerSet* %4, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = load i32* %3, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %22

; <label>:9                                       ; preds = %0
  %10 = load %struct.pb_TimerSet** %1, align 8
  %11 = getelementptr inbounds %struct.pb_TimerSet* %10, i32 0, i32 0
  %12 = load i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %9
  %15 = load %struct.pb_TimerSet** %1, align 8
  %16 = getelementptr inbounds %struct.pb_TimerSet* %15, i32 0, i32 0
  %17 = load i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.pb_TimerSet** %1, align 8
  %20 = getelementptr inbounds %struct.pb_TimerSet* %19, i32 0, i32 4
  %21 = getelementptr inbounds [8 x %struct.pb_Timer]* %20, i32 0, i64 %18
  store %struct.pb_Timer* %21, %struct.pb_Timer** %topLevelToStop, align 8
  br label %22

; <label>:22                                      ; preds = %14, %9, %0
  %23 = load %struct.pb_TimerSet** %1, align 8
  %24 = getelementptr inbounds %struct.pb_TimerSet* %23, i32 0, i32 0
  %25 = load i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.pb_TimerSet** %1, align 8
  %28 = getelementptr inbounds %struct.pb_TimerSet* %27, i32 0, i32 5
  %29 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %28, i32 0, i64 %26
  %30 = load %struct.pb_SubTimerList** %29, align 8
  store %struct.pb_SubTimerList* %30, %struct.pb_SubTimerList** %subtimerlist, align 8
  %31 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %32 = icmp eq %struct.pb_SubTimerList* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %22
  br label %38

; <label>:34                                      ; preds = %22
  %35 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %36 = getelementptr inbounds %struct.pb_SubTimerList* %35, i32 0, i32 0
  %37 = load %struct.pb_SubTimer** %36, align 8
  br label %38

; <label>:38                                      ; preds = %34, %33
  %39 = phi %struct.pb_SubTimer* [ null, %33 ], [ %37, %34 ]
  store %struct.pb_SubTimer* %39, %struct.pb_SubTimer** %curr, align 8
  %40 = load %struct.pb_TimerSet** %1, align 8
  %41 = getelementptr inbounds %struct.pb_TimerSet* %40, i32 0, i32 0
  %42 = load i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

; <label>:44                                      ; preds = %38
  %45 = load %struct.pb_SubTimer** %curr, align 8
  %46 = icmp ne %struct.pb_SubTimer* %45, null
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %44
  %48 = load %struct.pb_Timer** %topLevelToStop, align 8
  %49 = icmp ne %struct.pb_Timer* %48, null
  br i1 %49, label %50, label %54

; <label>:50                                      ; preds = %47
  %51 = load %struct.pb_Timer** %topLevelToStop, align 8
  %52 = load %struct.pb_SubTimer** %curr, align 8
  %53 = getelementptr inbounds %struct.pb_SubTimer* %52, i32 0, i32 1
  call void @pb_StopTimerAndSubTimer(%struct.pb_Timer* %51, %struct.pb_Timer* %53)
  br label %63

; <label>:54                                      ; preds = %47, %44
  %55 = load %struct.pb_SubTimer** %curr, align 8
  %56 = icmp ne %struct.pb_SubTimer* %55, null
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %54
  %58 = load %struct.pb_SubTimer** %curr, align 8
  %59 = getelementptr inbounds %struct.pb_SubTimer* %58, i32 0, i32 1
  call void @pb_StopTimer(%struct.pb_Timer* %59)
  br label %62

; <label>:60                                      ; preds = %54
  %61 = load %struct.pb_Timer** %topLevelToStop, align 8
  call void @pb_StopTimer(%struct.pb_Timer* %61)
  br label %62

; <label>:62                                      ; preds = %60, %57
  br label %63

; <label>:63                                      ; preds = %62, %50
  br label %64

; <label>:64                                      ; preds = %63, %38
  %65 = load i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = load %struct.pb_TimerSet** %1, align 8
  %68 = getelementptr inbounds %struct.pb_TimerSet* %67, i32 0, i32 5
  %69 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %68, i32 0, i64 %66
  %70 = load %struct.pb_SubTimerList** %69, align 8
  store %struct.pb_SubTimerList* %70, %struct.pb_SubTimerList** %subtimerlist, align 8
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %subtimer, align 8
  %71 = load i8** %2, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %94

; <label>:73                                      ; preds = %64
  %74 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %75 = getelementptr inbounds %struct.pb_SubTimerList* %74, i32 0, i32 1
  %76 = load %struct.pb_SubTimer** %75, align 8
  store %struct.pb_SubTimer* %76, %struct.pb_SubTimer** %subtimer, align 8
  br label %77

; <label>:77                                      ; preds = %92, %73
  %78 = load %struct.pb_SubTimer** %subtimer, align 8
  %79 = icmp ne %struct.pb_SubTimer* %78, null
  br i1 %79, label %80, label %93

; <label>:80                                      ; preds = %77
  %81 = load %struct.pb_SubTimer** %subtimer, align 8
  %82 = getelementptr inbounds %struct.pb_SubTimer* %81, i32 0, i32 0
  %83 = load i8** %82, align 8
  %84 = load i8** %2, align 8
  %85 = call i32 @strcmp(i8* %83, i8* %84) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %80
  br label %93

; <label>:88                                      ; preds = %80
  %89 = load %struct.pb_SubTimer** %subtimer, align 8
  %90 = getelementptr inbounds %struct.pb_SubTimer* %89, i32 0, i32 2
  %91 = load %struct.pb_SubTimer** %90, align 8
  store %struct.pb_SubTimer* %91, %struct.pb_SubTimer** %subtimer, align 8
  br label %92

; <label>:92                                      ; preds = %88
  br label %77

; <label>:93                                      ; preds = %87, %77
  br label %94

; <label>:94                                      ; preds = %93, %64
  %95 = load i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %135

; <label>:97                                      ; preds = %94
  %98 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %99 = icmp ne %struct.pb_SubTimerList* %98, null
  br i1 %99, label %100, label %104

; <label>:100                                     ; preds = %97
  %101 = load %struct.pb_SubTimer** %subtimer, align 8
  %102 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %103 = getelementptr inbounds %struct.pb_SubTimerList* %102, i32 0, i32 0
  store %struct.pb_SubTimer* %101, %struct.pb_SubTimer** %103, align 8
  br label %104

; <label>:104                                     ; preds = %100, %97
  %105 = load i32* %3, align 4
  %106 = load %struct.pb_TimerSet** %1, align 8
  %107 = getelementptr inbounds %struct.pb_TimerSet* %106, i32 0, i32 0
  %108 = load i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %121

; <label>:110                                     ; preds = %104
  %111 = load %struct.pb_SubTimer** %subtimer, align 8
  %112 = icmp ne %struct.pb_SubTimer* %111, null
  br i1 %112, label %113, label %121

; <label>:113                                     ; preds = %110
  %114 = load i32* %3, align 4
  %115 = zext i32 %114 to i64
  %116 = load %struct.pb_TimerSet** %1, align 8
  %117 = getelementptr inbounds %struct.pb_TimerSet* %116, i32 0, i32 4
  %118 = getelementptr inbounds [8 x %struct.pb_Timer]* %117, i32 0, i64 %115
  %119 = load %struct.pb_SubTimer** %subtimer, align 8
  %120 = getelementptr inbounds %struct.pb_SubTimer* %119, i32 0, i32 1
  call void @pb_StartTimerAndSubTimer(%struct.pb_Timer* %118, %struct.pb_Timer* %120)
  br label %134

; <label>:121                                     ; preds = %110, %104
  %122 = load %struct.pb_SubTimer** %subtimer, align 8
  %123 = icmp ne %struct.pb_SubTimer* %122, null
  br i1 %123, label %124, label %127

; <label>:124                                     ; preds = %121
  %125 = load %struct.pb_SubTimer** %subtimer, align 8
  %126 = getelementptr inbounds %struct.pb_SubTimer* %125, i32 0, i32 1
  call void @pb_StartTimer(%struct.pb_Timer* %126)
  br label %133

; <label>:127                                     ; preds = %121
  %128 = load i32* %3, align 4
  %129 = zext i32 %128 to i64
  %130 = load %struct.pb_TimerSet** %1, align 8
  %131 = getelementptr inbounds %struct.pb_TimerSet* %130, i32 0, i32 4
  %132 = getelementptr inbounds [8 x %struct.pb_Timer]* %131, i32 0, i64 %129
  call void @pb_StartTimer(%struct.pb_Timer* %132)
  br label %133

; <label>:133                                     ; preds = %127, %124
  br label %134

; <label>:134                                     ; preds = %133, %113
  br label %135

; <label>:135                                     ; preds = %134, %94
  %136 = load i32* %3, align 4
  %137 = load %struct.pb_TimerSet** %1, align 8
  %138 = getelementptr inbounds %struct.pb_TimerSet* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @pb_SwitchToTimer(%struct.pb_TimerSet* %timers, i32 %timer) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %2 = alloca i32, align 4
  %currSubTimer = alloca %struct.pb_SubTimer*, align 8
  %subtimerlist = alloca %struct.pb_SubTimerList*, align 8
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  store i32 %timer, i32* %2, align 4
  %3 = load %struct.pb_TimerSet** %1, align 8
  %4 = getelementptr inbounds %struct.pb_TimerSet* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %51

; <label>:7                                       ; preds = %0
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %currSubTimer, align 8
  %8 = load %struct.pb_TimerSet** %1, align 8
  %9 = getelementptr inbounds %struct.pb_TimerSet* %8, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = zext i32 %10 to i64
  %12 = load %struct.pb_TimerSet** %1, align 8
  %13 = getelementptr inbounds %struct.pb_TimerSet* %12, i32 0, i32 5
  %14 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %13, i32 0, i64 %11
  %15 = load %struct.pb_SubTimerList** %14, align 8
  store %struct.pb_SubTimerList* %15, %struct.pb_SubTimerList** %subtimerlist, align 8
  %16 = load %struct.pb_SubTimerList** %subtimerlist, align 8
  %17 = icmp ne %struct.pb_SubTimerList* %16, null
  br i1 %17, label %18, label %29

; <label>:18                                      ; preds = %7
  %19 = load %struct.pb_TimerSet** %1, align 8
  %20 = getelementptr inbounds %struct.pb_TimerSet* %19, i32 0, i32 0
  %21 = load i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.pb_TimerSet** %1, align 8
  %24 = getelementptr inbounds %struct.pb_TimerSet* %23, i32 0, i32 5
  %25 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %24, i32 0, i64 %22
  %26 = load %struct.pb_SubTimerList** %25, align 8
  %27 = getelementptr inbounds %struct.pb_SubTimerList* %26, i32 0, i32 0
  %28 = load %struct.pb_SubTimer** %27, align 8
  store %struct.pb_SubTimer* %28, %struct.pb_SubTimer** %currSubTimer, align 8
  br label %29

; <label>:29                                      ; preds = %18, %7
  %30 = load %struct.pb_SubTimer** %currSubTimer, align 8
  %31 = icmp ne %struct.pb_SubTimer* %30, null
  br i1 %31, label %32, label %42

; <label>:32                                      ; preds = %29
  %33 = load %struct.pb_TimerSet** %1, align 8
  %34 = getelementptr inbounds %struct.pb_TimerSet* %33, i32 0, i32 0
  %35 = load i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.pb_TimerSet** %1, align 8
  %38 = getelementptr inbounds %struct.pb_TimerSet* %37, i32 0, i32 4
  %39 = getelementptr inbounds [8 x %struct.pb_Timer]* %38, i32 0, i64 %36
  %40 = load %struct.pb_SubTimer** %currSubTimer, align 8
  %41 = getelementptr inbounds %struct.pb_SubTimer* %40, i32 0, i32 1
  call void @pb_StopTimerAndSubTimer(%struct.pb_Timer* %39, %struct.pb_Timer* %41)
  br label %50

; <label>:42                                      ; preds = %29
  %43 = load %struct.pb_TimerSet** %1, align 8
  %44 = getelementptr inbounds %struct.pb_TimerSet* %43, i32 0, i32 0
  %45 = load i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.pb_TimerSet** %1, align 8
  %48 = getelementptr inbounds %struct.pb_TimerSet* %47, i32 0, i32 4
  %49 = getelementptr inbounds [8 x %struct.pb_Timer]* %48, i32 0, i64 %46
  call void @pb_StopTimer(%struct.pb_Timer* %49)
  br label %50

; <label>:50                                      ; preds = %42, %32
  br label %51

; <label>:51                                      ; preds = %50, %0
  %52 = load i32* %2, align 4
  %53 = load %struct.pb_TimerSet** %1, align 8
  %54 = getelementptr inbounds %struct.pb_TimerSet* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

; <label>:57                                      ; preds = %51
  %58 = load i32* %2, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.pb_TimerSet** %1, align 8
  %61 = getelementptr inbounds %struct.pb_TimerSet* %60, i32 0, i32 4
  %62 = getelementptr inbounds [8 x %struct.pb_Timer]* %61, i32 0, i64 %59
  call void @pb_StartTimer(%struct.pb_Timer* %62)
  br label %63

; <label>:63                                      ; preds = %57, %51
  ret void
}

; Function Attrs: nounwind uwtable
define void @pb_PrintTimerSet(%struct.pb_TimerSet* %timers) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %wall_end = alloca i64, align 8
  %t = alloca %struct.pb_Timer*, align 8
  %sub = alloca %struct.pb_SubTimer*, align 8
  %maxSubLength = alloca i32, align 4
  %categories = alloca [6 x i8*], align 16
  %maxCategoryLength = alloca i32, align 4
  %i = alloca i32, align 4
  %walltime = alloca float, align 4
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  %2 = call i64 @get_time()
  store i64 %2, i64* %wall_end, align 8
  %3 = load %struct.pb_TimerSet** %1, align 8
  %4 = getelementptr inbounds %struct.pb_TimerSet* %3, i32 0, i32 4
  %5 = getelementptr inbounds [8 x %struct.pb_Timer]* %4, i32 0, i32 0
  store %struct.pb_Timer* %5, %struct.pb_Timer** %t, align 8
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %sub, align 8
  %6 = bitcast [6 x i8*]* %categories to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 16, i1 false)
  %7 = bitcast i8* %6 to [6 x i8*]*
  %8 = getelementptr [6 x i8*]* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8** %8
  %9 = getelementptr [6 x i8*]* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0), i8** %9
  %10 = getelementptr [6 x i8*]* %7, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8** %10
  %11 = getelementptr [6 x i8*]* %7, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8]* @.str1611, i32 0, i32 0), i8** %11
  %12 = getelementptr [6 x i8*]* %7, i32 0, i32 4
  store i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0), i8** %12
  %13 = getelementptr [6 x i8*]* %7, i32 0, i32 5
  store i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0), i8** %13
  store i32 10, i32* %maxCategoryLength, align 4
  store i32 1, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %104, %0
  %15 = load i32* %i, align 4
  %16 = icmp slt i32 %15, 7
  br i1 %16, label %17, label %107

; <label>:17                                      ; preds = %14
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.pb_Timer** %t, align 8
  %21 = getelementptr inbounds %struct.pb_Timer* %20, i64 %19
  %22 = call double @pb_GetElapsedTime(%struct.pb_Timer* %21)
  %23 = fcmp une double %22, 0.000000e+00
  br i1 %23, label %24, label %103

; <label>:24                                      ; preds = %17
  %25 = load i32* %i, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i8*]* %categories, i32 0, i64 %27
  %29 = load i8** %28, align 8
  %30 = load i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.pb_Timer** %t, align 8
  %33 = getelementptr inbounds %struct.pb_Timer* %32, i64 %31
  %34 = call double @pb_GetElapsedTime(%struct.pb_Timer* %33)
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0), i32 10, i8* %29, double %34)
  %36 = load i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.pb_TimerSet** %1, align 8
  %39 = getelementptr inbounds %struct.pb_TimerSet* %38, i32 0, i32 5
  %40 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %39, i32 0, i64 %37
  %41 = load %struct.pb_SubTimerList** %40, align 8
  %42 = icmp ne %struct.pb_SubTimerList* %41, null
  br i1 %42, label %43, label %102

; <label>:43                                      ; preds = %24
  %44 = load i32* %i, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.pb_TimerSet** %1, align 8
  %47 = getelementptr inbounds %struct.pb_TimerSet* %46, i32 0, i32 5
  %48 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %47, i32 0, i64 %45
  %49 = load %struct.pb_SubTimerList** %48, align 8
  %50 = getelementptr inbounds %struct.pb_SubTimerList* %49, i32 0, i32 1
  %51 = load %struct.pb_SubTimer** %50, align 8
  store %struct.pb_SubTimer* %51, %struct.pb_SubTimer** %sub, align 8
  store i32 0, i32* %maxSubLength, align 4
  br label %52

; <label>:52                                      ; preds = %69, %43
  %53 = load %struct.pb_SubTimer** %sub, align 8
  %54 = icmp ne %struct.pb_SubTimer* %53, null
  br i1 %54, label %55, label %73

; <label>:55                                      ; preds = %52
  %56 = load %struct.pb_SubTimer** %sub, align 8
  %57 = getelementptr inbounds %struct.pb_SubTimer* %56, i32 0, i32 0
  %58 = load i8** %57, align 8
  %59 = call i64 @strlen(i8* %58) #6
  %60 = load i32* %maxSubLength, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %59, %61
  br i1 %62, label %63, label %69

; <label>:63                                      ; preds = %55
  %64 = load %struct.pb_SubTimer** %sub, align 8
  %65 = getelementptr inbounds %struct.pb_SubTimer* %64, i32 0, i32 0
  %66 = load i8** %65, align 8
  %67 = call i64 @strlen(i8* %66) #6
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %maxSubLength, align 4
  br label %69

; <label>:69                                      ; preds = %63, %55
  %70 = load %struct.pb_SubTimer** %sub, align 8
  %71 = getelementptr inbounds %struct.pb_SubTimer* %70, i32 0, i32 2
  %72 = load %struct.pb_SubTimer** %71, align 8
  store %struct.pb_SubTimer* %72, %struct.pb_SubTimer** %sub, align 8
  br label %52

; <label>:73                                      ; preds = %52
  %74 = load i32* %maxSubLength, align 4
  %75 = icmp sle i32 %74, 10
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  store i32 10, i32* %maxSubLength, align 4
  br label %77

; <label>:77                                      ; preds = %76, %73
  %78 = load i32* %i, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.pb_TimerSet** %1, align 8
  %81 = getelementptr inbounds %struct.pb_TimerSet* %80, i32 0, i32 5
  %82 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %81, i32 0, i64 %79
  %83 = load %struct.pb_SubTimerList** %82, align 8
  %84 = getelementptr inbounds %struct.pb_SubTimerList* %83, i32 0, i32 1
  %85 = load %struct.pb_SubTimer** %84, align 8
  store %struct.pb_SubTimer* %85, %struct.pb_SubTimer** %sub, align 8
  br label %86

; <label>:86                                      ; preds = %89, %77
  %87 = load %struct.pb_SubTimer** %sub, align 8
  %88 = icmp ne %struct.pb_SubTimer* %87, null
  br i1 %88, label %89, label %101

; <label>:89                                      ; preds = %86
  %90 = load i32* %maxSubLength, align 4
  %91 = load %struct.pb_SubTimer** %sub, align 8
  %92 = getelementptr inbounds %struct.pb_SubTimer* %91, i32 0, i32 0
  %93 = load i8** %92, align 8
  %94 = load %struct.pb_SubTimer** %sub, align 8
  %95 = getelementptr inbounds %struct.pb_SubTimer* %94, i32 0, i32 1
  %96 = call double @pb_GetElapsedTime(%struct.pb_Timer* %95)
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str20, i32 0, i32 0), i32 %90, i8* %93, double %96)
  %98 = load %struct.pb_SubTimer** %sub, align 8
  %99 = getelementptr inbounds %struct.pb_SubTimer* %98, i32 0, i32 2
  %100 = load %struct.pb_SubTimer** %99, align 8
  store %struct.pb_SubTimer* %100, %struct.pb_SubTimer** %sub, align 8
  br label %86

; <label>:101                                     ; preds = %86
  br label %102

; <label>:102                                     ; preds = %101, %24
  br label %103

; <label>:103                                     ; preds = %102, %17
  br label %104

; <label>:104                                     ; preds = %103
  %105 = load i32* %i, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %i, align 4
  br label %14

; <label>:107                                     ; preds = %14
  %108 = load %struct.pb_Timer** %t, align 8
  %109 = getelementptr inbounds %struct.pb_Timer* %108, i64 7
  %110 = call double @pb_GetElapsedTime(%struct.pb_Timer* %109)
  %111 = fcmp une double %110, 0.000000e+00
  br i1 %111, label %112, label %117

; <label>:112                                     ; preds = %107
  %113 = load %struct.pb_Timer** %t, align 8
  %114 = getelementptr inbounds %struct.pb_Timer* %113, i64 7
  %115 = call double @pb_GetElapsedTime(%struct.pb_Timer* %114)
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str21, i32 0, i32 0), double %115)
  br label %117

; <label>:117                                     ; preds = %112, %107
  %118 = load i64* %wall_end, align 8
  %119 = load %struct.pb_TimerSet** %1, align 8
  %120 = getelementptr inbounds %struct.pb_TimerSet* %119, i32 0, i32 3
  %121 = load i64* %120, align 8
  %122 = sub i64 %118, %121
  %123 = uitofp i64 %122 to double
  %124 = fdiv double %123, 1.000000e+06
  %125 = fptrunc double %124 to float
  store float %125, float* %walltime, align 4
  %126 = load float* %walltime, align 4
  %127 = fpext float %126 to double
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i32 0, i32 0), double %127)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @pb_DestroyTimerSet(%struct.pb_TimerSet* %timers) #0 {
  %1 = alloca %struct.pb_TimerSet*, align 8
  %event = alloca %struct.pb_async_time_marker_list**, align 8
  %next = alloca %struct.pb_async_time_marker_list**, align 8
  %i = alloca i32, align 4
  %subtimer = alloca %struct.pb_SubTimer*, align 8
  %prev = alloca %struct.pb_SubTimer*, align 8
  store %struct.pb_TimerSet* %timers, %struct.pb_TimerSet** %1, align 8
  %2 = load %struct.pb_TimerSet** %1, align 8
  %3 = getelementptr inbounds %struct.pb_TimerSet* %2, i32 0, i32 1
  store %struct.pb_async_time_marker_list** %3, %struct.pb_async_time_marker_list*** %event, align 8
  br label %4

; <label>:4                                       ; preds = %8, %0
  %5 = load %struct.pb_async_time_marker_list*** %event, align 8
  %6 = load %struct.pb_async_time_marker_list** %5, align 8
  %7 = icmp ne %struct.pb_async_time_marker_list* %6, null
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %4
  %9 = load %struct.pb_async_time_marker_list*** %event, align 8
  %10 = load %struct.pb_async_time_marker_list** %9, align 8
  %11 = getelementptr inbounds %struct.pb_async_time_marker_list* %10, i32 0, i32 3
  store %struct.pb_async_time_marker_list** %11, %struct.pb_async_time_marker_list*** %next, align 8
  %12 = load %struct.pb_async_time_marker_list*** %event, align 8
  %13 = load %struct.pb_async_time_marker_list** %12, align 8
  %14 = bitcast %struct.pb_async_time_marker_list* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %struct.pb_async_time_marker_list*** %event, align 8
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %15, align 8
  %16 = load %struct.pb_async_time_marker_list*** %next, align 8
  store %struct.pb_async_time_marker_list** %16, %struct.pb_async_time_marker_list*** %event, align 8
  br label %4

; <label>:17                                      ; preds = %4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %60, %17
  %19 = load i32* %i, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %63

; <label>:21                                      ; preds = %18
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.pb_TimerSet** %1, align 8
  %25 = getelementptr inbounds %struct.pb_TimerSet* %24, i32 0, i32 5
  %26 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %25, i32 0, i64 %23
  %27 = load %struct.pb_SubTimerList** %26, align 8
  %28 = icmp ne %struct.pb_SubTimerList* %27, null
  br i1 %28, label %29, label %59

; <label>:29                                      ; preds = %21
  %30 = load i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.pb_TimerSet** %1, align 8
  %33 = getelementptr inbounds %struct.pb_TimerSet* %32, i32 0, i32 5
  %34 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %33, i32 0, i64 %31
  %35 = load %struct.pb_SubTimerList** %34, align 8
  %36 = getelementptr inbounds %struct.pb_SubTimerList* %35, i32 0, i32 1
  %37 = load %struct.pb_SubTimer** %36, align 8
  store %struct.pb_SubTimer* %37, %struct.pb_SubTimer** %subtimer, align 8
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %prev, align 8
  br label %38

; <label>:38                                      ; preds = %41, %29
  %39 = load %struct.pb_SubTimer** %subtimer, align 8
  %40 = icmp ne %struct.pb_SubTimer* %39, null
  br i1 %40, label %41, label %51

; <label>:41                                      ; preds = %38
  %42 = load %struct.pb_SubTimer** %subtimer, align 8
  %43 = getelementptr inbounds %struct.pb_SubTimer* %42, i32 0, i32 0
  %44 = load i8** %43, align 8
  call void @free(i8* %44) #4
  %45 = load %struct.pb_SubTimer** %subtimer, align 8
  store %struct.pb_SubTimer* %45, %struct.pb_SubTimer** %prev, align 8
  %46 = load %struct.pb_SubTimer** %subtimer, align 8
  %47 = getelementptr inbounds %struct.pb_SubTimer* %46, i32 0, i32 2
  %48 = load %struct.pb_SubTimer** %47, align 8
  store %struct.pb_SubTimer* %48, %struct.pb_SubTimer** %subtimer, align 8
  %49 = load %struct.pb_SubTimer** %prev, align 8
  %50 = bitcast %struct.pb_SubTimer* %49 to i8*
  call void @free(i8* %50) #4
  br label %38

; <label>:51                                      ; preds = %38
  %52 = load i32* %i, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.pb_TimerSet** %1, align 8
  %55 = getelementptr inbounds %struct.pb_TimerSet* %54, i32 0, i32 5
  %56 = getelementptr inbounds [8 x %struct.pb_SubTimerList*]* %55, i32 0, i64 %53
  %57 = load %struct.pb_SubTimerList** %56, align 8
  %58 = bitcast %struct.pb_SubTimerList* %57 to i8*
  call void @free(i8* %58) #4
  br label %59

; <label>:59                                      ; preds = %51, %21
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32* %i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4
  br label %18

; <label>:63                                      ; preds = %18
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @initialize_argparse(%struct.argparse* %ap, i32 %argc, i8** %argv) #0 {
  %1 = alloca %struct.argparse*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load %struct.argparse** %1, align 8
  %6 = getelementptr inbounds %struct.argparse* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.argparse** %1, align 8
  %8 = getelementptr inbounds %struct.argparse* %7, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = load i8*** %3, align 8
  %10 = load %struct.argparse** %1, align 8
  %11 = getelementptr inbounds %struct.argparse* %10, i32 0, i32 1
  store i8** %9, i8*** %11, align 8
  %12 = load %struct.argparse** %1, align 8
  %13 = getelementptr inbounds %struct.argparse* %12, i32 0, i32 4
  store i8** %9, i8*** %13, align 8
  %14 = load %struct.argparse** %1, align 8
  %15 = getelementptr inbounds %struct.argparse* %14, i32 0, i32 3
  store i8** %9, i8*** %15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_end_of_arguments(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  %2 = load %struct.argparse** %1, align 8
  %3 = getelementptr inbounds %struct.argparse* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = load %struct.argparse** %1, align 8
  %6 = getelementptr inbounds %struct.argparse* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = icmp eq i32 %4, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i8* @get_argument(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  %2 = load %struct.argparse** %1, align 8
  %3 = getelementptr inbounds %struct.argparse* %2, i32 0, i32 3
  %4 = load i8*** %3, align 8
  %5 = load i8** %4, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal void @delete_argument(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  %2 = load %struct.argparse** %1, align 8
  %3 = getelementptr inbounds %struct.argparse* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = load %struct.argparse** %1, align 8
  %6 = getelementptr inbounds %struct.argparse* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = icmp sge i32 %4, %7
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8]* @.str24, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %9, %0
  %13 = load %struct.argparse** %1, align 8
  %14 = getelementptr inbounds %struct.argparse* %13, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.argparse** %1, align 8
  %18 = getelementptr inbounds %struct.argparse* %17, i32 0, i32 3
  %19 = load i8*** %18, align 8
  %20 = getelementptr inbounds i8** %19, i32 1
  store i8** %20, i8*** %18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @consume_argument(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  %ret = alloca i8*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  %2 = load %struct.argparse** %1, align 8
  %3 = call i8* @get_argument(%struct.argparse* %2)
  store i8* %3, i8** %ret, align 8
  %4 = load %struct.argparse** %1, align 8
  call void @delete_argument(%struct.argparse* %4)
  %5 = load i8** %ret, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8** @read_string_array(i8* %in) #0 {
  %1 = alloca i8*, align 8
  %ret = alloca i8**, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %substring = alloca i8*, align 8
  %substring_end = alloca i8*, align 8
  %substring_length = alloca i32, align 4
  store i8* %in, i8** %1, align 8
  store i32 1, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %21, %0
  %3 = load i32* %i, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i64 %4
  %7 = load i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %24

; <label>:9                                       ; preds = %2
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8** %1, align 8
  %13 = getelementptr inbounds i8* %12, i64 %11
  %14 = load i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 44
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %9
  %18 = load i32* %count, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %count, align 4
  br label %20

; <label>:20                                      ; preds = %17, %9
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %2

; <label>:24                                      ; preds = %2
  %25 = load i32* %count, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = call noalias i8* @malloc(i64 %28) #4
  %30 = bitcast i8* %29 to i8**
  store i8** %30, i8*** %ret, align 8
  %31 = load i8** %1, align 8
  store i8* %31, i8** %substring, align 8
  store i32 0, i32* %i, align 4
  br label %32

; <label>:32                                      ; preds = %85, %24
  %33 = load i32* %i, align 4
  %34 = load i32* %count, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %88

; <label>:36                                      ; preds = %32
  %37 = load i8** %substring, align 8
  store i8* %37, i8** %substring_end, align 8
  br label %38

; <label>:38                                      ; preds = %49, %36
  %39 = load i8** %substring_end, align 8
  %40 = load i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 44
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %38
  %44 = load i8** %substring_end, align 8
  %45 = load i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %43
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i8** %substring_end, align 8
  %51 = getelementptr inbounds i8* %50, i32 1
  store i8* %51, i8** %substring_end, align 8
  br label %38

; <label>:52                                      ; preds = %43, %38
  %53 = load i8** %substring_end, align 8
  %54 = load i8** %substring, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %substring_length, align 4
  %59 = load i32* %substring_length, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = call noalias i8* @malloc(i64 %61) #4
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load i8*** %ret, align 8
  %66 = getelementptr inbounds i8** %65, i64 %64
  store i8* %62, i8** %66, align 8
  %67 = load i32* %i, align 4
  %68 = sext i32 %67 to i64
  %69 = load i8*** %ret, align 8
  %70 = getelementptr inbounds i8** %69, i64 %68
  %71 = load i8** %70, align 8
  %72 = load i8** %substring, align 8
  %73 = load i32* %substring_length, align 4
  %74 = sext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 %74, i32 1, i1 false)
  %75 = load i32* %substring_length, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = load i8*** %ret, align 8
  %80 = getelementptr inbounds i8** %79, i64 %78
  %81 = load i8** %80, align 8
  %82 = getelementptr inbounds i8* %81, i64 %76
  store i8 0, i8* %82, align 1
  %83 = load i8** %substring_end, align 8
  %84 = getelementptr inbounds i8* %83, i64 1
  store i8* %84, i8** %substring, align 8
  br label %85

; <label>:85                                      ; preds = %52
  %86 = load i32* %i, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %i, align 4
  br label %32

; <label>:88                                      ; preds = %32
  %89 = load i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = load i8*** %ret, align 8
  %92 = getelementptr inbounds i8** %91, i64 %90
  store i8* null, i8** %92, align 8
  %93 = load i8*** %ret, align 8
  ret i8** %93
}

; Function Attrs: nounwind uwtable
define internal void @next_argument(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  %2 = load %struct.argparse** %1, align 8
  %3 = getelementptr inbounds %struct.argparse* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = load %struct.argparse** %1, align 8
  %6 = getelementptr inbounds %struct.argparse* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  %8 = icmp sge i32 %4, %7
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %9, %0
  %13 = load %struct.argparse** %1, align 8
  %14 = getelementptr inbounds %struct.argparse* %13, i32 0, i32 3
  %15 = load i8*** %14, align 8
  %16 = getelementptr inbounds i8** %15, i32 1
  store i8** %16, i8*** %14, align 8
  %17 = load i8** %15, align 8
  %18 = load %struct.argparse** %1, align 8
  %19 = getelementptr inbounds %struct.argparse* %18, i32 0, i32 4
  %20 = load i8*** %19, align 8
  %21 = getelementptr inbounds i8** %20, i32 1
  store i8** %21, i8*** %19, align 8
  store i8* %17, i8** %20, align 8
  %22 = load %struct.argparse** %1, align 8
  %23 = getelementptr inbounds %struct.argparse* %22, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalize_argparse(%struct.argparse* %ap) #0 {
  %1 = alloca %struct.argparse*, align 8
  store %struct.argparse* %ap, %struct.argparse** %1, align 8
  br label %2

; <label>:2                                       ; preds = %20, %0
  %3 = load %struct.argparse** %1, align 8
  %4 = getelementptr inbounds %struct.argparse* %3, i32 0, i32 2
  %5 = load i32* %4, align 4
  %6 = load %struct.argparse** %1, align 8
  %7 = getelementptr inbounds %struct.argparse* %6, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %25

; <label>:10                                      ; preds = %2
  %11 = load %struct.argparse** %1, align 8
  %12 = getelementptr inbounds %struct.argparse* %11, i32 0, i32 3
  %13 = load i8*** %12, align 8
  %14 = getelementptr inbounds i8** %13, i32 1
  store i8** %14, i8*** %12, align 8
  %15 = load i8** %13, align 8
  %16 = load %struct.argparse** %1, align 8
  %17 = getelementptr inbounds %struct.argparse* %16, i32 0, i32 4
  %18 = load i8*** %17, align 8
  %19 = getelementptr inbounds i8** %18, i32 1
  store i8** %19, i8*** %17, align 8
  store i8* %15, i8** %18, align 8
  br label %20

; <label>:20                                      ; preds = %10
  %21 = load %struct.argparse** %1, align 8
  %22 = getelementptr inbounds %struct.argparse* %21, i32 0, i32 2
  %23 = load i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %2

; <label>:25                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_string_array(i8** %string_array) #0 {
  %1 = alloca i8**, align 8
  %p = alloca i8**, align 8
  store i8** %string_array, i8*** %1, align 8
  %2 = load i8*** %1, align 8
  %3 = icmp ne i8** %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %20

; <label>:5                                       ; preds = %0
  %6 = load i8*** %1, align 8
  store i8** %6, i8*** %p, align 8
  br label %7

; <label>:7                                       ; preds = %14, %5
  %8 = load i8*** %p, align 8
  %9 = load i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %7
  %12 = load i8*** %p, align 8
  %13 = load i8** %12, align 8
  call void @free(i8* %13) #4
  br label %14

; <label>:14                                      ; preds = %11
  %15 = load i8*** %p, align 8
  %16 = getelementptr inbounds i8** %15, i32 1
  store i8** %16, i8*** %p, align 8
  br label %7

; <label>:17                                      ; preds = %7
  %18 = load i8*** %1, align 8
  %19 = bitcast i8** %18 to i8*
  call void @free(i8* %19) #4
  br label %20

; <label>:20                                      ; preds = %17, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @accumulate_time(i64* %accum, i64 %start, i64 %end) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64* %accum, i64** %1, align 8
  store i64 %start, i64* %2, align 8
  store i64 %end, i64* %3, align 8
  %4 = load i64* %3, align 8
  %5 = load i64* %2, align 8
  %6 = sub i64 %4, %5
  %7 = load i64** %1, align 8
  %8 = load i64* %7, align 8
  %9 = add i64 %8, %6
  store i64 %9, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @get_time() #0 {
  %tv = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #4
  %2 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = mul nsw i64 %3, 1000000
  %5 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = add nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define void @outputData(i8* %fName, float* %h_A0, i32 %nx, i32 %ny, i32 %nz) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %fid = alloca %struct._IO_FILE*, align 8
  %tmp32 = alloca i32, align 4
  store i8* %fName, i8** %1, align 8
  store float* %h_A0, float** %2, align 8
  store i32 %nx, i32* %3, align 4
  store i32 %ny, i32* %4, align 4
  store i32 %nz, i32* %5, align 4
  %6 = load i8** %1, align 8
  %7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str25, i32 0, i32 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fid, align 8
  %8 = load %struct._IO_FILE** %fid, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([25 x i8]* @.str126, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

; <label>:13                                      ; preds = %0
  %14 = load i32* %3, align 4
  %15 = load i32* %4, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32* %5, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %tmp32, align 4
  %19 = bitcast i32* %tmp32 to i8*
  %20 = load %struct._IO_FILE** %fid, align 8
  %21 = call i64 @fwrite(i8* %19, i64 4, i64 1, %struct._IO_FILE* %20)
  %22 = load float** %2, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load i32* %tmp32, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct._IO_FILE** %fid, align 8
  %27 = call i64 @fwrite(i8* %23, i64 4, i64 %25, %struct._IO_FILE* %26)
  %28 = load %struct._IO_FILE** %fid, align 8
  %29 = call i32 @fclose(%struct._IO_FILE* %28)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @cpu_stencil(float %c0, float %c1, float* %A0, float* %Anext, i32 %nx, i32 %ny, i32 %nz) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float %c0, float* %1, align 4
  store float %c1, float* %2, align 4
  store float* %A0, float** %3, align 8
  store float* %Anext, float** %4, align 8
  store i32 %nx, i32* %5, align 4
  store i32 %ny, i32* %6, align 4
  store i32 %nz, i32* %7, align 4
  store i32 1, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %153, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %156

; <label>:13                                      ; preds = %8
  store i32 1, i32* %j, align 4
  br label %14

; <label>:14                                      ; preds = %149, %13
  %15 = load i32* %j, align 4
  %16 = load i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %152

; <label>:19                                      ; preds = %14
  store i32 1, i32* %k, align 4
  br label %20

; <label>:20                                      ; preds = %145, %19
  %21 = load i32* %k, align 4
  %22 = load i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %148

; <label>:25                                      ; preds = %20
  %26 = load i32* %i, align 4
  %27 = load i32* %5, align 4
  %28 = load i32* %j, align 4
  %29 = load i32* %6, align 4
  %30 = load i32* %k, align 4
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %29, %31
  %33 = add nsw i32 %28, %32
  %34 = mul nsw i32 %27, %33
  %35 = add nsw i32 %26, %34
  %36 = sext i32 %35 to i64
  %37 = load float** %3, align 8
  %38 = getelementptr inbounds float* %37, i64 %36
  %39 = load float* %38, align 4
  %40 = load i32* %i, align 4
  %41 = load i32* %5, align 4
  %42 = load i32* %j, align 4
  %43 = load i32* %6, align 4
  %44 = load i32* %k, align 4
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 %43, %45
  %47 = add nsw i32 %42, %46
  %48 = mul nsw i32 %41, %47
  %49 = add nsw i32 %40, %48
  %50 = sext i32 %49 to i64
  %51 = load float** %3, align 8
  %52 = getelementptr inbounds float* %51, i64 %50
  %53 = load float* %52, align 4
  %54 = fadd float %39, %53
  %55 = load i32* %i, align 4
  %56 = load i32* %5, align 4
  %57 = load i32* %j, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32* %6, align 4
  %60 = load i32* %k, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  %63 = mul nsw i32 %56, %62
  %64 = add nsw i32 %55, %63
  %65 = sext i32 %64 to i64
  %66 = load float** %3, align 8
  %67 = getelementptr inbounds float* %66, i64 %65
  %68 = load float* %67, align 4
  %69 = fadd float %54, %68
  %70 = load i32* %i, align 4
  %71 = load i32* %5, align 4
  %72 = load i32* %j, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32* %6, align 4
  %75 = load i32* %k, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = mul nsw i32 %71, %77
  %79 = add nsw i32 %70, %78
  %80 = sext i32 %79 to i64
  %81 = load float** %3, align 8
  %82 = getelementptr inbounds float* %81, i64 %80
  %83 = load float* %82, align 4
  %84 = fadd float %69, %83
  %85 = load i32* %i, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32* %5, align 4
  %88 = load i32* %j, align 4
  %89 = load i32* %6, align 4
  %90 = load i32* %k, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  %93 = mul nsw i32 %87, %92
  %94 = add nsw i32 %86, %93
  %95 = sext i32 %94 to i64
  %96 = load float** %3, align 8
  %97 = getelementptr inbounds float* %96, i64 %95
  %98 = load float* %97, align 4
  %99 = fadd float %84, %98
  %100 = load i32* %i, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32* %5, align 4
  %103 = load i32* %j, align 4
  %104 = load i32* %6, align 4
  %105 = load i32* %k, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = mul nsw i32 %102, %107
  %109 = add nsw i32 %101, %108
  %110 = sext i32 %109 to i64
  %111 = load float** %3, align 8
  %112 = getelementptr inbounds float* %111, i64 %110
  %113 = load float* %112, align 4
  %114 = fadd float %99, %113
  %115 = load float* %2, align 4
  %116 = fmul float %114, %115
  %117 = load i32* %i, align 4
  %118 = load i32* %5, align 4
  %119 = load i32* %j, align 4
  %120 = load i32* %6, align 4
  %121 = load i32* %k, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %119, %122
  %124 = mul nsw i32 %118, %123
  %125 = add nsw i32 %117, %124
  %126 = sext i32 %125 to i64
  %127 = load float** %3, align 8
  %128 = getelementptr inbounds float* %127, i64 %126
  %129 = load float* %128, align 4
  %130 = load float* %1, align 4
  %131 = fmul float %129, %130
  %132 = fsub float %116, %131
  %133 = load i32* %i, align 4
  %134 = load i32* %5, align 4
  %135 = load i32* %j, align 4
  %136 = load i32* %6, align 4
  %137 = load i32* %k, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = mul nsw i32 %134, %139
  %141 = add nsw i32 %133, %140
  %142 = sext i32 %141 to i64
  %143 = load float** %4, align 8
  %144 = getelementptr inbounds float* %143, i64 %142
  store float %132, float* %144, align 4
  br label %145

; <label>:145                                     ; preds = %25
  %146 = load i32* %k, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %k, align 4
  br label %20

; <label>:148                                     ; preds = %20
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load i32* %j, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %j, align 4
  br label %14

; <label>:152                                     ; preds = %14
  br label %153

; <label>:153                                     ; preds = %152
  %154 = load i32* %i, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %i, align 4
  br label %8

; <label>:156                                     ; preds = %8
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
