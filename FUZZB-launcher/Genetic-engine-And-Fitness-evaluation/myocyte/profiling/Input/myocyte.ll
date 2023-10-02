; ModuleID = 'myocyte.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"The file was not created/opened for writing\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"The file was not opened for reading\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"ERROR: %d is the incorrect number of arguments, the number of arguments must be 4\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"ERROR: %d is the incorrect end of simulation interval, use numbers > 0\0A\00", align 1
@.str9 = private unnamed_addr constant [79 x i8] c"ERROR: %d is the incorrect number of instances of simulation, use numbers > 0\0A\00", align 1
@.str10 = private unnamed_addr constant [74 x i8] c"ERROR: %d is the incorrect mode, it should be omitted or equal to 0 or 1\0A\00", align 1
@.str11 = private unnamed_addr constant [63 x i8] c"ERROR: %d is the incorrect number of threads, use numbers > 0\0A\00", align 1
@.str12 = private unnamed_addr constant [119 x i8] c"ERROR: trying to allocate more than 1.0GB of memory, decrease workload and span parameters or change memory parameter\0A\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"./input-data/y.txt\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"./input-data/params.txt\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"WORKLOAD %d:\0A\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"\09TIME %d:\0A\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"\09\09y[%d][%d][%d]=%13.10f\0A\00", align 1
@embedded_fehlberg_7_8.c_1_11 = internal constant float 0x3FA8FD8FE0000000, align 4
@embedded_fehlberg_7_8.c6 = internal constant float 0x3FD4B94BA0000000, align 4
@embedded_fehlberg_7_8.c_7_8 = internal constant float 0x3FD0750760000000, align 4
@embedded_fehlberg_7_8.c_9_10 = internal constant float 0x3FA0750760000000, align 4
@embedded_fehlberg_7_8.a2 = internal constant float 0x3FB2F684C0000000, align 4
@embedded_fehlberg_7_8.a3 = internal constant float 0x3FBC71C720000000, align 4
@embedded_fehlberg_7_8.a4 = internal constant float 0x3FC5555560000000, align 4
@embedded_fehlberg_7_8.a5 = internal constant float 0x3FDAAAAAA0000000, align 4
@embedded_fehlberg_7_8.a6 = internal constant float 5.000000e-01, align 4
@embedded_fehlberg_7_8.a7 = internal constant float 0x3FEAAAAAA0000000, align 4
@embedded_fehlberg_7_8.a8 = internal constant float 0x3FC5555560000000, align 4
@embedded_fehlberg_7_8.a9 = internal constant float 0x3FE5555560000000, align 4
@embedded_fehlberg_7_8.a10 = internal constant float 0x3FD5555560000000, align 4
@embedded_fehlberg_7_8.b31 = internal constant float 0x3F9C71C720000000, align 4
@embedded_fehlberg_7_8.b32 = internal constant float 0x3FB5555560000000, align 4
@embedded_fehlberg_7_8.b41 = internal constant float 0x3FA5555560000000, align 4
@embedded_fehlberg_7_8.b43 = internal constant float 1.250000e-01, align 4
@embedded_fehlberg_7_8.b51 = internal constant float 0x3FDAAAAAA0000000, align 4
@embedded_fehlberg_7_8.b53 = internal constant float -1.562500e+00, align 4
@embedded_fehlberg_7_8.b54 = internal constant float 1.562500e+00, align 4
@embedded_fehlberg_7_8.b61 = internal constant float 0x3FA99999A0000000, align 4
@embedded_fehlberg_7_8.b64 = internal constant float 2.500000e-01, align 4
@embedded_fehlberg_7_8.b65 = internal constant float 0x3FC99999A0000000, align 4
@embedded_fehlberg_7_8.b71 = internal constant float 0xBFCDA12F60000000, align 4
@embedded_fehlberg_7_8.b74 = internal constant float 0x3FF284BDA0000000, align 4
@embedded_fehlberg_7_8.b75 = internal constant float 0xC003425EE0000000, align 4
@embedded_fehlberg_7_8.b76 = internal constant float 0x400284BDA0000000, align 4
@embedded_fehlberg_7_8.b81 = internal constant float 0x3FBA740DA0000000, align 4
@embedded_fehlberg_7_8.b85 = internal constant float 0x3FD159E260000000, align 4
@embedded_fehlberg_7_8.b86 = internal constant float 0xBFCC71C720000000, align 4
@embedded_fehlberg_7_8.b87 = internal constant float 0x3F8D950C80000000, align 4
@embedded_fehlberg_7_8.b91 = internal constant float 2.000000e+00, align 4
@embedded_fehlberg_7_8.b94 = internal constant float 0xC021AAAAA0000000, align 4
@embedded_fehlberg_7_8.b95 = internal constant float 0x402F49F4A0000000, align 4
@embedded_fehlberg_7_8.b96 = internal constant float 0xC027C71C80000000, align 4
@embedded_fehlberg_7_8.b97 = internal constant float 0x3FE7D27D20000000, align 4
@embedded_fehlberg_7_8.b98 = internal constant float 3.000000e+00, align 4
@embedded_fehlberg_7_8.b10_1 = internal constant float 0xBFEAF684C0000000, align 4
@embedded_fehlberg_7_8.b10_4 = internal constant float 0x3FCB425EE0000000, align 4
@embedded_fehlberg_7_8.b10_5 = internal constant float 0xC01CEB2400000000, align 4
@embedded_fehlberg_7_8.b10_6 = internal constant float 0x4017097B40000000, align 4
@embedded_fehlberg_7_8.b10_7 = internal constant float 0xBFD4444440000000, align 4
@embedded_fehlberg_7_8.b10_8 = internal constant float 0x4006AAAAA0000000, align 4
@embedded_fehlberg_7_8.b10_9 = internal constant float 0xBFB5555560000000, align 4
@embedded_fehlberg_7_8.b11_1 = internal constant float 0x3FE29959A0000000, align 4
@embedded_fehlberg_7_8.b11_4 = internal constant float 0xC000A25760000000, align 4
@embedded_fehlberg_7_8.b11_5 = internal constant float 0x40118B9D20000000, align 4
@embedded_fehlberg_7_8.b11_6 = internal constant float 0xC00D5DA8A0000000, align 4
@embedded_fehlberg_7_8.b11_7 = internal constant float 0x3FE0A5D680000000, align 4
@embedded_fehlberg_7_8.b11_8 = internal constant float 0x3FE18F9C20000000, align 4
@embedded_fehlberg_7_8.b11_9 = internal constant float 0x3FD18F9C20000000, align 4
@embedded_fehlberg_7_8.b11_10 = internal constant float 0x3FDC18F9C0000000, align 4
@embedded_fehlberg_7_8.b12_1 = internal constant float 0x3F8DF881E0000000, align 4
@embedded_fehlberg_7_8.b12_6 = internal constant float 0xBFC2BB5120000000, align 4
@embedded_fehlberg_7_8.b12_7 = internal constant float 0xBF8DF881E0000000, align 4
@embedded_fehlberg_7_8.b12_8 = internal constant float 0xBFB2BB5120000000, align 4
@embedded_fehlberg_7_8.b12_9 = internal constant float 0x3FB2BB5120000000, align 4
@embedded_fehlberg_7_8.b12_10 = internal constant float 0x3FC2BB5120000000, align 4
@embedded_fehlberg_7_8.b13_1 = internal constant float 0xBFDBBD10C0000000, align 4
@embedded_fehlberg_7_8.b13_4 = internal constant float 0xC000A25760000000, align 4
@embedded_fehlberg_7_8.b13_5 = internal constant float 0x40118B9D20000000, align 4
@embedded_fehlberg_7_8.b13_6 = internal constant float 0xC00C31F380000000, align 4
@embedded_fehlberg_7_8.b13_7 = internal constant float 0x3FE11DB8A0000000, align 4
@embedded_fehlberg_7_8.b13_8 = internal constant float 0x3FE3E70640000000, align 4
@embedded_fehlberg_7_8.b13_9 = internal constant float 0x3FC9C18FA0000000, align 4
@embedded_fehlberg_7_8.b13_10 = internal constant float 0x3FD2BB5120000000, align 4
@embedded_fehlberg_7_8.err_factor = internal constant float 0xBFA8FD8FE0000000, align 4

; Function Attrs: nounwind uwtable
define i64 @get_time() #0 {
  %tv = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #5
  %2 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = mul nsw i64 %3, 1000000
  %5 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = add nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define void @write(i8* %filename, float* %input, i32 %data_rows, i32 %data_cols, i32 %major, i32 %data_range) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %fid = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %filename, i8** %1, align 8
  store float* %input, float** %2, align 8
  store i32 %data_rows, i32* %3, align 4
  store i32 %data_cols, i32* %4, align 4
  store i32 %major, i32* %5, align 4
  store i32 %data_range, i32* %6, align 4
  %7 = load i8** %1, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %8, %struct._IO_FILE** %fid, align 8
  %9 = load %struct._IO_FILE** %fid, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str1, i32 0, i32 0))
  br label %85

; <label>:13                                      ; preds = %0
  %14 = load i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %49

; <label>:16                                      ; preds = %13
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %45, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

; <label>:21                                      ; preds = %17
  store i32 0, i32* %j, align 4
  br label %22

; <label>:22                                      ; preds = %39, %21
  %23 = load i32* %j, align 4
  %24 = load i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

; <label>:26                                      ; preds = %22
  %27 = load %struct._IO_FILE** %fid, align 8
  %28 = load i32* %i, align 4
  %29 = load i32* %4, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32* %j, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load float** %2, align 8
  %35 = getelementptr inbounds float* %34, i64 %33
  %36 = load float* %35, align 4
  %37 = fpext float %36 to double
  %38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %37)
  br label %39

; <label>:39                                      ; preds = %26
  %40 = load i32* %j, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %j, align 4
  br label %22

; <label>:42                                      ; preds = %22
  %43 = load %struct._IO_FILE** %fid, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  br label %45

; <label>:45                                      ; preds = %42
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %17

; <label>:48                                      ; preds = %17
  br label %82

; <label>:49                                      ; preds = %13
  store i32 0, i32* %i, align 4
  br label %50

; <label>:50                                      ; preds = %78, %49
  %51 = load i32* %i, align 4
  %52 = load i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %81

; <label>:54                                      ; preds = %50
  store i32 0, i32* %j, align 4
  br label %55

; <label>:55                                      ; preds = %72, %54
  %56 = load i32* %j, align 4
  %57 = load i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %75

; <label>:59                                      ; preds = %55
  %60 = load %struct._IO_FILE** %fid, align 8
  %61 = load i32* %j, align 4
  %62 = load i32* %3, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32* %i, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = load float** %2, align 8
  %68 = getelementptr inbounds float* %67, i64 %66
  %69 = load float* %68, align 4
  %70 = fpext float %69 to double
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), double %70)
  br label %72

; <label>:72                                      ; preds = %59
  %73 = load i32* %j, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %j, align 4
  br label %55

; <label>:75                                      ; preds = %55
  %76 = load %struct._IO_FILE** %fid, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  br label %78

; <label>:78                                      ; preds = %75
  %79 = load i32* %i, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %i, align 4
  br label %50

; <label>:81                                      ; preds = %50
  br label %82

; <label>:82                                      ; preds = %81, %48
  %83 = load %struct._IO_FILE** %fid, align 8
  %84 = call i32 @fclose(%struct._IO_FILE* %83)
  br label %85

; <label>:85                                      ; preds = %82, %11
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @read(i8* %filename, float* %input, i32 %data_rows, i32 %data_cols, i32 %major) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %fid = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8, align 1
  %temp = alloca float, align 4
  store i8* %filename, i8** %1, align 8
  store float* %input, float** %2, align 8
  store i32 %data_rows, i32* %3, align 4
  store i32 %data_cols, i32* %4, align 4
  store i32 %major, i32* %5, align 4
  %6 = load i8** %1, align 8
  %7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fid, align 8
  %8 = load %struct._IO_FILE** %fid, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str5, i32 0, i32 0))
  br label %78

; <label>:12                                      ; preds = %0
  %13 = load i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

; <label>:15                                      ; preds = %12
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %41, %15
  %17 = load i32* %i, align 4
  %18 = load i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

; <label>:20                                      ; preds = %16
  store i32 0, i32* %j, align 4
  br label %21

; <label>:21                                      ; preds = %37, %20
  %22 = load i32* %j, align 4
  %23 = load i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

; <label>:25                                      ; preds = %21
  %26 = load %struct._IO_FILE** %fid, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), float* %temp)
  %28 = load float* %temp, align 4
  %29 = load i32* %i, align 4
  %30 = load i32* %4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32* %j, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load float** %2, align 8
  %36 = getelementptr inbounds float* %35, i64 %34
  store float %28, float* %36, align 4
  br label %37

; <label>:37                                      ; preds = %25
  %38 = load i32* %j, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %j, align 4
  br label %21

; <label>:40                                      ; preds = %21
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %16

; <label>:44                                      ; preds = %16
  br label %75

; <label>:45                                      ; preds = %12
  store i32 0, i32* %i, align 4
  br label %46

; <label>:46                                      ; preds = %71, %45
  %47 = load i32* %i, align 4
  %48 = load i32* %3, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

; <label>:50                                      ; preds = %46
  store i32 0, i32* %j, align 4
  br label %51

; <label>:51                                      ; preds = %67, %50
  %52 = load i32* %j, align 4
  %53 = load i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

; <label>:55                                      ; preds = %51
  %56 = load %struct._IO_FILE** %fid, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), float* %temp)
  %58 = load float* %temp, align 4
  %59 = load i32* %j, align 4
  %60 = load i32* %3, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32* %i, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load float** %2, align 8
  %66 = getelementptr inbounds float* %65, i64 %64
  store float %58, float* %66, align 4
  br label %67

; <label>:67                                      ; preds = %55
  %68 = load i32* %j, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %j, align 4
  br label %51

; <label>:70                                      ; preds = %51
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %46

; <label>:74                                      ; preds = %46
  br label %75

; <label>:75                                      ; preds = %74, %44
  %76 = load %struct._IO_FILE** %fid, align 8
  %77 = call i32 @fclose(%struct._IO_FILE* %76)
  br label %78

; <label>:78                                      ; preds = %75, %10
  ret void
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define float @cam(float %timeinst, float* %initvalu, i32 %initvalu_offset, float* %parameter, i32 %parameter_offset, float* %finavalu, float %Ca) #0 {
  %1 = alloca float, align 4
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %JCa = alloca float, align 4
  %offset_1 = alloca i32, align 4
  %offset_2 = alloca i32, align 4
  %offset_3 = alloca i32, align 4
  %offset_4 = alloca i32, align 4
  %offset_5 = alloca i32, align 4
  %offset_6 = alloca i32, align 4
  %offset_7 = alloca i32, align 4
  %offset_8 = alloca i32, align 4
  %offset_9 = alloca i32, align 4
  %offset_10 = alloca i32, align 4
  %offset_11 = alloca i32, align 4
  %offset_12 = alloca i32, align 4
  %offset_13 = alloca i32, align 4
  %offset_14 = alloca i32, align 4
  %offset_15 = alloca i32, align 4
  %parameter_offset_1 = alloca i32, align 4
  %parameter_offset_2 = alloca i32, align 4
  %parameter_offset_3 = alloca i32, align 4
  %parameter_offset_4 = alloca i32, align 4
  %parameter_offset_5 = alloca i32, align 4
  %CaM = alloca float, align 4
  %Ca2CaM = alloca float, align 4
  %Ca4CaM = alloca float, align 4
  %CaMB = alloca float, align 4
  %Ca2CaMB = alloca float, align 4
  %Ca4CaMB = alloca float, align 4
  %Pb2 = alloca float, align 4
  %Pb = alloca float, align 4
  %Pt = alloca float, align 4
  %Pt2 = alloca float, align 4
  %Pa = alloca float, align 4
  %Ca4CaN = alloca float, align 4
  %CaMCa4CaN = alloca float, align 4
  %Ca2CaMCa4CaN = alloca float, align 4
  %Ca4CaMCa4CaN = alloca float, align 4
  %CaMtot = alloca float, align 4
  %Btot = alloca float, align 4
  %CaMKIItot = alloca float, align 4
  %CaNtot = alloca float, align 4
  %PP1tot = alloca float, align 4
  %K = alloca float, align 4
  %Mg = alloca float, align 4
  %Kd02 = alloca float, align 4
  %Kd24 = alloca float, align 4
  %k20 = alloca float, align 4
  %k02 = alloca float, align 4
  %k42 = alloca float, align 4
  %k24 = alloca float, align 4
  %k0Boff = alloca float, align 4
  %k0Bon = alloca float, align 4
  %k2Boff = alloca float, align 4
  %k2Bon = alloca float, align 4
  %k4Boff = alloca float, align 4
  %k4Bon = alloca float, align 4
  %k20B = alloca float, align 4
  %k02B = alloca float, align 4
  %k42B = alloca float, align 4
  %k24B = alloca float, align 4
  %kbi = alloca float, align 4
  %kib = alloca float, align 4
  %kpp1 = alloca float, align 4
  %Kmpp1 = alloca float, align 4
  %kib2 = alloca float, align 4
  %kb2i = alloca float, align 4
  %kb24 = alloca float, align 4
  %kb42 = alloca float, align 4
  %kta = alloca float, align 4
  %kat = alloca float, align 4
  %kt42 = alloca float, align 4
  %kt24 = alloca float, align 4
  %kat2 = alloca float, align 4
  %kt2a = alloca float, align 4
  %kcanCaoff = alloca float, align 4
  %kcanCaon = alloca float, align 4
  %kcanCaM4on = alloca float, align 4
  %kcanCaM4off = alloca float, align 4
  %kcanCaM2on = alloca float, align 4
  %kcanCaM2off = alloca float, align 4
  %kcanCaM0on = alloca float, align 4
  %kcanCaM0off = alloca float, align 4
  %k02can = alloca float, align 4
  %k20can = alloca float, align 4
  %k24can = alloca float, align 4
  %k42can = alloca float, align 4
  %rcn02 = alloca float, align 4
  %rcn24 = alloca float, align 4
  %B = alloca float, align 4
  %rcn02B = alloca float, align 4
  %rcn24B = alloca float, align 4
  %rcn0B = alloca float, align 4
  %rcn2B = alloca float, align 4
  %rcn4B = alloca float, align 4
  %Ca2CaN = alloca float, align 4
  %rcnCa4CaN = alloca float, align 4
  %rcn02CaN = alloca float, align 4
  %rcn24CaN = alloca float, align 4
  %rcn0CaN = alloca float, align 4
  %rcn2CaN = alloca float, align 4
  %rcn4CaN = alloca float, align 4
  %Pix = alloca float, align 4
  %rcnCKib2 = alloca float, align 4
  %rcnCKb2b = alloca float, align 4
  %rcnCKib = alloca float, align 4
  %T = alloca float, align 4
  %kbt = alloca float, align 4
  %rcnCKbt = alloca float, align 4
  %rcnCKtt2 = alloca float, align 4
  %rcnCKta = alloca float, align 4
  %rcnCKt2a = alloca float, align 4
  %rcnCKt2b2 = alloca float, align 4
  %rcnCKai = alloca float, align 4
  %dCaM = alloca float, align 4
  %dCa2CaM = alloca float, align 4
  %dCa4CaM = alloca float, align 4
  %dCaMB = alloca float, align 4
  %dCa2CaMB = alloca float, align 4
  %dCa4CaMB = alloca float, align 4
  %dPb2 = alloca float, align 4
  %dPb = alloca float, align 4
  %dPt = alloca float, align 4
  %dPt2 = alloca float, align 4
  %dPa = alloca float, align 4
  %dCa4CaN = alloca float, align 4
  %dCaMCa4CaN = alloca float, align 4
  %dCa2CaMCa4CaN = alloca float, align 4
  %dCa4CaMCa4CaN = alloca float, align 4
  store float %timeinst, float* %1, align 4
  store float* %initvalu, float** %2, align 8
  store i32 %initvalu_offset, i32* %3, align 4
  store float* %parameter, float** %4, align 8
  store i32 %parameter_offset, i32* %5, align 4
  store float* %finavalu, float** %6, align 8
  store float %Ca, float* %7, align 4
  %8 = load i32* %3, align 4
  store i32 %8, i32* %offset_1, align 4
  %9 = load i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %offset_2, align 4
  %11 = load i32* %3, align 4
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %offset_3, align 4
  %13 = load i32* %3, align 4
  %14 = add nsw i32 %13, 3
  store i32 %14, i32* %offset_4, align 4
  %15 = load i32* %3, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %offset_5, align 4
  %17 = load i32* %3, align 4
  %18 = add nsw i32 %17, 5
  store i32 %18, i32* %offset_6, align 4
  %19 = load i32* %3, align 4
  %20 = add nsw i32 %19, 6
  store i32 %20, i32* %offset_7, align 4
  %21 = load i32* %3, align 4
  %22 = add nsw i32 %21, 7
  store i32 %22, i32* %offset_8, align 4
  %23 = load i32* %3, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %offset_9, align 4
  %25 = load i32* %3, align 4
  %26 = add nsw i32 %25, 9
  store i32 %26, i32* %offset_10, align 4
  %27 = load i32* %3, align 4
  %28 = add nsw i32 %27, 10
  store i32 %28, i32* %offset_11, align 4
  %29 = load i32* %3, align 4
  %30 = add nsw i32 %29, 11
  store i32 %30, i32* %offset_12, align 4
  %31 = load i32* %3, align 4
  %32 = add nsw i32 %31, 12
  store i32 %32, i32* %offset_13, align 4
  %33 = load i32* %3, align 4
  %34 = add nsw i32 %33, 13
  store i32 %34, i32* %offset_14, align 4
  %35 = load i32* %3, align 4
  %36 = add nsw i32 %35, 14
  store i32 %36, i32* %offset_15, align 4
  %37 = load i32* %5, align 4
  store i32 %37, i32* %parameter_offset_1, align 4
  %38 = load i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %parameter_offset_2, align 4
  %40 = load i32* %5, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %parameter_offset_3, align 4
  %42 = load i32* %5, align 4
  %43 = add nsw i32 %42, 3
  store i32 %43, i32* %parameter_offset_4, align 4
  %44 = load i32* %5, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %parameter_offset_5, align 4
  %46 = load i32* %offset_1, align 4
  %47 = sext i32 %46 to i64
  %48 = load float** %2, align 8
  %49 = getelementptr inbounds float* %48, i64 %47
  %50 = load float* %49, align 4
  store float %50, float* %CaM, align 4
  %51 = load i32* %offset_2, align 4
  %52 = sext i32 %51 to i64
  %53 = load float** %2, align 8
  %54 = getelementptr inbounds float* %53, i64 %52
  %55 = load float* %54, align 4
  store float %55, float* %Ca2CaM, align 4
  %56 = load i32* %offset_3, align 4
  %57 = sext i32 %56 to i64
  %58 = load float** %2, align 8
  %59 = getelementptr inbounds float* %58, i64 %57
  %60 = load float* %59, align 4
  store float %60, float* %Ca4CaM, align 4
  %61 = load i32* %offset_4, align 4
  %62 = sext i32 %61 to i64
  %63 = load float** %2, align 8
  %64 = getelementptr inbounds float* %63, i64 %62
  %65 = load float* %64, align 4
  store float %65, float* %CaMB, align 4
  %66 = load i32* %offset_5, align 4
  %67 = sext i32 %66 to i64
  %68 = load float** %2, align 8
  %69 = getelementptr inbounds float* %68, i64 %67
  %70 = load float* %69, align 4
  store float %70, float* %Ca2CaMB, align 4
  %71 = load i32* %offset_6, align 4
  %72 = sext i32 %71 to i64
  %73 = load float** %2, align 8
  %74 = getelementptr inbounds float* %73, i64 %72
  %75 = load float* %74, align 4
  store float %75, float* %Ca4CaMB, align 4
  %76 = load i32* %offset_7, align 4
  %77 = sext i32 %76 to i64
  %78 = load float** %2, align 8
  %79 = getelementptr inbounds float* %78, i64 %77
  %80 = load float* %79, align 4
  store float %80, float* %Pb2, align 4
  %81 = load i32* %offset_8, align 4
  %82 = sext i32 %81 to i64
  %83 = load float** %2, align 8
  %84 = getelementptr inbounds float* %83, i64 %82
  %85 = load float* %84, align 4
  store float %85, float* %Pb, align 4
  %86 = load i32* %offset_9, align 4
  %87 = sext i32 %86 to i64
  %88 = load float** %2, align 8
  %89 = getelementptr inbounds float* %88, i64 %87
  %90 = load float* %89, align 4
  store float %90, float* %Pt, align 4
  %91 = load i32* %offset_10, align 4
  %92 = sext i32 %91 to i64
  %93 = load float** %2, align 8
  %94 = getelementptr inbounds float* %93, i64 %92
  %95 = load float* %94, align 4
  store float %95, float* %Pt2, align 4
  %96 = load i32* %offset_11, align 4
  %97 = sext i32 %96 to i64
  %98 = load float** %2, align 8
  %99 = getelementptr inbounds float* %98, i64 %97
  %100 = load float* %99, align 4
  store float %100, float* %Pa, align 4
  %101 = load i32* %offset_12, align 4
  %102 = sext i32 %101 to i64
  %103 = load float** %2, align 8
  %104 = getelementptr inbounds float* %103, i64 %102
  %105 = load float* %104, align 4
  store float %105, float* %Ca4CaN, align 4
  %106 = load i32* %offset_13, align 4
  %107 = sext i32 %106 to i64
  %108 = load float** %2, align 8
  %109 = getelementptr inbounds float* %108, i64 %107
  %110 = load float* %109, align 4
  store float %110, float* %CaMCa4CaN, align 4
  %111 = load i32* %offset_14, align 4
  %112 = sext i32 %111 to i64
  %113 = load float** %2, align 8
  %114 = getelementptr inbounds float* %113, i64 %112
  %115 = load float* %114, align 4
  store float %115, float* %Ca2CaMCa4CaN, align 4
  %116 = load i32* %offset_15, align 4
  %117 = sext i32 %116 to i64
  %118 = load float** %2, align 8
  %119 = getelementptr inbounds float* %118, i64 %117
  %120 = load float* %119, align 4
  store float %120, float* %Ca4CaMCa4CaN, align 4
  %121 = load i32* %parameter_offset_1, align 4
  %122 = sext i32 %121 to i64
  %123 = load float** %4, align 8
  %124 = getelementptr inbounds float* %123, i64 %122
  %125 = load float* %124, align 4
  store float %125, float* %CaMtot, align 4
  %126 = load i32* %parameter_offset_2, align 4
  %127 = sext i32 %126 to i64
  %128 = load float** %4, align 8
  %129 = getelementptr inbounds float* %128, i64 %127
  %130 = load float* %129, align 4
  store float %130, float* %Btot, align 4
  %131 = load i32* %parameter_offset_3, align 4
  %132 = sext i32 %131 to i64
  %133 = load float** %4, align 8
  %134 = getelementptr inbounds float* %133, i64 %132
  %135 = load float* %134, align 4
  store float %135, float* %CaMKIItot, align 4
  %136 = load i32* %parameter_offset_4, align 4
  %137 = sext i32 %136 to i64
  %138 = load float** %4, align 8
  %139 = getelementptr inbounds float* %138, i64 %137
  %140 = load float* %139, align 4
  store float %140, float* %CaNtot, align 4
  %141 = load i32* %parameter_offset_5, align 4
  %142 = sext i32 %141 to i64
  %143 = load float** %4, align 8
  %144 = getelementptr inbounds float* %143, i64 %142
  %145 = load float* %144, align 4
  store float %145, float* %PP1tot, align 4
  store float 1.350000e+02, float* %K, align 4
  store float 1.000000e+00, float* %Mg, align 4
  %146 = load float* %Mg, align 4
  %147 = fcmp ole float %146, 1.000000e+00
  br i1 %147, label %148, label %187

; <label>:148                                     ; preds = %0
  %149 = load float* %K, align 4
  %150 = fpext float %149 to double
  %151 = fdiv double %150, 9.400000e-01
  %152 = fadd double 1.000000e+00, %151
  %153 = load float* %Mg, align 4
  %154 = fpext float %153 to double
  %155 = fdiv double %154, 1.200000e-02
  %156 = fsub double %152, %155
  %157 = fmul double 2.500000e-03, %156
  %158 = load float* %K, align 4
  %159 = fpext float %158 to double
  %160 = fdiv double %159, 8.100000e+00
  %161 = fadd double 1.000000e+00, %160
  %162 = load float* %Mg, align 4
  %163 = fpext float %162 to double
  %164 = fdiv double %163, 2.200000e-02
  %165 = fadd double %161, %164
  %166 = fmul double %157, %165
  %167 = fptrunc double %166 to float
  store float %167, float* %Kd02, align 4
  %168 = load float* %K, align 4
  %169 = fpext float %168 to double
  %170 = fdiv double %169, 6.400000e-01
  %171 = fadd double 1.000000e+00, %170
  %172 = load float* %Mg, align 4
  %173 = fpext float %172 to double
  %174 = fdiv double %173, 1.400000e-03
  %175 = fadd double %171, %174
  %176 = fmul double 1.280000e-01, %175
  %177 = load float* %K, align 4
  %178 = fpext float %177 to double
  %179 = fdiv double %178, 1.300000e+01
  %180 = fadd double 1.000000e+00, %179
  %181 = load float* %Mg, align 4
  %182 = fpext float %181 to double
  %183 = fdiv double %182, 1.530000e-01
  %184 = fsub double %180, %183
  %185 = fmul double %176, %184
  %186 = fptrunc double %185 to float
  store float %186, float* %Kd24, align 4
  br label %234

; <label>:187                                     ; preds = %0
  %188 = load float* %K, align 4
  %189 = fpext float %188 to double
  %190 = fdiv double %189, 9.400000e-01
  %191 = fadd double 1.000000e+00, %190
  %192 = fsub double %191, 0x4054D55555555555
  %193 = load float* %Mg, align 4
  %194 = fsub float %193, 1.000000e+00
  %195 = fpext float %194 to double
  %196 = fdiv double %195, 6.000000e-02
  %197 = fadd double %192, %196
  %198 = fmul double 2.500000e-03, %197
  %199 = load float* %K, align 4
  %200 = fpext float %199 to double
  %201 = fdiv double %200, 8.100000e+00
  %202 = fadd double 1.000000e+00, %201
  %203 = fadd double %202, 0x4046BA2E8BA2E8BB
  %204 = load float* %Mg, align 4
  %205 = fsub float %204, 1.000000e+00
  %206 = fpext float %205 to double
  %207 = fdiv double %206, 6.800000e-02
  %208 = fadd double %203, %207
  %209 = fmul double %198, %208
  %210 = fptrunc double %209 to float
  store float %210, float* %Kd02, align 4
  %211 = load float* %K, align 4
  %212 = fpext float %211 to double
  %213 = fdiv double %212, 6.400000e-01
  %214 = fadd double 1.000000e+00, %213
  %215 = fadd double %214, 0x4086524924924925
  %216 = load float* %Mg, align 4
  %217 = fsub float %216, 1.000000e+00
  %218 = fpext float %217 to double
  %219 = fdiv double %218, 5.000000e-03
  %220 = fadd double %215, %219
  %221 = fmul double 1.280000e-01, %220
  %222 = load float* %K, align 4
  %223 = fpext float %222 to double
  %224 = fdiv double %223, 1.300000e+01
  %225 = fadd double 1.000000e+00, %224
  %226 = fsub double %225, 0x401A24CF7A24CF7A
  %227 = load float* %Mg, align 4
  %228 = fsub float %227, 1.000000e+00
  %229 = fpext float %228 to double
  %230 = fdiv double %229, 1.500000e-01
  %231 = fadd double %226, %230
  %232 = fmul double %221, %231
  %233 = fptrunc double %232 to float
  store float %233, float* %Kd24, align 4
  br label %234

; <label>:234                                     ; preds = %187, %148
  store float 1.000000e+01, float* %k20, align 4
  %235 = load float* %k20, align 4
  %236 = load float* %Kd02, align 4
  %237 = fdiv float %235, %236
  store float %237, float* %k02, align 4
  store float 5.000000e+02, float* %k42, align 4
  %238 = load float* %k42, align 4
  %239 = load float* %Kd24, align 4
  %240 = fdiv float %238, %239
  store float %240, float* %k24, align 4
  store float 0x3F56F00680000000, float* %k0Boff, align 4
  %241 = load float* %k0Boff, align 4
  %242 = fpext float %241 to double
  %243 = fdiv double %242, 2.000000e-01
  %244 = fptrunc double %243 to float
  store float %244, float* %k0Bon, align 4
  %245 = load float* %k0Boff, align 4
  %246 = fdiv float %245, 1.000000e+02
  store float %246, float* %k2Boff, align 4
  %247 = load float* %k0Bon, align 4
  store float %247, float* %k2Bon, align 4
  %248 = load float* %k2Boff, align 4
  store float %248, float* %k4Boff, align 4
  %249 = load float* %k0Bon, align 4
  store float %249, float* %k4Bon, align 4
  %250 = load float* %k20, align 4
  %251 = fdiv float %250, 1.000000e+02
  store float %251, float* %k20B, align 4
  %252 = load float* %k02, align 4
  store float %252, float* %k02B, align 4
  %253 = load float* %k42, align 4
  store float %253, float* %k42B, align 4
  %254 = load float* %k24, align 4
  store float %254, float* %k24B, align 4
  store float 0x40019999A0000000, float* %kbi, align 4
  %255 = load float* %kbi, align 4
  %256 = fpext float %255 to double
  %257 = fdiv double %256, 3.350000e-02
  %258 = fptrunc double %257 to float
  store float %258, float* %kib, align 4
  store float 0x3FFB851EC0000000, float* %kpp1, align 4
  store float 1.150000e+01, float* %Kmpp1, align 4
  %259 = load float* %kib, align 4
  store float %259, float* %kib2, align 4
  %260 = load float* %kib2, align 4
  %261 = fmul float %260, 5.000000e+00
  store float %261, float* %kb2i, align 4
  %262 = load float* %k24, align 4
  store float %262, float* %kb24, align 4
  %263 = load float* %k42, align 4
  %264 = fpext float %263 to double
  %265 = fmul double %264, 3.350000e-02
  %266 = fdiv double %265, 5.000000e+00
  %267 = fptrunc double %266 to float
  store float %267, float* %kb42, align 4
  %268 = load float* %kbi, align 4
  %269 = fdiv float %268, 1.000000e+03
  store float %269, float* %kta, align 4
  %270 = load float* %kib, align 4
  store float %270, float* %kat, align 4
  %271 = load float* %k42, align 4
  %272 = fpext float %271 to double
  %273 = fmul double %272, 3.350000e-05
  %274 = fdiv double %273, 5.000000e+00
  %275 = fptrunc double %274 to float
  store float %275, float* %kt42, align 4
  %276 = load float* %k24, align 4
  store float %276, float* %kt24, align 4
  %277 = load float* %kib, align 4
  store float %277, float* %kat2, align 4
  %278 = load float* %kib, align 4
  %279 = fmul float %278, 5.000000e+00
  store float %279, float* %kt2a, align 4
  store float 1.000000e+00, float* %kcanCaoff, align 4
  %280 = load float* %kcanCaoff, align 4
  %281 = fpext float %280 to double
  %282 = fdiv double %281, 5.000000e-01
  %283 = fptrunc double %282 to float
  store float %283, float* %kcanCaon, align 4
  store float 4.600000e+01, float* %kcanCaM4on, align 4
  store float 0x3F554C9860000000, float* %kcanCaM4off, align 4
  %284 = load float* %kcanCaM4on, align 4
  store float %284, float* %kcanCaM2on, align 4
  %285 = load float* %kcanCaM4off, align 4
  %286 = fmul float 2.508000e+03, %285
  store float %286, float* %kcanCaM2off, align 4
  %287 = load float* %kcanCaM4on, align 4
  store float %287, float* %kcanCaM0on, align 4
  %288 = load float* %kcanCaM2off, align 4
  %289 = fmul float 1.650000e+02, %288
  store float %289, float* %kcanCaM0off, align 4
  %290 = load float* %k02, align 4
  store float %290, float* %k02can, align 4
  %291 = load float* %k20, align 4
  %292 = fdiv float %291, 1.650000e+02
  store float %292, float* %k20can, align 4
  %293 = load float* %k24, align 4
  store float %293, float* %k24can, align 4
  %294 = load float* %k20, align 4
  %295 = fdiv float %294, 2.508000e+03
  store float %295, float* %k42can, align 4
  %296 = load float* %k02, align 4
  %297 = fpext float %296 to double
  %298 = load float* %7, align 4
  %299 = fpext float %298 to double
  %300 = call double @pow(double %299, double 2.000000e+00) #5
  %301 = fmul double %297, %300
  %302 = load float* %CaM, align 4
  %303 = fpext float %302 to double
  %304 = fmul double %301, %303
  %305 = load float* %k20, align 4
  %306 = load float* %Ca2CaM, align 4
  %307 = fmul float %305, %306
  %308 = fpext float %307 to double
  %309 = fsub double %304, %308
  %310 = fptrunc double %309 to float
  store float %310, float* %rcn02, align 4
  %311 = load float* %k24, align 4
  %312 = fpext float %311 to double
  %313 = load float* %7, align 4
  %314 = fpext float %313 to double
  %315 = call double @pow(double %314, double 2.000000e+00) #5
  %316 = fmul double %312, %315
  %317 = load float* %Ca2CaM, align 4
  %318 = fpext float %317 to double
  %319 = fmul double %316, %318
  %320 = load float* %k42, align 4
  %321 = load float* %Ca4CaM, align 4
  %322 = fmul float %320, %321
  %323 = fpext float %322 to double
  %324 = fsub double %319, %323
  %325 = fptrunc double %324 to float
  store float %325, float* %rcn24, align 4
  %326 = load float* %Btot, align 4
  %327 = load float* %CaMB, align 4
  %328 = fsub float %326, %327
  %329 = load float* %Ca2CaMB, align 4
  %330 = fsub float %328, %329
  %331 = load float* %Ca4CaMB, align 4
  %332 = fsub float %330, %331
  store float %332, float* %B, align 4
  %333 = load float* %k02B, align 4
  %334 = fpext float %333 to double
  %335 = load float* %7, align 4
  %336 = fpext float %335 to double
  %337 = call double @pow(double %336, double 2.000000e+00) #5
  %338 = fmul double %334, %337
  %339 = load float* %CaMB, align 4
  %340 = fpext float %339 to double
  %341 = fmul double %338, %340
  %342 = load float* %k20B, align 4
  %343 = load float* %Ca2CaMB, align 4
  %344 = fmul float %342, %343
  %345 = fpext float %344 to double
  %346 = fsub double %341, %345
  %347 = fptrunc double %346 to float
  store float %347, float* %rcn02B, align 4
  %348 = load float* %k24B, align 4
  %349 = fpext float %348 to double
  %350 = load float* %7, align 4
  %351 = fpext float %350 to double
  %352 = call double @pow(double %351, double 2.000000e+00) #5
  %353 = fmul double %349, %352
  %354 = load float* %Ca2CaMB, align 4
  %355 = fpext float %354 to double
  %356 = fmul double %353, %355
  %357 = load float* %k42B, align 4
  %358 = load float* %Ca4CaMB, align 4
  %359 = fmul float %357, %358
  %360 = fpext float %359 to double
  %361 = fsub double %356, %360
  %362 = fptrunc double %361 to float
  store float %362, float* %rcn24B, align 4
  %363 = load float* %k0Bon, align 4
  %364 = load float* %CaM, align 4
  %365 = fmul float %363, %364
  %366 = load float* %B, align 4
  %367 = fmul float %365, %366
  %368 = load float* %k0Boff, align 4
  %369 = load float* %CaMB, align 4
  %370 = fmul float %368, %369
  %371 = fsub float %367, %370
  store float %371, float* %rcn0B, align 4
  %372 = load float* %k2Bon, align 4
  %373 = load float* %Ca2CaM, align 4
  %374 = fmul float %372, %373
  %375 = load float* %B, align 4
  %376 = fmul float %374, %375
  %377 = load float* %k2Boff, align 4
  %378 = load float* %Ca2CaMB, align 4
  %379 = fmul float %377, %378
  %380 = fsub float %376, %379
  store float %380, float* %rcn2B, align 4
  %381 = load float* %k4Bon, align 4
  %382 = load float* %Ca4CaM, align 4
  %383 = fmul float %381, %382
  %384 = load float* %B, align 4
  %385 = fmul float %383, %384
  %386 = load float* %k4Boff, align 4
  %387 = load float* %Ca4CaMB, align 4
  %388 = fmul float %386, %387
  %389 = fsub float %385, %388
  store float %389, float* %rcn4B, align 4
  %390 = load float* %CaNtot, align 4
  %391 = load float* %Ca4CaN, align 4
  %392 = fsub float %390, %391
  %393 = load float* %CaMCa4CaN, align 4
  %394 = fsub float %392, %393
  %395 = load float* %Ca2CaMCa4CaN, align 4
  %396 = fsub float %394, %395
  %397 = load float* %Ca4CaMCa4CaN, align 4
  %398 = fsub float %396, %397
  store float %398, float* %Ca2CaN, align 4
  %399 = load float* %kcanCaon, align 4
  %400 = fpext float %399 to double
  %401 = load float* %7, align 4
  %402 = fpext float %401 to double
  %403 = call double @pow(double %402, double 2.000000e+00) #5
  %404 = fmul double %400, %403
  %405 = load float* %Ca2CaN, align 4
  %406 = fpext float %405 to double
  %407 = fmul double %404, %406
  %408 = load float* %kcanCaoff, align 4
  %409 = load float* %Ca4CaN, align 4
  %410 = fmul float %408, %409
  %411 = fpext float %410 to double
  %412 = fsub double %407, %411
  %413 = fptrunc double %412 to float
  store float %413, float* %rcnCa4CaN, align 4
  %414 = load float* %k02can, align 4
  %415 = fpext float %414 to double
  %416 = load float* %7, align 4
  %417 = fpext float %416 to double
  %418 = call double @pow(double %417, double 2.000000e+00) #5
  %419 = fmul double %415, %418
  %420 = load float* %CaMCa4CaN, align 4
  %421 = fpext float %420 to double
  %422 = fmul double %419, %421
  %423 = load float* %k20can, align 4
  %424 = load float* %Ca2CaMCa4CaN, align 4
  %425 = fmul float %423, %424
  %426 = fpext float %425 to double
  %427 = fsub double %422, %426
  %428 = fptrunc double %427 to float
  store float %428, float* %rcn02CaN, align 4
  %429 = load float* %k24can, align 4
  %430 = fpext float %429 to double
  %431 = load float* %7, align 4
  %432 = fpext float %431 to double
  %433 = call double @pow(double %432, double 2.000000e+00) #5
  %434 = fmul double %430, %433
  %435 = load float* %Ca2CaMCa4CaN, align 4
  %436 = fpext float %435 to double
  %437 = fmul double %434, %436
  %438 = load float* %k42can, align 4
  %439 = load float* %Ca4CaMCa4CaN, align 4
  %440 = fmul float %438, %439
  %441 = fpext float %440 to double
  %442 = fsub double %437, %441
  %443 = fptrunc double %442 to float
  store float %443, float* %rcn24CaN, align 4
  %444 = load float* %kcanCaM0on, align 4
  %445 = load float* %CaM, align 4
  %446 = fmul float %444, %445
  %447 = load float* %Ca4CaN, align 4
  %448 = fmul float %446, %447
  %449 = load float* %kcanCaM0off, align 4
  %450 = load float* %CaMCa4CaN, align 4
  %451 = fmul float %449, %450
  %452 = fsub float %448, %451
  store float %452, float* %rcn0CaN, align 4
  %453 = load float* %kcanCaM2on, align 4
  %454 = load float* %Ca2CaM, align 4
  %455 = fmul float %453, %454
  %456 = load float* %Ca4CaN, align 4
  %457 = fmul float %455, %456
  %458 = load float* %kcanCaM2off, align 4
  %459 = load float* %Ca2CaMCa4CaN, align 4
  %460 = fmul float %458, %459
  %461 = fsub float %457, %460
  store float %461, float* %rcn2CaN, align 4
  %462 = load float* %kcanCaM4on, align 4
  %463 = load float* %Ca4CaM, align 4
  %464 = fmul float %462, %463
  %465 = load float* %Ca4CaN, align 4
  %466 = fmul float %464, %465
  %467 = load float* %kcanCaM4off, align 4
  %468 = load float* %Ca4CaMCa4CaN, align 4
  %469 = fmul float %467, %468
  %470 = fsub float %466, %469
  store float %470, float* %rcn4CaN, align 4
  %471 = load float* %Pb2, align 4
  %472 = fsub float 1.000000e+00, %471
  %473 = load float* %Pb, align 4
  %474 = fsub float %472, %473
  %475 = load float* %Pt, align 4
  %476 = fsub float %474, %475
  %477 = load float* %Pt2, align 4
  %478 = fsub float %476, %477
  %479 = load float* %Pa, align 4
  %480 = fsub float %478, %479
  store float %480, float* %Pix, align 4
  %481 = load float* %kib2, align 4
  %482 = load float* %Ca2CaM, align 4
  %483 = fmul float %481, %482
  %484 = load float* %Pix, align 4
  %485 = fmul float %483, %484
  %486 = load float* %kb2i, align 4
  %487 = load float* %Pb2, align 4
  %488 = fmul float %486, %487
  %489 = fsub float %485, %488
  store float %489, float* %rcnCKib2, align 4
  %490 = load float* %kb24, align 4
  %491 = fpext float %490 to double
  %492 = load float* %7, align 4
  %493 = fpext float %492 to double
  %494 = call double @pow(double %493, double 2.000000e+00) #5
  %495 = fmul double %491, %494
  %496 = load float* %Pb2, align 4
  %497 = fpext float %496 to double
  %498 = fmul double %495, %497
  %499 = load float* %kb42, align 4
  %500 = load float* %Pb, align 4
  %501 = fmul float %499, %500
  %502 = fpext float %501 to double
  %503 = fsub double %498, %502
  %504 = fptrunc double %503 to float
  store float %504, float* %rcnCKb2b, align 4
  %505 = load float* %kib, align 4
  %506 = load float* %Ca4CaM, align 4
  %507 = fmul float %505, %506
  %508 = load float* %Pix, align 4
  %509 = fmul float %507, %508
  %510 = load float* %kbi, align 4
  %511 = load float* %Pb, align 4
  %512 = fmul float %510, %511
  %513 = fsub float %509, %512
  store float %513, float* %rcnCKib, align 4
  %514 = load float* %Pb, align 4
  %515 = load float* %Pt, align 4
  %516 = fadd float %514, %515
  %517 = load float* %Pt2, align 4
  %518 = fadd float %516, %517
  %519 = load float* %Pa, align 4
  %520 = fadd float %518, %519
  store float %520, float* %T, align 4
  %521 = load float* %T, align 4
  %522 = fpext float %521 to double
  %523 = fmul double 5.500000e-02, %522
  %524 = load float* %T, align 4
  %525 = fpext float %524 to double
  %526 = call double @pow(double %525, double 2.000000e+00) #5
  %527 = fmul double 7.400000e-03, %526
  %528 = fadd double %523, %527
  %529 = load float* %T, align 4
  %530 = fpext float %529 to double
  %531 = call double @pow(double %530, double 3.000000e+00) #5
  %532 = fmul double 1.500000e-02, %531
  %533 = fadd double %528, %532
  %534 = fptrunc double %533 to float
  store float %534, float* %kbt, align 4
  %535 = load float* %kbt, align 4
  %536 = load float* %Pb, align 4
  %537 = fmul float %535, %536
  %538 = load float* %kpp1, align 4
  %539 = load float* %PP1tot, align 4
  %540 = fmul float %538, %539
  %541 = load float* %Pt, align 4
  %542 = fmul float %540, %541
  %543 = load float* %Kmpp1, align 4
  %544 = load float* %CaMKIItot, align 4
  %545 = load float* %Pt, align 4
  %546 = fmul float %544, %545
  %547 = fadd float %543, %546
  %548 = fdiv float %542, %547
  %549 = fsub float %537, %548
  store float %549, float* %rcnCKbt, align 4
  %550 = load float* %kt42, align 4
  %551 = load float* %Pt, align 4
  %552 = fmul float %550, %551
  %553 = fpext float %552 to double
  %554 = load float* %kt24, align 4
  %555 = fpext float %554 to double
  %556 = load float* %7, align 4
  %557 = fpext float %556 to double
  %558 = call double @pow(double %557, double 2.000000e+00) #5
  %559 = fmul double %555, %558
  %560 = load float* %Pt2, align 4
  %561 = fpext float %560 to double
  %562 = fmul double %559, %561
  %563 = fsub double %553, %562
  %564 = fptrunc double %563 to float
  store float %564, float* %rcnCKtt2, align 4
  %565 = load float* %kta, align 4
  %566 = load float* %Pt, align 4
  %567 = fmul float %565, %566
  %568 = load float* %kat, align 4
  %569 = load float* %Ca4CaM, align 4
  %570 = fmul float %568, %569
  %571 = load float* %Pa, align 4
  %572 = fmul float %570, %571
  %573 = fsub float %567, %572
  store float %573, float* %rcnCKta, align 4
  %574 = load float* %kt2a, align 4
  %575 = load float* %Pt2, align 4
  %576 = fmul float %574, %575
  %577 = load float* %kat2, align 4
  %578 = load float* %Ca2CaM, align 4
  %579 = fmul float %577, %578
  %580 = load float* %Pa, align 4
  %581 = fmul float %579, %580
  %582 = fsub float %576, %581
  store float %582, float* %rcnCKt2a, align 4
  %583 = load float* %kpp1, align 4
  %584 = load float* %PP1tot, align 4
  %585 = fmul float %583, %584
  %586 = load float* %Pt2, align 4
  %587 = fmul float %585, %586
  %588 = load float* %Kmpp1, align 4
  %589 = load float* %CaMKIItot, align 4
  %590 = load float* %Pt2, align 4
  %591 = fmul float %589, %590
  %592 = fadd float %588, %591
  %593 = fdiv float %587, %592
  store float %593, float* %rcnCKt2b2, align 4
  %594 = load float* %kpp1, align 4
  %595 = load float* %PP1tot, align 4
  %596 = fmul float %594, %595
  %597 = load float* %Pa, align 4
  %598 = fmul float %596, %597
  %599 = load float* %Kmpp1, align 4
  %600 = load float* %CaMKIItot, align 4
  %601 = load float* %Pa, align 4
  %602 = fmul float %600, %601
  %603 = fadd float %599, %602
  %604 = fdiv float %598, %603
  store float %604, float* %rcnCKai, align 4
  %605 = load float* %rcn02, align 4
  %606 = fsub float -0.000000e+00, %605
  %607 = load float* %rcn0B, align 4
  %608 = fsub float %606, %607
  %609 = load float* %rcn0CaN, align 4
  %610 = fsub float %608, %609
  %611 = fpext float %610 to double
  %612 = fmul double 1.000000e-03, %611
  %613 = fptrunc double %612 to float
  store float %613, float* %dCaM, align 4
  %614 = load float* %rcn02, align 4
  %615 = load float* %rcn24, align 4
  %616 = fsub float %614, %615
  %617 = load float* %rcn2B, align 4
  %618 = fsub float %616, %617
  %619 = load float* %rcn2CaN, align 4
  %620 = fsub float %618, %619
  %621 = load float* %CaMKIItot, align 4
  %622 = load float* %rcnCKib2, align 4
  %623 = fsub float -0.000000e+00, %622
  %624 = load float* %rcnCKt2a, align 4
  %625 = fadd float %623, %624
  %626 = fmul float %621, %625
  %627 = fadd float %620, %626
  %628 = fpext float %627 to double
  %629 = fmul double 1.000000e-03, %628
  %630 = fptrunc double %629 to float
  store float %630, float* %dCa2CaM, align 4
  %631 = load float* %rcn24, align 4
  %632 = load float* %rcn4B, align 4
  %633 = fsub float %631, %632
  %634 = load float* %rcn4CaN, align 4
  %635 = fsub float %633, %634
  %636 = load float* %CaMKIItot, align 4
  %637 = load float* %rcnCKib, align 4
  %638 = fsub float -0.000000e+00, %637
  %639 = load float* %rcnCKta, align 4
  %640 = fadd float %638, %639
  %641 = fmul float %636, %640
  %642 = fadd float %635, %641
  %643 = fpext float %642 to double
  %644 = fmul double 1.000000e-03, %643
  %645 = fptrunc double %644 to float
  store float %645, float* %dCa4CaM, align 4
  %646 = load float* %rcn0B, align 4
  %647 = load float* %rcn02B, align 4
  %648 = fsub float %646, %647
  %649 = fpext float %648 to double
  %650 = fmul double 1.000000e-03, %649
  %651 = fptrunc double %650 to float
  store float %651, float* %dCaMB, align 4
  %652 = load float* %rcn02B, align 4
  %653 = load float* %rcn2B, align 4
  %654 = fadd float %652, %653
  %655 = load float* %rcn24B, align 4
  %656 = fsub float %654, %655
  %657 = fpext float %656 to double
  %658 = fmul double 1.000000e-03, %657
  %659 = fptrunc double %658 to float
  store float %659, float* %dCa2CaMB, align 4
  %660 = load float* %rcn24B, align 4
  %661 = load float* %rcn4B, align 4
  %662 = fadd float %660, %661
  %663 = fpext float %662 to double
  %664 = fmul double 1.000000e-03, %663
  %665 = fptrunc double %664 to float
  store float %665, float* %dCa4CaMB, align 4
  %666 = load float* %rcnCKib2, align 4
  %667 = load float* %rcnCKb2b, align 4
  %668 = fsub float %666, %667
  %669 = load float* %rcnCKt2b2, align 4
  %670 = fadd float %668, %669
  %671 = fpext float %670 to double
  %672 = fmul double 1.000000e-03, %671
  %673 = fptrunc double %672 to float
  store float %673, float* %dPb2, align 4
  %674 = load float* %rcnCKib, align 4
  %675 = load float* %rcnCKb2b, align 4
  %676 = fadd float %674, %675
  %677 = load float* %rcnCKbt, align 4
  %678 = fsub float %676, %677
  %679 = fpext float %678 to double
  %680 = fmul double 1.000000e-03, %679
  %681 = fptrunc double %680 to float
  store float %681, float* %dPb, align 4
  %682 = load float* %rcnCKbt, align 4
  %683 = load float* %rcnCKta, align 4
  %684 = fsub float %682, %683
  %685 = load float* %rcnCKtt2, align 4
  %686 = fsub float %684, %685
  %687 = fpext float %686 to double
  %688 = fmul double 1.000000e-03, %687
  %689 = fptrunc double %688 to float
  store float %689, float* %dPt, align 4
  %690 = load float* %rcnCKtt2, align 4
  %691 = load float* %rcnCKt2a, align 4
  %692 = fsub float %690, %691
  %693 = load float* %rcnCKt2b2, align 4
  %694 = fsub float %692, %693
  %695 = fpext float %694 to double
  %696 = fmul double 1.000000e-03, %695
  %697 = fptrunc double %696 to float
  store float %697, float* %dPt2, align 4
  %698 = load float* %rcnCKta, align 4
  %699 = load float* %rcnCKt2a, align 4
  %700 = fadd float %698, %699
  %701 = load float* %rcnCKai, align 4
  %702 = fsub float %700, %701
  %703 = fpext float %702 to double
  %704 = fmul double 1.000000e-03, %703
  %705 = fptrunc double %704 to float
  store float %705, float* %dPa, align 4
  %706 = load float* %rcnCa4CaN, align 4
  %707 = load float* %rcn0CaN, align 4
  %708 = fsub float %706, %707
  %709 = load float* %rcn2CaN, align 4
  %710 = fsub float %708, %709
  %711 = load float* %rcn4CaN, align 4
  %712 = fsub float %710, %711
  %713 = fpext float %712 to double
  %714 = fmul double 1.000000e-03, %713
  %715 = fptrunc double %714 to float
  store float %715, float* %dCa4CaN, align 4
  %716 = load float* %rcn0CaN, align 4
  %717 = load float* %rcn02CaN, align 4
  %718 = fsub float %716, %717
  %719 = fpext float %718 to double
  %720 = fmul double 1.000000e-03, %719
  %721 = fptrunc double %720 to float
  store float %721, float* %dCaMCa4CaN, align 4
  %722 = load float* %rcn2CaN, align 4
  %723 = load float* %rcn02CaN, align 4
  %724 = fadd float %722, %723
  %725 = load float* %rcn24CaN, align 4
  %726 = fsub float %724, %725
  %727 = fpext float %726 to double
  %728 = fmul double 1.000000e-03, %727
  %729 = fptrunc double %728 to float
  store float %729, float* %dCa2CaMCa4CaN, align 4
  %730 = load float* %rcn4CaN, align 4
  %731 = load float* %rcn24CaN, align 4
  %732 = fadd float %730, %731
  %733 = fpext float %732 to double
  %734 = fmul double 1.000000e-03, %733
  %735 = fptrunc double %734 to float
  store float %735, float* %dCa4CaMCa4CaN, align 4
  %736 = load float* %dCaM, align 4
  %737 = load i32* %offset_1, align 4
  %738 = sext i32 %737 to i64
  %739 = load float** %6, align 8
  %740 = getelementptr inbounds float* %739, i64 %738
  store float %736, float* %740, align 4
  %741 = load float* %dCa2CaM, align 4
  %742 = load i32* %offset_2, align 4
  %743 = sext i32 %742 to i64
  %744 = load float** %6, align 8
  %745 = getelementptr inbounds float* %744, i64 %743
  store float %741, float* %745, align 4
  %746 = load float* %dCa4CaM, align 4
  %747 = load i32* %offset_3, align 4
  %748 = sext i32 %747 to i64
  %749 = load float** %6, align 8
  %750 = getelementptr inbounds float* %749, i64 %748
  store float %746, float* %750, align 4
  %751 = load float* %dCaMB, align 4
  %752 = load i32* %offset_4, align 4
  %753 = sext i32 %752 to i64
  %754 = load float** %6, align 8
  %755 = getelementptr inbounds float* %754, i64 %753
  store float %751, float* %755, align 4
  %756 = load float* %dCa2CaMB, align 4
  %757 = load i32* %offset_5, align 4
  %758 = sext i32 %757 to i64
  %759 = load float** %6, align 8
  %760 = getelementptr inbounds float* %759, i64 %758
  store float %756, float* %760, align 4
  %761 = load float* %dCa4CaMB, align 4
  %762 = load i32* %offset_6, align 4
  %763 = sext i32 %762 to i64
  %764 = load float** %6, align 8
  %765 = getelementptr inbounds float* %764, i64 %763
  store float %761, float* %765, align 4
  %766 = load float* %dPb2, align 4
  %767 = load i32* %offset_7, align 4
  %768 = sext i32 %767 to i64
  %769 = load float** %6, align 8
  %770 = getelementptr inbounds float* %769, i64 %768
  store float %766, float* %770, align 4
  %771 = load float* %dPb, align 4
  %772 = load i32* %offset_8, align 4
  %773 = sext i32 %772 to i64
  %774 = load float** %6, align 8
  %775 = getelementptr inbounds float* %774, i64 %773
  store float %771, float* %775, align 4
  %776 = load float* %dPt, align 4
  %777 = load i32* %offset_9, align 4
  %778 = sext i32 %777 to i64
  %779 = load float** %6, align 8
  %780 = getelementptr inbounds float* %779, i64 %778
  store float %776, float* %780, align 4
  %781 = load float* %dPt2, align 4
  %782 = load i32* %offset_10, align 4
  %783 = sext i32 %782 to i64
  %784 = load float** %6, align 8
  %785 = getelementptr inbounds float* %784, i64 %783
  store float %781, float* %785, align 4
  %786 = load float* %dPa, align 4
  %787 = load i32* %offset_11, align 4
  %788 = sext i32 %787 to i64
  %789 = load float** %6, align 8
  %790 = getelementptr inbounds float* %789, i64 %788
  store float %786, float* %790, align 4
  %791 = load float* %dCa4CaN, align 4
  %792 = load i32* %offset_12, align 4
  %793 = sext i32 %792 to i64
  %794 = load float** %6, align 8
  %795 = getelementptr inbounds float* %794, i64 %793
  store float %791, float* %795, align 4
  %796 = load float* %dCaMCa4CaN, align 4
  %797 = load i32* %offset_13, align 4
  %798 = sext i32 %797 to i64
  %799 = load float** %6, align 8
  %800 = getelementptr inbounds float* %799, i64 %798
  store float %796, float* %800, align 4
  %801 = load float* %dCa2CaMCa4CaN, align 4
  %802 = load i32* %offset_14, align 4
  %803 = sext i32 %802 to i64
  %804 = load float** %6, align 8
  %805 = getelementptr inbounds float* %804, i64 %803
  store float %801, float* %805, align 4
  %806 = load float* %dCa4CaMCa4CaN, align 4
  %807 = load i32* %offset_15, align 4
  %808 = sext i32 %807 to i64
  %809 = load float** %6, align 8
  %810 = getelementptr inbounds float* %809, i64 %808
  store float %806, float* %810, align 4
  %811 = load float* %CaMKIItot, align 4
  %812 = fmul float 2.000000e+00, %811
  %813 = load float* %rcnCKtt2, align 4
  %814 = load float* %rcnCKb2b, align 4
  %815 = fsub float %813, %814
  %816 = fmul float %812, %815
  %817 = load float* %rcn02, align 4
  %818 = load float* %rcn24, align 4
  %819 = fadd float %817, %818
  %820 = load float* %rcn02B, align 4
  %821 = fadd float %819, %820
  %822 = load float* %rcn24B, align 4
  %823 = fadd float %821, %822
  %824 = load float* %rcnCa4CaN, align 4
  %825 = fadd float %823, %824
  %826 = load float* %rcn02CaN, align 4
  %827 = fadd float %825, %826
  %828 = load float* %rcn24CaN, align 4
  %829 = fadd float %827, %828
  %830 = fmul float 2.000000e+00, %829
  %831 = fsub float %816, %830
  %832 = fpext float %831 to double
  %833 = fmul double 1.000000e-03, %832
  %834 = fptrunc double %833 to float
  store float %834, float* %JCa, align 4
  %835 = load float* %JCa, align 4
  ret float %835
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define void @ecc(float %timeinst, float* %initvalu, i32 %initvalu_offset, float* %parameter, i32 %parameter_offset, float* %finavalu) #0 {
  %1 = alloca float, align 4
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %offset_1 = alloca i32, align 4
  %offset_2 = alloca i32, align 4
  %offset_3 = alloca i32, align 4
  %offset_4 = alloca i32, align 4
  %offset_5 = alloca i32, align 4
  %offset_6 = alloca i32, align 4
  %offset_7 = alloca i32, align 4
  %offset_8 = alloca i32, align 4
  %offset_9 = alloca i32, align 4
  %offset_10 = alloca i32, align 4
  %offset_11 = alloca i32, align 4
  %offset_12 = alloca i32, align 4
  %offset_13 = alloca i32, align 4
  %offset_14 = alloca i32, align 4
  %offset_15 = alloca i32, align 4
  %offset_16 = alloca i32, align 4
  %offset_17 = alloca i32, align 4
  %offset_18 = alloca i32, align 4
  %offset_19 = alloca i32, align 4
  %offset_20 = alloca i32, align 4
  %offset_21 = alloca i32, align 4
  %offset_22 = alloca i32, align 4
  %offset_23 = alloca i32, align 4
  %offset_24 = alloca i32, align 4
  %offset_25 = alloca i32, align 4
  %offset_26 = alloca i32, align 4
  %offset_27 = alloca i32, align 4
  %offset_28 = alloca i32, align 4
  %offset_29 = alloca i32, align 4
  %offset_30 = alloca i32, align 4
  %offset_31 = alloca i32, align 4
  %offset_32 = alloca i32, align 4
  %offset_33 = alloca i32, align 4
  %offset_34 = alloca i32, align 4
  %offset_35 = alloca i32, align 4
  %offset_36 = alloca i32, align 4
  %offset_37 = alloca i32, align 4
  %offset_38 = alloca i32, align 4
  %offset_39 = alloca i32, align 4
  %offset_40 = alloca i32, align 4
  %offset_41 = alloca i32, align 4
  %offset_42 = alloca i32, align 4
  %offset_43 = alloca i32, align 4
  %offset_44 = alloca i32, align 4
  %offset_45 = alloca i32, align 4
  %offset_46 = alloca i32, align 4
  %parameter_offset_1 = alloca i32, align 4
  %initvalu_1 = alloca float, align 4
  %initvalu_2 = alloca float, align 4
  %initvalu_3 = alloca float, align 4
  %initvalu_4 = alloca float, align 4
  %initvalu_5 = alloca float, align 4
  %initvalu_6 = alloca float, align 4
  %initvalu_7 = alloca float, align 4
  %initvalu_8 = alloca float, align 4
  %initvalu_9 = alloca float, align 4
  %initvalu_10 = alloca float, align 4
  %initvalu_11 = alloca float, align 4
  %initvalu_12 = alloca float, align 4
  %initvalu_13 = alloca float, align 4
  %initvalu_14 = alloca float, align 4
  %initvalu_15 = alloca float, align 4
  %initvalu_16 = alloca float, align 4
  %initvalu_17 = alloca float, align 4
  %initvalu_18 = alloca float, align 4
  %initvalu_19 = alloca float, align 4
  %initvalu_20 = alloca float, align 4
  %initvalu_21 = alloca float, align 4
  %initvalu_22 = alloca float, align 4
  %initvalu_23 = alloca float, align 4
  %initvalu_24 = alloca float, align 4
  %initvalu_25 = alloca float, align 4
  %initvalu_26 = alloca float, align 4
  %initvalu_27 = alloca float, align 4
  %initvalu_28 = alloca float, align 4
  %initvalu_29 = alloca float, align 4
  %initvalu_30 = alloca float, align 4
  %initvalu_31 = alloca float, align 4
  %initvalu_32 = alloca float, align 4
  %initvalu_33 = alloca float, align 4
  %initvalu_34 = alloca float, align 4
  %initvalu_35 = alloca float, align 4
  %initvalu_36 = alloca float, align 4
  %initvalu_37 = alloca float, align 4
  %initvalu_38 = alloca float, align 4
  %initvalu_39 = alloca float, align 4
  %initvalu_40 = alloca float, align 4
  %initvalu_41 = alloca float, align 4
  %initvalu_42 = alloca float, align 4
  %initvalu_43 = alloca float, align 4
  %initvalu_44 = alloca float, align 4
  %initvalu_45 = alloca float, align 4
  %initvalu_46 = alloca float, align 4
  %parameter_1 = alloca float, align 4
  %pi = alloca float, align 4
  %R = alloca float, align 4
  %Frdy = alloca float, align 4
  %Temp = alloca float, align 4
  %FoRT = alloca float, align 4
  %Cmem = alloca float, align 4
  %Qpow = alloca float, align 4
  %cellLength = alloca float, align 4
  %cellRadius = alloca float, align 4
  %junctionLength = alloca float, align 4
  %junctionRadius = alloca float, align 4
  %distSLcyto = alloca float, align 4
  %distJuncSL = alloca float, align 4
  %DcaJuncSL = alloca float, align 4
  %DcaSLcyto = alloca float, align 4
  %DnaJuncSL = alloca float, align 4
  %DnaSLcyto = alloca float, align 4
  %Vcell = alloca float, align 4
  %Vmyo = alloca float, align 4
  %Vsr = alloca float, align 4
  %Vsl = alloca float, align 4
  %Vjunc = alloca float, align 4
  %SAjunc = alloca float, align 4
  %SAsl = alloca float, align 4
  %J_ca_juncsl = alloca float, align 4
  %J_ca_slmyo = alloca float, align 4
  %J_na_juncsl = alloca float, align 4
  %J_na_slmyo = alloca float, align 4
  %Fjunc = alloca float, align 4
  %Fsl = alloca float, align 4
  %Fjunc_CaL = alloca float, align 4
  %Fsl_CaL = alloca float, align 4
  %Cli = alloca float, align 4
  %Clo = alloca float, align 4
  %Ko = alloca float, align 4
  %Nao = alloca float, align 4
  %Cao = alloca float, align 4
  %Mgi = alloca float, align 4
  %ena_junc = alloca float, align 4
  %ena_sl = alloca float, align 4
  %ek = alloca float, align 4
  %eca_junc = alloca float, align 4
  %eca_sl = alloca float, align 4
  %ecl = alloca float, align 4
  %GNa = alloca float, align 4
  %GNaB = alloca float, align 4
  %IbarNaK = alloca float, align 4
  %KmNaip = alloca float, align 4
  %KmKo = alloca float, align 4
  %Q10NaK = alloca float, align 4
  %Q10KmNai = alloca float, align 4
  %pNaK = alloca float, align 4
  %GtoSlow = alloca float, align 4
  %GtoFast = alloca float, align 4
  %gkp = alloca float, align 4
  %GClCa = alloca float, align 4
  %GClB = alloca float, align 4
  %KdClCa = alloca float, align 4
  %pNa = alloca float, align 4
  %pCa = alloca float, align 4
  %pK = alloca float, align 4
  %KmCa = alloca float, align 4
  %Q10CaL = alloca float, align 4
  %IbarNCX = alloca float, align 4
  %KmCai = alloca float, align 4
  %KmCao = alloca float, align 4
  %KmNai = alloca float, align 4
  %KmNao = alloca float, align 4
  %ksat = alloca float, align 4
  %nu = alloca float, align 4
  %Kdact = alloca float, align 4
  %Q10NCX = alloca float, align 4
  %IbarSLCaP = alloca float, align 4
  %KmPCa = alloca float, align 4
  %GCaB = alloca float, align 4
  %Q10SLCaP = alloca float, align 4
  %Q10SRCaP = alloca float, align 4
  %Vmax_SRCaP = alloca float, align 4
  %Kmf = alloca float, align 4
  %Kmr = alloca float, align 4
  %hillSRCaP = alloca float, align 4
  %ks = alloca float, align 4
  %koCa = alloca float, align 4
  %kom = alloca float, align 4
  %kiCa = alloca float, align 4
  %kim = alloca float, align 4
  %ec50SR = alloca float, align 4
  %Bmax_Naj = alloca float, align 4
  %Bmax_Nasl = alloca float, align 4
  %koff_na = alloca float, align 4
  %kon_na = alloca float, align 4
  %Bmax_TnClow = alloca float, align 4
  %koff_tncl = alloca float, align 4
  %kon_tncl = alloca float, align 4
  %Bmax_TnChigh = alloca float, align 4
  %koff_tnchca = alloca float, align 4
  %kon_tnchca = alloca float, align 4
  %koff_tnchmg = alloca float, align 4
  %kon_tnchmg = alloca float, align 4
  %Bmax_CaM = alloca float, align 4
  %koff_cam = alloca float, align 4
  %kon_cam = alloca float, align 4
  %Bmax_myosin = alloca float, align 4
  %koff_myoca = alloca float, align 4
  %kon_myoca = alloca float, align 4
  %koff_myomg = alloca float, align 4
  %kon_myomg = alloca float, align 4
  %Bmax_SR = alloca float, align 4
  %koff_sr = alloca float, align 4
  %kon_sr = alloca float, align 4
  %Bmax_SLlowsl = alloca float, align 4
  %Bmax_SLlowj = alloca float, align 4
  %koff_sll = alloca float, align 4
  %kon_sll = alloca float, align 4
  %Bmax_SLhighsl = alloca float, align 4
  %Bmax_SLhighj = alloca float, align 4
  %koff_slh = alloca float, align 4
  %kon_slh = alloca float, align 4
  %Bmax_Csqn = alloca float, align 4
  %koff_csqn = alloca float, align 4
  %kon_csqn = alloca float, align 4
  %am = alloca float, align 4
  %bm = alloca float, align 4
  %ah = alloca float, align 4
  %bh = alloca float, align 4
  %aj = alloca float, align 4
  %bj = alloca float, align 4
  %I_Na_junc = alloca float, align 4
  %I_Na_sl = alloca float, align 4
  %I_Na = alloca float, align 4
  %I_nabk_junc = alloca float, align 4
  %I_nabk_sl = alloca float, align 4
  %I_nabk = alloca float, align 4
  %sigma = alloca float, align 4
  %fnak = alloca float, align 4
  %I_nak_junc = alloca float, align 4
  %I_nak_sl = alloca float, align 4
  %I_nak = alloca float, align 4
  %gkr = alloca float, align 4
  %xrss = alloca float, align 4
  %tauxr = alloca float, align 4
  %rkr = alloca float, align 4
  %I_kr = alloca float, align 4
  %pcaks_junc = alloca float, align 4
  %pcaks_sl = alloca float, align 4
  %gks_junc = alloca float, align 4
  %gks_sl = alloca float, align 4
  %eks = alloca float, align 4
  %xsss = alloca float, align 4
  %tauxs = alloca float, align 4
  %I_ks_junc = alloca float, align 4
  %I_ks_sl = alloca float, align 4
  %I_ks = alloca float, align 4
  %kp_kp = alloca float, align 4
  %I_kp_junc = alloca float, align 4
  %I_kp_sl = alloca float, align 4
  %I_kp = alloca float, align 4
  %xtoss = alloca float, align 4
  %ytoss = alloca float, align 4
  %rtoss = alloca float, align 4
  %tauxtos = alloca float, align 4
  %tauytos = alloca float, align 4
  %taurtos = alloca float, align 4
  %I_tos = alloca float, align 4
  %tauxtof = alloca float, align 4
  %tauytof = alloca float, align 4
  %I_tof = alloca float, align 4
  %I_to = alloca float, align 4
  %aki = alloca float, align 4
  %bki = alloca float, align 4
  %kiss = alloca float, align 4
  %I_ki = alloca float, align 4
  %I_ClCa_junc = alloca float, align 4
  %I_ClCa_sl = alloca float, align 4
  %I_ClCa = alloca float, align 4
  %I_Clbk = alloca float, align 4
  %dss = alloca float, align 4
  %taud = alloca float, align 4
  %fss = alloca float, align 4
  %tauf = alloca float, align 4
  %ibarca_j = alloca float, align 4
  %ibarca_sl = alloca float, align 4
  %ibark = alloca float, align 4
  %ibarna_j = alloca float, align 4
  %ibarna_sl = alloca float, align 4
  %I_Ca_junc = alloca float, align 4
  %I_Ca_sl = alloca float, align 4
  %I_Ca = alloca float, align 4
  %I_CaK = alloca float, align 4
  %I_CaNa_junc = alloca float, align 4
  %I_CaNa_sl = alloca float, align 4
  %I_CaNa = alloca float, align 4
  %I_Catot = alloca float, align 4
  %Ka_junc = alloca float, align 4
  %Ka_sl = alloca float, align 4
  %s1_junc = alloca float, align 4
  %s1_sl = alloca float, align 4
  %s2_junc = alloca float, align 4
  %s3_junc = alloca float, align 4
  %s2_sl = alloca float, align 4
  %s3_sl = alloca float, align 4
  %I_ncx_junc = alloca float, align 4
  %I_ncx_sl = alloca float, align 4
  %I_ncx = alloca float, align 4
  %I_pca_junc = alloca float, align 4
  %I_pca_sl = alloca float, align 4
  %I_pca = alloca float, align 4
  %I_cabk_junc = alloca float, align 4
  %I_cabk_sl = alloca float, align 4
  %I_cabk = alloca float, align 4
  %MaxSR = alloca float, align 4
  %MinSR = alloca float, align 4
  %kCaSR = alloca float, align 4
  %koSRCa = alloca float, align 4
  %kiSRCa = alloca float, align 4
  %RI = alloca float, align 4
  %J_SRCarel = alloca float, align 4
  %J_serca = alloca float, align 4
  %J_SRleak = alloca float, align 4
  %J_CaB_cytosol = alloca float, align 4
  %J_CaB_junction = alloca float, align 4
  %J_CaB_sl = alloca float, align 4
  %oneovervsr = alloca float, align 4
  %I_Na_tot_junc = alloca float, align 4
  %I_Na_tot_sl = alloca float, align 4
  %oneovervsl = alloca float, align 4
  %I_K_tot = alloca float, align 4
  %I_Ca_tot_junc = alloca float, align 4
  %I_Ca_tot_sl = alloca float, align 4
  %junc_sl = alloca float, align 4
  %sl_junc = alloca float, align 4
  %sl_myo = alloca float, align 4
  %myo_sl = alloca float, align 4
  %state = alloca i32, align 4
  %I_app = alloca float, align 4
  %V_hold = alloca float, align 4
  %V_test = alloca float, align 4
  %V_clamp = alloca float, align 4
  %R_clamp = alloca float, align 4
  %I_Na_tot = alloca float, align 4
  %I_Cl_tot = alloca float, align 4
  %I_Ca_tot = alloca float, align 4
  %I_tot = alloca float, align 4
  store float %timeinst, float* %1, align 4
  store float* %initvalu, float** %2, align 8
  store i32 %initvalu_offset, i32* %3, align 4
  store float* %parameter, float** %4, align 8
  store i32 %parameter_offset, i32* %5, align 4
  store float* %finavalu, float** %6, align 8
  %7 = load i32* %3, align 4
  store i32 %7, i32* %offset_1, align 4
  %8 = load i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %offset_2, align 4
  %10 = load i32* %3, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %offset_3, align 4
  %12 = load i32* %3, align 4
  %13 = add nsw i32 %12, 3
  store i32 %13, i32* %offset_4, align 4
  %14 = load i32* %3, align 4
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %offset_5, align 4
  %16 = load i32* %3, align 4
  %17 = add nsw i32 %16, 5
  store i32 %17, i32* %offset_6, align 4
  %18 = load i32* %3, align 4
  %19 = add nsw i32 %18, 6
  store i32 %19, i32* %offset_7, align 4
  %20 = load i32* %3, align 4
  %21 = add nsw i32 %20, 7
  store i32 %21, i32* %offset_8, align 4
  %22 = load i32* %3, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %offset_9, align 4
  %24 = load i32* %3, align 4
  %25 = add nsw i32 %24, 9
  store i32 %25, i32* %offset_10, align 4
  %26 = load i32* %3, align 4
  %27 = add nsw i32 %26, 10
  store i32 %27, i32* %offset_11, align 4
  %28 = load i32* %3, align 4
  %29 = add nsw i32 %28, 11
  store i32 %29, i32* %offset_12, align 4
  %30 = load i32* %3, align 4
  %31 = add nsw i32 %30, 12
  store i32 %31, i32* %offset_13, align 4
  %32 = load i32* %3, align 4
  %33 = add nsw i32 %32, 13
  store i32 %33, i32* %offset_14, align 4
  %34 = load i32* %3, align 4
  %35 = add nsw i32 %34, 14
  store i32 %35, i32* %offset_15, align 4
  %36 = load i32* %3, align 4
  %37 = add nsw i32 %36, 15
  store i32 %37, i32* %offset_16, align 4
  %38 = load i32* %3, align 4
  %39 = add nsw i32 %38, 16
  store i32 %39, i32* %offset_17, align 4
  %40 = load i32* %3, align 4
  %41 = add nsw i32 %40, 17
  store i32 %41, i32* %offset_18, align 4
  %42 = load i32* %3, align 4
  %43 = add nsw i32 %42, 18
  store i32 %43, i32* %offset_19, align 4
  %44 = load i32* %3, align 4
  %45 = add nsw i32 %44, 19
  store i32 %45, i32* %offset_20, align 4
  %46 = load i32* %3, align 4
  %47 = add nsw i32 %46, 20
  store i32 %47, i32* %offset_21, align 4
  %48 = load i32* %3, align 4
  %49 = add nsw i32 %48, 21
  store i32 %49, i32* %offset_22, align 4
  %50 = load i32* %3, align 4
  %51 = add nsw i32 %50, 22
  store i32 %51, i32* %offset_23, align 4
  %52 = load i32* %3, align 4
  %53 = add nsw i32 %52, 23
  store i32 %53, i32* %offset_24, align 4
  %54 = load i32* %3, align 4
  %55 = add nsw i32 %54, 24
  store i32 %55, i32* %offset_25, align 4
  %56 = load i32* %3, align 4
  %57 = add nsw i32 %56, 25
  store i32 %57, i32* %offset_26, align 4
  %58 = load i32* %3, align 4
  %59 = add nsw i32 %58, 26
  store i32 %59, i32* %offset_27, align 4
  %60 = load i32* %3, align 4
  %61 = add nsw i32 %60, 27
  store i32 %61, i32* %offset_28, align 4
  %62 = load i32* %3, align 4
  %63 = add nsw i32 %62, 28
  store i32 %63, i32* %offset_29, align 4
  %64 = load i32* %3, align 4
  %65 = add nsw i32 %64, 29
  store i32 %65, i32* %offset_30, align 4
  %66 = load i32* %3, align 4
  %67 = add nsw i32 %66, 30
  store i32 %67, i32* %offset_31, align 4
  %68 = load i32* %3, align 4
  %69 = add nsw i32 %68, 31
  store i32 %69, i32* %offset_32, align 4
  %70 = load i32* %3, align 4
  %71 = add nsw i32 %70, 32
  store i32 %71, i32* %offset_33, align 4
  %72 = load i32* %3, align 4
  %73 = add nsw i32 %72, 33
  store i32 %73, i32* %offset_34, align 4
  %74 = load i32* %3, align 4
  %75 = add nsw i32 %74, 34
  store i32 %75, i32* %offset_35, align 4
  %76 = load i32* %3, align 4
  %77 = add nsw i32 %76, 35
  store i32 %77, i32* %offset_36, align 4
  %78 = load i32* %3, align 4
  %79 = add nsw i32 %78, 36
  store i32 %79, i32* %offset_37, align 4
  %80 = load i32* %3, align 4
  %81 = add nsw i32 %80, 37
  store i32 %81, i32* %offset_38, align 4
  %82 = load i32* %3, align 4
  %83 = add nsw i32 %82, 38
  store i32 %83, i32* %offset_39, align 4
  %84 = load i32* %3, align 4
  %85 = add nsw i32 %84, 39
  store i32 %85, i32* %offset_40, align 4
  %86 = load i32* %3, align 4
  %87 = add nsw i32 %86, 40
  store i32 %87, i32* %offset_41, align 4
  %88 = load i32* %3, align 4
  %89 = add nsw i32 %88, 41
  store i32 %89, i32* %offset_42, align 4
  %90 = load i32* %3, align 4
  %91 = add nsw i32 %90, 42
  store i32 %91, i32* %offset_43, align 4
  %92 = load i32* %3, align 4
  %93 = add nsw i32 %92, 43
  store i32 %93, i32* %offset_44, align 4
  %94 = load i32* %3, align 4
  %95 = add nsw i32 %94, 44
  store i32 %95, i32* %offset_45, align 4
  %96 = load i32* %3, align 4
  %97 = add nsw i32 %96, 45
  store i32 %97, i32* %offset_46, align 4
  %98 = load i32* %5, align 4
  store i32 %98, i32* %parameter_offset_1, align 4
  %99 = load i32* %offset_1, align 4
  %100 = sext i32 %99 to i64
  %101 = load float** %2, align 8
  %102 = getelementptr inbounds float* %101, i64 %100
  %103 = load float* %102, align 4
  store float %103, float* %initvalu_1, align 4
  %104 = load i32* %offset_2, align 4
  %105 = sext i32 %104 to i64
  %106 = load float** %2, align 8
  %107 = getelementptr inbounds float* %106, i64 %105
  %108 = load float* %107, align 4
  store float %108, float* %initvalu_2, align 4
  %109 = load i32* %offset_3, align 4
  %110 = sext i32 %109 to i64
  %111 = load float** %2, align 8
  %112 = getelementptr inbounds float* %111, i64 %110
  %113 = load float* %112, align 4
  store float %113, float* %initvalu_3, align 4
  %114 = load i32* %offset_4, align 4
  %115 = sext i32 %114 to i64
  %116 = load float** %2, align 8
  %117 = getelementptr inbounds float* %116, i64 %115
  %118 = load float* %117, align 4
  store float %118, float* %initvalu_4, align 4
  %119 = load i32* %offset_5, align 4
  %120 = sext i32 %119 to i64
  %121 = load float** %2, align 8
  %122 = getelementptr inbounds float* %121, i64 %120
  %123 = load float* %122, align 4
  store float %123, float* %initvalu_5, align 4
  %124 = load i32* %offset_6, align 4
  %125 = sext i32 %124 to i64
  %126 = load float** %2, align 8
  %127 = getelementptr inbounds float* %126, i64 %125
  %128 = load float* %127, align 4
  store float %128, float* %initvalu_6, align 4
  %129 = load i32* %offset_7, align 4
  %130 = sext i32 %129 to i64
  %131 = load float** %2, align 8
  %132 = getelementptr inbounds float* %131, i64 %130
  %133 = load float* %132, align 4
  store float %133, float* %initvalu_7, align 4
  %134 = load i32* %offset_8, align 4
  %135 = sext i32 %134 to i64
  %136 = load float** %2, align 8
  %137 = getelementptr inbounds float* %136, i64 %135
  %138 = load float* %137, align 4
  store float %138, float* %initvalu_8, align 4
  %139 = load i32* %offset_9, align 4
  %140 = sext i32 %139 to i64
  %141 = load float** %2, align 8
  %142 = getelementptr inbounds float* %141, i64 %140
  %143 = load float* %142, align 4
  store float %143, float* %initvalu_9, align 4
  %144 = load i32* %offset_10, align 4
  %145 = sext i32 %144 to i64
  %146 = load float** %2, align 8
  %147 = getelementptr inbounds float* %146, i64 %145
  %148 = load float* %147, align 4
  store float %148, float* %initvalu_10, align 4
  %149 = load i32* %offset_11, align 4
  %150 = sext i32 %149 to i64
  %151 = load float** %2, align 8
  %152 = getelementptr inbounds float* %151, i64 %150
  %153 = load float* %152, align 4
  store float %153, float* %initvalu_11, align 4
  %154 = load i32* %offset_12, align 4
  %155 = sext i32 %154 to i64
  %156 = load float** %2, align 8
  %157 = getelementptr inbounds float* %156, i64 %155
  %158 = load float* %157, align 4
  store float %158, float* %initvalu_12, align 4
  %159 = load i32* %offset_13, align 4
  %160 = sext i32 %159 to i64
  %161 = load float** %2, align 8
  %162 = getelementptr inbounds float* %161, i64 %160
  %163 = load float* %162, align 4
  store float %163, float* %initvalu_13, align 4
  %164 = load i32* %offset_14, align 4
  %165 = sext i32 %164 to i64
  %166 = load float** %2, align 8
  %167 = getelementptr inbounds float* %166, i64 %165
  %168 = load float* %167, align 4
  store float %168, float* %initvalu_14, align 4
  %169 = load i32* %offset_15, align 4
  %170 = sext i32 %169 to i64
  %171 = load float** %2, align 8
  %172 = getelementptr inbounds float* %171, i64 %170
  %173 = load float* %172, align 4
  store float %173, float* %initvalu_15, align 4
  %174 = load i32* %offset_16, align 4
  %175 = sext i32 %174 to i64
  %176 = load float** %2, align 8
  %177 = getelementptr inbounds float* %176, i64 %175
  %178 = load float* %177, align 4
  store float %178, float* %initvalu_16, align 4
  %179 = load i32* %offset_17, align 4
  %180 = sext i32 %179 to i64
  %181 = load float** %2, align 8
  %182 = getelementptr inbounds float* %181, i64 %180
  %183 = load float* %182, align 4
  store float %183, float* %initvalu_17, align 4
  %184 = load i32* %offset_18, align 4
  %185 = sext i32 %184 to i64
  %186 = load float** %2, align 8
  %187 = getelementptr inbounds float* %186, i64 %185
  %188 = load float* %187, align 4
  store float %188, float* %initvalu_18, align 4
  %189 = load i32* %offset_19, align 4
  %190 = sext i32 %189 to i64
  %191 = load float** %2, align 8
  %192 = getelementptr inbounds float* %191, i64 %190
  %193 = load float* %192, align 4
  store float %193, float* %initvalu_19, align 4
  %194 = load i32* %offset_20, align 4
  %195 = sext i32 %194 to i64
  %196 = load float** %2, align 8
  %197 = getelementptr inbounds float* %196, i64 %195
  %198 = load float* %197, align 4
  store float %198, float* %initvalu_20, align 4
  %199 = load i32* %offset_21, align 4
  %200 = sext i32 %199 to i64
  %201 = load float** %2, align 8
  %202 = getelementptr inbounds float* %201, i64 %200
  %203 = load float* %202, align 4
  store float %203, float* %initvalu_21, align 4
  %204 = load i32* %offset_22, align 4
  %205 = sext i32 %204 to i64
  %206 = load float** %2, align 8
  %207 = getelementptr inbounds float* %206, i64 %205
  %208 = load float* %207, align 4
  store float %208, float* %initvalu_22, align 4
  %209 = load i32* %offset_23, align 4
  %210 = sext i32 %209 to i64
  %211 = load float** %2, align 8
  %212 = getelementptr inbounds float* %211, i64 %210
  %213 = load float* %212, align 4
  store float %213, float* %initvalu_23, align 4
  %214 = load i32* %offset_24, align 4
  %215 = sext i32 %214 to i64
  %216 = load float** %2, align 8
  %217 = getelementptr inbounds float* %216, i64 %215
  %218 = load float* %217, align 4
  store float %218, float* %initvalu_24, align 4
  %219 = load i32* %offset_25, align 4
  %220 = sext i32 %219 to i64
  %221 = load float** %2, align 8
  %222 = getelementptr inbounds float* %221, i64 %220
  %223 = load float* %222, align 4
  store float %223, float* %initvalu_25, align 4
  %224 = load i32* %offset_26, align 4
  %225 = sext i32 %224 to i64
  %226 = load float** %2, align 8
  %227 = getelementptr inbounds float* %226, i64 %225
  %228 = load float* %227, align 4
  store float %228, float* %initvalu_26, align 4
  %229 = load i32* %offset_27, align 4
  %230 = sext i32 %229 to i64
  %231 = load float** %2, align 8
  %232 = getelementptr inbounds float* %231, i64 %230
  %233 = load float* %232, align 4
  store float %233, float* %initvalu_27, align 4
  %234 = load i32* %offset_28, align 4
  %235 = sext i32 %234 to i64
  %236 = load float** %2, align 8
  %237 = getelementptr inbounds float* %236, i64 %235
  %238 = load float* %237, align 4
  store float %238, float* %initvalu_28, align 4
  %239 = load i32* %offset_29, align 4
  %240 = sext i32 %239 to i64
  %241 = load float** %2, align 8
  %242 = getelementptr inbounds float* %241, i64 %240
  %243 = load float* %242, align 4
  store float %243, float* %initvalu_29, align 4
  %244 = load i32* %offset_30, align 4
  %245 = sext i32 %244 to i64
  %246 = load float** %2, align 8
  %247 = getelementptr inbounds float* %246, i64 %245
  %248 = load float* %247, align 4
  store float %248, float* %initvalu_30, align 4
  %249 = load i32* %offset_31, align 4
  %250 = sext i32 %249 to i64
  %251 = load float** %2, align 8
  %252 = getelementptr inbounds float* %251, i64 %250
  %253 = load float* %252, align 4
  store float %253, float* %initvalu_31, align 4
  %254 = load i32* %offset_32, align 4
  %255 = sext i32 %254 to i64
  %256 = load float** %2, align 8
  %257 = getelementptr inbounds float* %256, i64 %255
  %258 = load float* %257, align 4
  store float %258, float* %initvalu_32, align 4
  %259 = load i32* %offset_33, align 4
  %260 = sext i32 %259 to i64
  %261 = load float** %2, align 8
  %262 = getelementptr inbounds float* %261, i64 %260
  %263 = load float* %262, align 4
  store float %263, float* %initvalu_33, align 4
  %264 = load i32* %offset_34, align 4
  %265 = sext i32 %264 to i64
  %266 = load float** %2, align 8
  %267 = getelementptr inbounds float* %266, i64 %265
  %268 = load float* %267, align 4
  store float %268, float* %initvalu_34, align 4
  %269 = load i32* %offset_35, align 4
  %270 = sext i32 %269 to i64
  %271 = load float** %2, align 8
  %272 = getelementptr inbounds float* %271, i64 %270
  %273 = load float* %272, align 4
  store float %273, float* %initvalu_35, align 4
  %274 = load i32* %offset_36, align 4
  %275 = sext i32 %274 to i64
  %276 = load float** %2, align 8
  %277 = getelementptr inbounds float* %276, i64 %275
  %278 = load float* %277, align 4
  store float %278, float* %initvalu_36, align 4
  %279 = load i32* %offset_37, align 4
  %280 = sext i32 %279 to i64
  %281 = load float** %2, align 8
  %282 = getelementptr inbounds float* %281, i64 %280
  %283 = load float* %282, align 4
  store float %283, float* %initvalu_37, align 4
  %284 = load i32* %offset_38, align 4
  %285 = sext i32 %284 to i64
  %286 = load float** %2, align 8
  %287 = getelementptr inbounds float* %286, i64 %285
  %288 = load float* %287, align 4
  store float %288, float* %initvalu_38, align 4
  %289 = load i32* %offset_39, align 4
  %290 = sext i32 %289 to i64
  %291 = load float** %2, align 8
  %292 = getelementptr inbounds float* %291, i64 %290
  %293 = load float* %292, align 4
  store float %293, float* %initvalu_39, align 4
  %294 = load i32* %offset_40, align 4
  %295 = sext i32 %294 to i64
  %296 = load float** %2, align 8
  %297 = getelementptr inbounds float* %296, i64 %295
  %298 = load float* %297, align 4
  store float %298, float* %initvalu_40, align 4
  %299 = load i32* %offset_41, align 4
  %300 = sext i32 %299 to i64
  %301 = load float** %2, align 8
  %302 = getelementptr inbounds float* %301, i64 %300
  %303 = load float* %302, align 4
  store float %303, float* %initvalu_41, align 4
  %304 = load i32* %offset_42, align 4
  %305 = sext i32 %304 to i64
  %306 = load float** %2, align 8
  %307 = getelementptr inbounds float* %306, i64 %305
  %308 = load float* %307, align 4
  store float %308, float* %initvalu_42, align 4
  %309 = load i32* %offset_43, align 4
  %310 = sext i32 %309 to i64
  %311 = load float** %2, align 8
  %312 = getelementptr inbounds float* %311, i64 %310
  %313 = load float* %312, align 4
  store float %313, float* %initvalu_43, align 4
  %314 = load i32* %offset_44, align 4
  %315 = sext i32 %314 to i64
  %316 = load float** %2, align 8
  %317 = getelementptr inbounds float* %316, i64 %315
  %318 = load float* %317, align 4
  store float %318, float* %initvalu_44, align 4
  %319 = load i32* %offset_45, align 4
  %320 = sext i32 %319 to i64
  %321 = load float** %2, align 8
  %322 = getelementptr inbounds float* %321, i64 %320
  %323 = load float* %322, align 4
  store float %323, float* %initvalu_45, align 4
  %324 = load i32* %offset_46, align 4
  %325 = sext i32 %324 to i64
  %326 = load float** %2, align 8
  %327 = getelementptr inbounds float* %326, i64 %325
  %328 = load float* %327, align 4
  store float %328, float* %initvalu_46, align 4
  %329 = load i32* %parameter_offset_1, align 4
  %330 = sext i32 %329 to i64
  %331 = load float** %4, align 8
  %332 = getelementptr inbounds float* %331, i64 %330
  %333 = load float* %332, align 4
  store float %333, float* %parameter_1, align 4
  store float 0x400921FF20000000, float* %pi, align 4
  store float 8.314000e+03, float* %R, align 4
  store float 9.648500e+04, float* %Frdy, align 4
  store float 3.100000e+02, float* %Temp, align 4
  %334 = load float* %Frdy, align 4
  %335 = load float* %R, align 4
  %336 = fdiv float %334, %335
  %337 = load float* %Temp, align 4
  %338 = fdiv float %336, %337
  store float %338, float* %FoRT, align 4
  store float 0x3DE2FAF640000000, float* %Cmem, align 4
  %339 = load float* %Temp, align 4
  %340 = fsub float %339, 3.100000e+02
  %341 = fdiv float %340, 1.000000e+01
  store float %341, float* %Qpow, align 4
  store float 1.000000e+02, float* %cellLength, align 4
  store float 1.025000e+01, float* %cellRadius, align 4
  store float 0x3FC47AE140000000, float* %junctionLength, align 4
  store float 0x3F8EB851E0000000, float* %junctionRadius, align 4
  store float 0x3FDCCCCCC0000000, float* %distSLcyto, align 4
  store float 5.000000e-01, float* %distJuncSL, align 4
  store float 0x3EBB83BF20000000, float* %DcaJuncSL, align 4
  store float 0x3EB477DC20000000, float* %DcaSLcyto, align 4
  store float 0x3EE6DBE4A0000000, float* %DnaJuncSL, align 4
  store float 0x3EF2C4FEA0000000, float* %DnaSLcyto, align 4
  %342 = load float* %pi, align 4
  %343 = fpext float %342 to double
  %344 = load float* %cellRadius, align 4
  %345 = fpext float %344 to double
  %346 = call double @pow(double %345, double 2.000000e+00) #5
  %347 = fmul double %343, %346
  %348 = load float* %cellLength, align 4
  %349 = fpext float %348 to double
  %350 = fmul double %347, %349
  %351 = fmul double %350, 1.000000e-15
  %352 = fptrunc double %351 to float
  store float %352, float* %Vcell, align 4
  %353 = load float* %Vcell, align 4
  %354 = fpext float %353 to double
  %355 = fmul double 6.500000e-01, %354
  %356 = fptrunc double %355 to float
  store float %356, float* %Vmyo, align 4
  %357 = load float* %Vcell, align 4
  %358 = fpext float %357 to double
  %359 = fmul double 3.500000e-02, %358
  %360 = fptrunc double %359 to float
  store float %360, float* %Vsr, align 4
  %361 = load float* %Vcell, align 4
  %362 = fpext float %361 to double
  %363 = fmul double 2.000000e-02, %362
  %364 = fptrunc double %363 to float
  store float %364, float* %Vsl, align 4
  %365 = load float* %Vcell, align 4
  %366 = fpext float %365 to double
  %367 = fmul double 0x3F41A975AFAF8595, %366
  %368 = fptrunc double %367 to float
  store float %368, float* %Vjunc, align 4
  %369 = load float* %pi, align 4
  %370 = fmul float 2.015000e+04, %369
  %371 = fmul float %370, 2.000000e+00
  %372 = load float* %junctionLength, align 4
  %373 = fmul float %371, %372
  %374 = load float* %junctionRadius, align 4
  %375 = fmul float %373, %374
  store float %375, float* %SAjunc, align 4
  %376 = load float* %pi, align 4
  %377 = fmul float %376, 2.000000e+00
  %378 = load float* %cellRadius, align 4
  %379 = fmul float %377, %378
  %380 = load float* %cellLength, align 4
  %381 = fmul float %379, %380
  store float %381, float* %SAsl, align 4
  store float 0x3D6CFF1BA0000000, float* %J_ca_juncsl, align 4
  store float 0x3D906123C0000000, float* %J_ca_slmyo, align 4
  store float 0x3D149E4CE0000000, float* %J_na_juncsl, align 4
  store float 0x3D7CD3B960000000, float* %J_na_slmyo, align 4
  store float 0x3FBC28F5C0000000, float* %Fjunc, align 4
  %382 = load float* %Fjunc, align 4
  %383 = fsub float 1.000000e+00, %382
  store float %383, float* %Fsl, align 4
  store float 0x3FECCCCCC0000000, float* %Fjunc_CaL, align 4
  %384 = load float* %Fjunc_CaL, align 4
  %385 = fsub float 1.000000e+00, %384
  store float %385, float* %Fsl_CaL, align 4
  store float 1.500000e+01, float* %Cli, align 4
  store float 1.500000e+02, float* %Clo, align 4
  store float 0x40159999A0000000, float* %Ko, align 4
  store float 1.400000e+02, float* %Nao, align 4
  store float 0x3FFCCCCCC0000000, float* %Cao, align 4
  store float 1.000000e+00, float* %Mgi, align 4
  %386 = load float* %FoRT, align 4
  %387 = fdiv float 1.000000e+00, %386
  %388 = fpext float %387 to double
  %389 = load float* %Nao, align 4
  %390 = load float* %initvalu_32, align 4
  %391 = fdiv float %389, %390
  %392 = fpext float %391 to double
  %393 = call double @log(double %392) #5
  %394 = fmul double %388, %393
  %395 = fptrunc double %394 to float
  store float %395, float* %ena_junc, align 4
  %396 = load float* %FoRT, align 4
  %397 = fdiv float 1.000000e+00, %396
  %398 = fpext float %397 to double
  %399 = load float* %Nao, align 4
  %400 = load float* %initvalu_33, align 4
  %401 = fdiv float %399, %400
  %402 = fpext float %401 to double
  %403 = call double @log(double %402) #5
  %404 = fmul double %398, %403
  %405 = fptrunc double %404 to float
  store float %405, float* %ena_sl, align 4
  %406 = load float* %FoRT, align 4
  %407 = fdiv float 1.000000e+00, %406
  %408 = fpext float %407 to double
  %409 = load float* %Ko, align 4
  %410 = load float* %initvalu_35, align 4
  %411 = fdiv float %409, %410
  %412 = fpext float %411 to double
  %413 = call double @log(double %412) #5
  %414 = fmul double %408, %413
  %415 = fptrunc double %414 to float
  store float %415, float* %ek, align 4
  %416 = load float* %FoRT, align 4
  %417 = fdiv float 1.000000e+00, %416
  %418 = fdiv float %417, 2.000000e+00
  %419 = fpext float %418 to double
  %420 = load float* %Cao, align 4
  %421 = load float* %initvalu_36, align 4
  %422 = fdiv float %420, %421
  %423 = fpext float %422 to double
  %424 = call double @log(double %423) #5
  %425 = fmul double %419, %424
  %426 = fptrunc double %425 to float
  store float %426, float* %eca_junc, align 4
  %427 = load float* %FoRT, align 4
  %428 = fdiv float 1.000000e+00, %427
  %429 = fdiv float %428, 2.000000e+00
  %430 = fpext float %429 to double
  %431 = load float* %Cao, align 4
  %432 = load float* %initvalu_37, align 4
  %433 = fdiv float %431, %432
  %434 = fpext float %433 to double
  %435 = call double @log(double %434) #5
  %436 = fmul double %430, %435
  %437 = fptrunc double %436 to float
  store float %437, float* %eca_sl, align 4
  %438 = load float* %FoRT, align 4
  %439 = fdiv float 1.000000e+00, %438
  %440 = fpext float %439 to double
  %441 = load float* %Cli, align 4
  %442 = load float* %Clo, align 4
  %443 = fdiv float %441, %442
  %444 = fpext float %443 to double
  %445 = call double @log(double %444) #5
  %446 = fmul double %440, %445
  %447 = fptrunc double %446 to float
  store float %447, float* %ecl, align 4
  store float 1.600000e+01, float* %GNa, align 4
  store float 0x3F3376D540000000, float* %GNaB, align 4
  store float 0x3FFE83D9A0000000, float* %IbarNaK, align 4
  store float 1.100000e+01, float* %KmNaip, align 4
  store float 1.500000e+00, float* %KmKo, align 4
  store float 0x3FFA147AE0000000, float* %Q10NaK, align 4
  store float 0x3FF63D70A0000000, float* %Q10KmNai, align 4
  store float 0x3F92C51980000000, float* %pNaK, align 4
  store float 0x3FAEB851E0000000, float* %GtoSlow, align 4
  store float 0x3F947AE140000000, float* %GtoFast, align 4
  store float 0x3F50624DE0000000, float* %gkp, align 4
  store float 0x3FBC106240000000, float* %GClCa, align 4
  store float 0x3F826E9780000000, float* %GClB, align 4
  store float 0x3FB99999A0000000, float* %KdClCa, align 4
  store float 0x3E501B2B20000000, float* %pNa, align 4
  store float 0x3F41B1D920000000, float* %pCa, align 4
  store float 0x3E921E9080000000, float* %pK, align 4
  store float 0x3F43A92A40000000, float* %KmCa, align 4
  store float 0x3FFCCCCCC0000000, float* %Q10CaL, align 4
  store float 9.000000e+00, float* %IbarNCX, align 4
  store float 0x3F6D68C6A0000000, float* %KmCai, align 4
  store float 0x3FF4CCCCC0000000, float* %KmCao, align 4
  store float 0x4028947AE0000000, float* %KmNai, align 4
  store float 8.750000e+01, float* %KmNao, align 4
  store float 0x3FD147AE20000000, float* %ksat, align 4
  store float 0x3FD6666660000000, float* %nu, align 4
  store float 0x3F30C6F7A0000000, float* %Kdact, align 4
  store float 0x3FF91EB860000000, float* %Q10NCX, align 4
  store float 0x3FB13A92A0000000, float* %IbarSLCaP, align 4
  store float 0x3F40624DE0000000, float* %KmPCa, align 4
  store float 0x3F30781D40000000, float* %GCaB, align 4
  store float 0x4002CCCCC0000000, float* %Q10SLCaP, align 4
  store float 0x4004CCCCC0000000, float* %Q10SRCaP, align 4
  store float 0x3F32BE48A0000000, float* %Vmax_SRCaP, align 4
  store float 0x3F301F3200000000, float* %Kmf, align 4
  store float 0x3FFB333340000000, float* %Kmr, align 4
  store float 0x3FFC978D40000000, float* %hillSRCaP, align 4
  store float 2.500000e+01, float* %ks, align 4
  store float 1.000000e+01, float* %koCa, align 4
  store float 0x3FAEB851E0000000, float* %kom, align 4
  store float 5.000000e-01, float* %kiCa, align 4
  store float 0x3F747AE140000000, float* %kim, align 4
  store float 0x3FDCCCCCC0000000, float* %ec50SR, align 4
  store float 0x401E3E76C0000000, float* %Bmax_Naj, align 4
  store float 0x3FFA666660000000, float* %Bmax_Nasl, align 4
  store float 0x3F50624DE0000000, float* %koff_na, align 4
  store float 0x3F1A36E2E0000000, float* %kon_na, align 4
  store float 0x3FB1EB8520000000, float* %Bmax_TnClow, align 4
  store float 0x3F941205C0000000, float* %koff_tncl, align 4
  store float 0x40405999A0000000, float* %kon_tncl, align 4
  store float 0x3FC1EB8520000000, float* %Bmax_TnChigh, align 4
  store float 0x3F00C6F7A0000000, float* %koff_tnchca, align 4
  store float 0x4002F5C280000000, float* %kon_tnchca, align 4
  store float 0x3F6B478420000000, float* %koff_tnchmg, align 4
  store float 0x3F689374C0000000, float* %kon_tnchmg, align 4
  store float 0x3F989374C0000000, float* %Bmax_CaM, align 4
  store float 0x3FCE76C8C0000000, float* %koff_cam, align 4
  store float 3.400000e+01, float* %kon_cam, align 4
  store float 0x3FC1EB8520000000, float* %Bmax_myosin, align 4
  store float 0x3F3E258500000000, float* %koff_myoca, align 4
  store float 0x402B9999A0000000, float* %kon_myoca, align 4
  store float 0x3F0DE26920000000, float* %koff_myomg, align 4
  store float 0x3F9013A920000000, float* %kon_myomg, align 4
  store float 0x3F9182A9A0000000, float* %Bmax_SR, align 4
  store float 0x3FAEB851E0000000, float* %koff_sr, align 4
  store float 1.000000e+02, float* %kon_sr, align 4
  %448 = load float* %Vmyo, align 4
  %449 = fpext float %448 to double
  %450 = fmul double 3.738000e-02, %449
  %451 = load float* %Vsl, align 4
  %452 = fpext float %451 to double
  %453 = fdiv double %450, %452
  %454 = fptrunc double %453 to float
  store float %454, float* %Bmax_SLlowsl, align 4
  %455 = load float* %Vmyo, align 4
  %456 = fpext float %455 to double
  %457 = fmul double 4.620000e-03, %456
  %458 = load float* %Vjunc, align 4
  %459 = fpext float %458 to double
  %460 = fdiv double %457, %459
  %461 = fmul double %460, 1.000000e-01
  %462 = fptrunc double %461 to float
  store float %462, float* %Bmax_SLlowj, align 4
  store float 0x3FF4CCCCC0000000, float* %koff_sll, align 4
  store float 1.000000e+02, float* %kon_sll, align 4
  %463 = load float* %Vmyo, align 4
  %464 = fpext float %463 to double
  %465 = fmul double 1.335000e-02, %464
  %466 = load float* %Vsl, align 4
  %467 = fpext float %466 to double
  %468 = fdiv double %465, %467
  %469 = fptrunc double %468 to float
  store float %469, float* %Bmax_SLhighsl, align 4
  %470 = load float* %Vmyo, align 4
  %471 = fpext float %470 to double
  %472 = fmul double 1.650000e-03, %471
  %473 = load float* %Vjunc, align 4
  %474 = fpext float %473 to double
  %475 = fdiv double %472, %474
  %476 = fmul double %475, 1.000000e-01
  %477 = fptrunc double %476 to float
  store float %477, float* %Bmax_SLhighj, align 4
  store float 0x3F9EB851E0000000, float* %koff_slh, align 4
  store float 1.000000e+02, float* %kon_slh, align 4
  store float 0x40059999A0000000, float* %Bmax_Csqn, align 4
  store float 6.500000e+01, float* %koff_csqn, align 4
  store float 1.000000e+02, float* %kon_csqn, align 4
  %478 = load float* %initvalu_39, align 4
  %479 = fpext float %478 to double
  %480 = fadd double %479, 4.713000e+01
  %481 = fmul double 3.200000e-01, %480
  %482 = load float* %initvalu_39, align 4
  %483 = fpext float %482 to double
  %484 = fadd double %483, 4.713000e+01
  %485 = fmul double -1.000000e-01, %484
  %486 = call double @exp(double %485) #5
  %487 = fsub double 1.000000e+00, %486
  %488 = fdiv double %481, %487
  %489 = fptrunc double %488 to float
  store float %489, float* %am, align 4
  %490 = load float* %initvalu_39, align 4
  %491 = fsub float -0.000000e+00, %490
  %492 = fdiv float %491, 1.100000e+01
  %493 = fpext float %492 to double
  %494 = call double @exp(double %493) #5
  %495 = fmul double 8.000000e-02, %494
  %496 = fptrunc double %495 to float
  store float %496, float* %bm, align 4
  %497 = load float* %initvalu_39, align 4
  %498 = fcmp oge float %497, -4.000000e+01
  br i1 %498, label %499, label %523

; <label>:499                                     ; preds = %0
  store float 0.000000e+00, float* %ah, align 4
  store float 0.000000e+00, float* %aj, align 4
  %500 = load float* %initvalu_39, align 4
  %501 = fpext float %500 to double
  %502 = fadd double %501, 1.066000e+01
  %503 = fsub double -0.000000e+00, %502
  %504 = fdiv double %503, 1.110000e+01
  %505 = call double @exp(double %504) #5
  %506 = fadd double 1.000000e+00, %505
  %507 = fmul double 1.300000e-01, %506
  %508 = fdiv double 1.000000e+00, %507
  %509 = fptrunc double %508 to float
  store float %509, float* %bh, align 4
  %510 = load float* %initvalu_39, align 4
  %511 = fpext float %510 to double
  %512 = fmul double -2.535000e-07, %511
  %513 = call double @exp(double %512) #5
  %514 = fmul double 3.000000e-01, %513
  %515 = load float* %initvalu_39, align 4
  %516 = fadd float %515, 3.200000e+01
  %517 = fpext float %516 to double
  %518 = fmul double -1.000000e-01, %517
  %519 = call double @exp(double %518) #5
  %520 = fadd double 1.000000e+00, %519
  %521 = fdiv double %514, %520
  %522 = fptrunc double %521 to float
  store float %522, float* %bj, align 4
  br label %579

; <label>:523                                     ; preds = %0
  %524 = load float* %initvalu_39, align 4
  %525 = fadd float 8.000000e+01, %524
  %526 = fpext float %525 to double
  %527 = fdiv double %526, -6.800000e+00
  %528 = call double @exp(double %527) #5
  %529 = fmul double 1.350000e-01, %528
  %530 = fptrunc double %529 to float
  store float %530, float* %ah, align 4
  %531 = load float* %initvalu_39, align 4
  %532 = fpext float %531 to double
  %533 = fmul double 7.900000e-02, %532
  %534 = call double @exp(double %533) #5
  %535 = fmul double 3.560000e+00, %534
  %536 = load float* %initvalu_39, align 4
  %537 = fpext float %536 to double
  %538 = fmul double 3.500000e-01, %537
  %539 = call double @exp(double %538) #5
  %540 = fmul double 3.100000e+05, %539
  %541 = fadd double %535, %540
  %542 = fptrunc double %541 to float
  store float %542, float* %bh, align 4
  %543 = load float* %initvalu_39, align 4
  %544 = fpext float %543 to double
  %545 = fmul double 2.444000e-01, %544
  %546 = call double @exp(double %545) #5
  %547 = fmul double -1.271400e+05, %546
  %548 = load float* %initvalu_39, align 4
  %549 = fpext float %548 to double
  %550 = fmul double -4.391000e-02, %549
  %551 = call double @exp(double %550) #5
  %552 = fmul double 3.474000e-05, %551
  %553 = fsub double %547, %552
  %554 = load float* %initvalu_39, align 4
  %555 = fpext float %554 to double
  %556 = fadd double %555, 3.778000e+01
  %557 = fmul double %553, %556
  %558 = load float* %initvalu_39, align 4
  %559 = fpext float %558 to double
  %560 = fadd double %559, 7.923000e+01
  %561 = fmul double 3.110000e-01, %560
  %562 = call double @exp(double %561) #5
  %563 = fadd double 1.000000e+00, %562
  %564 = fdiv double %557, %563
  %565 = fptrunc double %564 to float
  store float %565, float* %aj, align 4
  %566 = load float* %initvalu_39, align 4
  %567 = fpext float %566 to double
  %568 = fmul double -1.052000e-02, %567
  %569 = call double @exp(double %568) #5
  %570 = fmul double 1.212000e-01, %569
  %571 = load float* %initvalu_39, align 4
  %572 = fpext float %571 to double
  %573 = fadd double %572, 4.014000e+01
  %574 = fmul double -1.378000e-01, %573
  %575 = call double @exp(double %574) #5
  %576 = fadd double 1.000000e+00, %575
  %577 = fdiv double %570, %576
  %578 = fptrunc double %577 to float
  store float %578, float* %bj, align 4
  br label %579

; <label>:579                                     ; preds = %523, %499
  %580 = load float* %am, align 4
  %581 = load float* %initvalu_1, align 4
  %582 = fsub float 1.000000e+00, %581
  %583 = fmul float %580, %582
  %584 = load float* %bm, align 4
  %585 = load float* %initvalu_1, align 4
  %586 = fmul float %584, %585
  %587 = fsub float %583, %586
  %588 = load i32* %offset_1, align 4
  %589 = sext i32 %588 to i64
  %590 = load float** %6, align 8
  %591 = getelementptr inbounds float* %590, i64 %589
  store float %587, float* %591, align 4
  %592 = load float* %ah, align 4
  %593 = load float* %initvalu_2, align 4
  %594 = fsub float 1.000000e+00, %593
  %595 = fmul float %592, %594
  %596 = load float* %bh, align 4
  %597 = load float* %initvalu_2, align 4
  %598 = fmul float %596, %597
  %599 = fsub float %595, %598
  %600 = load i32* %offset_2, align 4
  %601 = sext i32 %600 to i64
  %602 = load float** %6, align 8
  %603 = getelementptr inbounds float* %602, i64 %601
  store float %599, float* %603, align 4
  %604 = load float* %aj, align 4
  %605 = load float* %initvalu_3, align 4
  %606 = fsub float 1.000000e+00, %605
  %607 = fmul float %604, %606
  %608 = load float* %bj, align 4
  %609 = load float* %initvalu_3, align 4
  %610 = fmul float %608, %609
  %611 = fsub float %607, %610
  %612 = load i32* %offset_3, align 4
  %613 = sext i32 %612 to i64
  %614 = load float** %6, align 8
  %615 = getelementptr inbounds float* %614, i64 %613
  store float %611, float* %615, align 4
  %616 = load float* %Fjunc, align 4
  %617 = load float* %GNa, align 4
  %618 = fmul float %616, %617
  %619 = fpext float %618 to double
  %620 = load float* %initvalu_1, align 4
  %621 = fpext float %620 to double
  %622 = call double @pow(double %621, double 3.000000e+00) #5
  %623 = fmul double %619, %622
  %624 = load float* %initvalu_2, align 4
  %625 = fpext float %624 to double
  %626 = fmul double %623, %625
  %627 = load float* %initvalu_3, align 4
  %628 = fpext float %627 to double
  %629 = fmul double %626, %628
  %630 = load float* %initvalu_39, align 4
  %631 = load float* %ena_junc, align 4
  %632 = fsub float %630, %631
  %633 = fpext float %632 to double
  %634 = fmul double %629, %633
  %635 = fptrunc double %634 to float
  store float %635, float* %I_Na_junc, align 4
  %636 = load float* %Fsl, align 4
  %637 = load float* %GNa, align 4
  %638 = fmul float %636, %637
  %639 = fpext float %638 to double
  %640 = load float* %initvalu_1, align 4
  %641 = fpext float %640 to double
  %642 = call double @pow(double %641, double 3.000000e+00) #5
  %643 = fmul double %639, %642
  %644 = load float* %initvalu_2, align 4
  %645 = fpext float %644 to double
  %646 = fmul double %643, %645
  %647 = load float* %initvalu_3, align 4
  %648 = fpext float %647 to double
  %649 = fmul double %646, %648
  %650 = load float* %initvalu_39, align 4
  %651 = load float* %ena_sl, align 4
  %652 = fsub float %650, %651
  %653 = fpext float %652 to double
  %654 = fmul double %649, %653
  %655 = fptrunc double %654 to float
  store float %655, float* %I_Na_sl, align 4
  %656 = load float* %I_Na_junc, align 4
  %657 = load float* %I_Na_sl, align 4
  %658 = fadd float %656, %657
  store float %658, float* %I_Na, align 4
  %659 = load float* %Fjunc, align 4
  %660 = load float* %GNaB, align 4
  %661 = fmul float %659, %660
  %662 = load float* %initvalu_39, align 4
  %663 = load float* %ena_junc, align 4
  %664 = fsub float %662, %663
  %665 = fmul float %661, %664
  store float %665, float* %I_nabk_junc, align 4
  %666 = load float* %Fsl, align 4
  %667 = load float* %GNaB, align 4
  %668 = fmul float %666, %667
  %669 = load float* %initvalu_39, align 4
  %670 = load float* %ena_sl, align 4
  %671 = fsub float %669, %670
  %672 = fmul float %668, %671
  store float %672, float* %I_nabk_sl, align 4
  %673 = load float* %I_nabk_junc, align 4
  %674 = load float* %I_nabk_sl, align 4
  %675 = fadd float %673, %674
  store float %675, float* %I_nabk, align 4
  %676 = load float* %Nao, align 4
  %677 = fpext float %676 to double
  %678 = fdiv double %677, 6.730000e+01
  %679 = call double @exp(double %678) #5
  %680 = fsub double %679, 1.000000e+00
  %681 = fdiv double %680, 7.000000e+00
  %682 = fptrunc double %681 to float
  store float %682, float* %sigma, align 4
  %683 = load float* %initvalu_39, align 4
  %684 = fpext float %683 to double
  %685 = fmul double -1.000000e-01, %684
  %686 = load float* %FoRT, align 4
  %687 = fpext float %686 to double
  %688 = fmul double %685, %687
  %689 = call double @exp(double %688) #5
  %690 = fmul double 1.245000e-01, %689
  %691 = fadd double 1.000000e+00, %690
  %692 = load float* %sigma, align 4
  %693 = fpext float %692 to double
  %694 = fmul double 3.650000e-02, %693
  %695 = load float* %initvalu_39, align 4
  %696 = fsub float -0.000000e+00, %695
  %697 = load float* %FoRT, align 4
  %698 = fmul float %696, %697
  %699 = fpext float %698 to double
  %700 = call double @exp(double %699) #5
  %701 = fmul double %694, %700
  %702 = fadd double %691, %701
  %703 = fdiv double 1.000000e+00, %702
  %704 = fptrunc double %703 to float
  store float %704, float* %fnak, align 4
  %705 = load float* %Fjunc, align 4
  %706 = load float* %IbarNaK, align 4
  %707 = fmul float %705, %706
  %708 = load float* %fnak, align 4
  %709 = fmul float %707, %708
  %710 = load float* %Ko, align 4
  %711 = fmul float %709, %710
  %712 = fpext float %711 to double
  %713 = load float* %KmNaip, align 4
  %714 = load float* %initvalu_32, align 4
  %715 = fdiv float %713, %714
  %716 = fpext float %715 to double
  %717 = call double @pow(double %716, double 4.000000e+00) #5
  %718 = fadd double 1.000000e+00, %717
  %719 = fdiv double %712, %718
  %720 = load float* %Ko, align 4
  %721 = load float* %KmKo, align 4
  %722 = fadd float %720, %721
  %723 = fpext float %722 to double
  %724 = fdiv double %719, %723
  %725 = fptrunc double %724 to float
  store float %725, float* %I_nak_junc, align 4
  %726 = load float* %Fsl, align 4
  %727 = load float* %IbarNaK, align 4
  %728 = fmul float %726, %727
  %729 = load float* %fnak, align 4
  %730 = fmul float %728, %729
  %731 = load float* %Ko, align 4
  %732 = fmul float %730, %731
  %733 = fpext float %732 to double
  %734 = load float* %KmNaip, align 4
  %735 = load float* %initvalu_33, align 4
  %736 = fdiv float %734, %735
  %737 = fpext float %736 to double
  %738 = call double @pow(double %737, double 4.000000e+00) #5
  %739 = fadd double 1.000000e+00, %738
  %740 = fdiv double %733, %739
  %741 = load float* %Ko, align 4
  %742 = load float* %KmKo, align 4
  %743 = fadd float %741, %742
  %744 = fpext float %743 to double
  %745 = fdiv double %740, %744
  %746 = fptrunc double %745 to float
  store float %746, float* %I_nak_sl, align 4
  %747 = load float* %I_nak_junc, align 4
  %748 = load float* %I_nak_sl, align 4
  %749 = fadd float %747, %748
  store float %749, float* %I_nak, align 4
  %750 = load float* %Ko, align 4
  %751 = fpext float %750 to double
  %752 = fdiv double %751, 5.400000e+00
  %753 = call double @sqrt(double %752) #5
  %754 = fmul double 3.000000e-02, %753
  %755 = fptrunc double %754 to float
  store float %755, float* %gkr, align 4
  %756 = load float* %initvalu_39, align 4
  %757 = fadd float %756, 5.000000e+01
  %758 = fsub float -0.000000e+00, %757
  %759 = fpext float %758 to double
  %760 = fdiv double %759, 7.500000e+00
  %761 = call double @exp(double %760) #5
  %762 = fadd double 1.000000e+00, %761
  %763 = fdiv double 1.000000e+00, %762
  %764 = fptrunc double %763 to float
  store float %764, float* %xrss, align 4
  %765 = load float* %initvalu_39, align 4
  %766 = fadd float %765, 7.000000e+00
  %767 = fpext float %766 to double
  %768 = fmul double 1.380000e-03, %767
  %769 = load float* %initvalu_39, align 4
  %770 = fadd float %769, 7.000000e+00
  %771 = fpext float %770 to double
  %772 = fmul double -1.230000e-01, %771
  %773 = call double @exp(double %772) #5
  %774 = fsub double 1.000000e+00, %773
  %775 = fdiv double %768, %774
  %776 = load float* %initvalu_39, align 4
  %777 = fadd float %776, 1.000000e+01
  %778 = fpext float %777 to double
  %779 = fmul double 6.100000e-04, %778
  %780 = load float* %initvalu_39, align 4
  %781 = fadd float %780, 1.000000e+01
  %782 = fpext float %781 to double
  %783 = fmul double 1.450000e-01, %782
  %784 = call double @exp(double %783) #5
  %785 = fsub double %784, 1.000000e+00
  %786 = fdiv double %779, %785
  %787 = fadd double %775, %786
  %788 = fdiv double 1.000000e+00, %787
  %789 = fptrunc double %788 to float
  store float %789, float* %tauxr, align 4
  %790 = load float* %xrss, align 4
  %791 = load float* %initvalu_12, align 4
  %792 = fsub float %790, %791
  %793 = load float* %tauxr, align 4
  %794 = fdiv float %792, %793
  %795 = load i32* %offset_12, align 4
  %796 = sext i32 %795 to i64
  %797 = load float** %6, align 8
  %798 = getelementptr inbounds float* %797, i64 %796
  store float %794, float* %798, align 4
  %799 = load float* %initvalu_39, align 4
  %800 = fadd float %799, 3.300000e+01
  %801 = fpext float %800 to double
  %802 = fdiv double %801, 2.240000e+01
  %803 = call double @exp(double %802) #5
  %804 = fadd double 1.000000e+00, %803
  %805 = fdiv double 1.000000e+00, %804
  %806 = fptrunc double %805 to float
  store float %806, float* %rkr, align 4
  %807 = load float* %gkr, align 4
  %808 = load float* %initvalu_12, align 4
  %809 = fmul float %807, %808
  %810 = load float* %rkr, align 4
  %811 = fmul float %809, %810
  %812 = load float* %initvalu_39, align 4
  %813 = load float* %ek, align 4
  %814 = fsub float %812, %813
  %815 = fmul float %811, %814
  store float %815, float* %I_kr, align 4
  %816 = load float* %initvalu_36, align 4
  %817 = fpext float %816 to double
  %818 = call double @log10(double %817) #5
  %819 = fsub double -0.000000e+00, %818
  %820 = fadd double %819, 3.000000e+00
  %821 = fptrunc double %820 to float
  store float %821, float* %pcaks_junc, align 4
  %822 = load float* %initvalu_37, align 4
  %823 = fpext float %822 to double
  %824 = call double @log10(double %823) #5
  %825 = fsub double -0.000000e+00, %824
  %826 = fadd double %825, 3.000000e+00
  %827 = fptrunc double %826 to float
  store float %827, float* %pcaks_sl, align 4
  %828 = load float* %pcaks_junc, align 4
  %829 = fpext float %828 to double
  %830 = fadd double -7.200000e+00, %829
  %831 = fdiv double %830, 6.000000e-01
  %832 = call double @exp(double %831) #5
  %833 = fadd double 1.000000e+00, %832
  %834 = fdiv double 1.900000e-01, %833
  %835 = fadd double 5.700000e-02, %834
  %836 = fmul double 7.000000e-02, %835
  %837 = fptrunc double %836 to float
  store float %837, float* %gks_junc, align 4
  %838 = load float* %pcaks_sl, align 4
  %839 = fpext float %838 to double
  %840 = fadd double -7.200000e+00, %839
  %841 = fdiv double %840, 6.000000e-01
  %842 = call double @exp(double %841) #5
  %843 = fadd double 1.000000e+00, %842
  %844 = fdiv double 1.900000e-01, %843
  %845 = fadd double 5.700000e-02, %844
  %846 = fmul double 7.000000e-02, %845
  %847 = fptrunc double %846 to float
  store float %847, float* %gks_sl, align 4
  %848 = load float* %FoRT, align 4
  %849 = fdiv float 1.000000e+00, %848
  %850 = fpext float %849 to double
  %851 = load float* %Ko, align 4
  %852 = load float* %pNaK, align 4
  %853 = load float* %Nao, align 4
  %854 = fmul float %852, %853
  %855 = fadd float %851, %854
  %856 = load float* %initvalu_35, align 4
  %857 = load float* %pNaK, align 4
  %858 = load float* %initvalu_34, align 4
  %859 = fmul float %857, %858
  %860 = fadd float %856, %859
  %861 = fdiv float %855, %860
  %862 = fpext float %861 to double
  %863 = call double @log(double %862) #5
  %864 = fmul double %850, %863
  %865 = fptrunc double %864 to float
  store float %865, float* %eks, align 4
  %866 = load float* %initvalu_39, align 4
  %867 = fpext float %866 to double
  %868 = fsub double %867, 1.500000e+00
  %869 = fsub double -0.000000e+00, %868
  %870 = fdiv double %869, 1.670000e+01
  %871 = call double @exp(double %870) #5
  %872 = fadd double 1.000000e+00, %871
  %873 = fdiv double 1.000000e+00, %872
  %874 = fptrunc double %873 to float
  store float %874, float* %xsss, align 4
  %875 = load float* %initvalu_39, align 4
  %876 = fadd float %875, 3.000000e+01
  %877 = fpext float %876 to double
  %878 = fmul double 7.190000e-05, %877
  %879 = load float* %initvalu_39, align 4
  %880 = fadd float %879, 3.000000e+01
  %881 = fpext float %880 to double
  %882 = fmul double -1.480000e-01, %881
  %883 = call double @exp(double %882) #5
  %884 = fsub double 1.000000e+00, %883
  %885 = fdiv double %878, %884
  %886 = load float* %initvalu_39, align 4
  %887 = fadd float %886, 3.000000e+01
  %888 = fpext float %887 to double
  %889 = fmul double 1.310000e-04, %888
  %890 = load float* %initvalu_39, align 4
  %891 = fadd float %890, 3.000000e+01
  %892 = fpext float %891 to double
  %893 = fmul double 6.870000e-02, %892
  %894 = call double @exp(double %893) #5
  %895 = fsub double %894, 1.000000e+00
  %896 = fdiv double %889, %895
  %897 = fadd double %885, %896
  %898 = fdiv double 1.000000e+00, %897
  %899 = fptrunc double %898 to float
  store float %899, float* %tauxs, align 4
  %900 = load float* %xsss, align 4
  %901 = load float* %initvalu_13, align 4
  %902 = fsub float %900, %901
  %903 = load float* %tauxs, align 4
  %904 = fdiv float %902, %903
  %905 = load i32* %offset_13, align 4
  %906 = sext i32 %905 to i64
  %907 = load float** %6, align 8
  %908 = getelementptr inbounds float* %907, i64 %906
  store float %904, float* %908, align 4
  %909 = load float* %Fjunc, align 4
  %910 = load float* %gks_junc, align 4
  %911 = fmul float %909, %910
  %912 = fpext float %911 to double
  %913 = load float* %initvalu_12, align 4
  %914 = fpext float %913 to double
  %915 = call double @pow(double %914, double 2.000000e+00) #5
  %916 = fmul double %912, %915
  %917 = load float* %initvalu_39, align 4
  %918 = load float* %eks, align 4
  %919 = fsub float %917, %918
  %920 = fpext float %919 to double
  %921 = fmul double %916, %920
  %922 = fptrunc double %921 to float
  store float %922, float* %I_ks_junc, align 4
  %923 = load float* %Fsl, align 4
  %924 = load float* %gks_sl, align 4
  %925 = fmul float %923, %924
  %926 = fpext float %925 to double
  %927 = load float* %initvalu_13, align 4
  %928 = fpext float %927 to double
  %929 = call double @pow(double %928, double 2.000000e+00) #5
  %930 = fmul double %926, %929
  %931 = load float* %initvalu_39, align 4
  %932 = load float* %eks, align 4
  %933 = fsub float %931, %932
  %934 = fpext float %933 to double
  %935 = fmul double %930, %934
  %936 = fptrunc double %935 to float
  store float %936, float* %I_ks_sl, align 4
  %937 = load float* %I_ks_junc, align 4
  %938 = load float* %I_ks_sl, align 4
  %939 = fadd float %937, %938
  store float %939, float* %I_ks, align 4
  %940 = load float* %initvalu_39, align 4
  %941 = fpext float %940 to double
  %942 = fdiv double %941, 5.980000e+00
  %943 = fsub double 7.488000e+00, %942
  %944 = call double @exp(double %943) #5
  %945 = fadd double 1.000000e+00, %944
  %946 = fdiv double 1.000000e+00, %945
  %947 = fptrunc double %946 to float
  store float %947, float* %kp_kp, align 4
  %948 = load float* %Fjunc, align 4
  %949 = load float* %gkp, align 4
  %950 = fmul float %948, %949
  %951 = load float* %kp_kp, align 4
  %952 = fmul float %950, %951
  %953 = load float* %initvalu_39, align 4
  %954 = load float* %ek, align 4
  %955 = fsub float %953, %954
  %956 = fmul float %952, %955
  store float %956, float* %I_kp_junc, align 4
  %957 = load float* %Fsl, align 4
  %958 = load float* %gkp, align 4
  %959 = fmul float %957, %958
  %960 = load float* %kp_kp, align 4
  %961 = fmul float %959, %960
  %962 = load float* %initvalu_39, align 4
  %963 = load float* %ek, align 4
  %964 = fsub float %962, %963
  %965 = fmul float %961, %964
  store float %965, float* %I_kp_sl, align 4
  %966 = load float* %I_kp_junc, align 4
  %967 = load float* %I_kp_sl, align 4
  %968 = fadd float %966, %967
  store float %968, float* %I_kp, align 4
  %969 = load float* %initvalu_39, align 4
  %970 = fpext float %969 to double
  %971 = fadd double %970, 3.000000e+00
  %972 = fsub double -0.000000e+00, %971
  %973 = fdiv double %972, 1.500000e+01
  %974 = call double @exp(double %973) #5
  %975 = fadd double 1.000000e+00, %974
  %976 = fdiv double 1.000000e+00, %975
  %977 = fptrunc double %976 to float
  store float %977, float* %xtoss, align 4
  %978 = load float* %initvalu_39, align 4
  %979 = fpext float %978 to double
  %980 = fadd double %979, 3.350000e+01
  %981 = fdiv double %980, 1.000000e+01
  %982 = call double @exp(double %981) #5
  %983 = fadd double 1.000000e+00, %982
  %984 = fdiv double 1.000000e+00, %983
  %985 = fptrunc double %984 to float
  store float %985, float* %ytoss, align 4
  %986 = load float* %initvalu_39, align 4
  %987 = fpext float %986 to double
  %988 = fadd double %987, 3.350000e+01
  %989 = fdiv double %988, 1.000000e+01
  %990 = call double @exp(double %989) #5
  %991 = fadd double 1.000000e+00, %990
  %992 = fdiv double 1.000000e+00, %991
  %993 = fptrunc double %992 to float
  store float %993, float* %rtoss, align 4
  %994 = load float* %initvalu_39, align 4
  %995 = fpext float %994 to double
  %996 = fadd double %995, 3.000000e+00
  %997 = fdiv double %996, 1.500000e+01
  %998 = call double @exp(double %997) #5
  %999 = fadd double 1.000000e+00, %998
  %1000 = fdiv double 9.000000e+00, %999
  %1001 = fadd double %1000, 5.000000e-01
  %1002 = fptrunc double %1001 to float
  store float %1002, float* %tauxtos, align 4
  %1003 = load float* %initvalu_39, align 4
  %1004 = fpext float %1003 to double
  %1005 = fadd double %1004, 6.000000e+01
  %1006 = fdiv double %1005, 1.000000e+01
  %1007 = call double @exp(double %1006) #5
  %1008 = fadd double 1.000000e+00, %1007
  %1009 = fdiv double 3.000000e+03, %1008
  %1010 = fadd double %1009, 3.000000e+01
  %1011 = fptrunc double %1010 to float
  store float %1011, float* %tauytos, align 4
  %1012 = load float* %initvalu_39, align 4
  %1013 = fpext float %1012 to double
  %1014 = fadd double %1013, 6.000000e+01
  %1015 = fdiv double %1014, 1.000000e+01
  %1016 = call double @exp(double %1015) #5
  %1017 = fadd double 1.000000e+00, %1016
  %1018 = fdiv double 2.800000e+03, %1017
  %1019 = fadd double %1018, 2.200000e+02
  %1020 = fptrunc double %1019 to float
  store float %1020, float* %taurtos, align 4
  %1021 = load float* %xtoss, align 4
  %1022 = load float* %initvalu_8, align 4
  %1023 = fsub float %1021, %1022
  %1024 = load float* %tauxtos, align 4
  %1025 = fdiv float %1023, %1024
  %1026 = load i32* %offset_8, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = load float** %6, align 8
  %1029 = getelementptr inbounds float* %1028, i64 %1027
  store float %1025, float* %1029, align 4
  %1030 = load float* %ytoss, align 4
  %1031 = load float* %initvalu_9, align 4
  %1032 = fsub float %1030, %1031
  %1033 = load float* %tauytos, align 4
  %1034 = fdiv float %1032, %1033
  %1035 = load i32* %offset_9, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = load float** %6, align 8
  %1038 = getelementptr inbounds float* %1037, i64 %1036
  store float %1034, float* %1038, align 4
  %1039 = load float* %rtoss, align 4
  %1040 = load float* %initvalu_40, align 4
  %1041 = fsub float %1039, %1040
  %1042 = load float* %taurtos, align 4
  %1043 = fdiv float %1041, %1042
  %1044 = load i32* %offset_40, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = load float** %6, align 8
  %1047 = getelementptr inbounds float* %1046, i64 %1045
  store float %1043, float* %1047, align 4
  %1048 = load float* %GtoSlow, align 4
  %1049 = load float* %initvalu_8, align 4
  %1050 = fmul float %1048, %1049
  %1051 = fpext float %1050 to double
  %1052 = load float* %initvalu_9, align 4
  %1053 = fpext float %1052 to double
  %1054 = load float* %initvalu_40, align 4
  %1055 = fpext float %1054 to double
  %1056 = fmul double 5.000000e-01, %1055
  %1057 = fadd double %1053, %1056
  %1058 = fmul double %1051, %1057
  %1059 = load float* %initvalu_39, align 4
  %1060 = load float* %ek, align 4
  %1061 = fsub float %1059, %1060
  %1062 = fpext float %1061 to double
  %1063 = fmul double %1058, %1062
  %1064 = fptrunc double %1063 to float
  store float %1064, float* %I_tos, align 4
  %1065 = load float* %initvalu_39, align 4
  %1066 = fsub float -0.000000e+00, %1065
  %1067 = load float* %initvalu_39, align 4
  %1068 = fmul float %1066, %1067
  %1069 = fdiv float %1068, 3.000000e+01
  %1070 = fdiv float %1069, 3.000000e+01
  %1071 = fpext float %1070 to double
  %1072 = call double @exp(double %1071) #5
  %1073 = fmul double 3.500000e+00, %1072
  %1074 = fadd double %1073, 1.500000e+00
  %1075 = fptrunc double %1074 to float
  store float %1075, float* %tauxtof, align 4
  %1076 = load float* %initvalu_39, align 4
  %1077 = fpext float %1076 to double
  %1078 = fadd double %1077, 3.350000e+01
  %1079 = fdiv double %1078, 1.000000e+01
  %1080 = call double @exp(double %1079) #5
  %1081 = fadd double 1.000000e+00, %1080
  %1082 = fdiv double 2.000000e+01, %1081
  %1083 = fadd double %1082, 2.000000e+01
  %1084 = fptrunc double %1083 to float
  store float %1084, float* %tauytof, align 4
  %1085 = load float* %xtoss, align 4
  %1086 = load float* %initvalu_10, align 4
  %1087 = fsub float %1085, %1086
  %1088 = load float* %tauxtof, align 4
  %1089 = fdiv float %1087, %1088
  %1090 = load i32* %offset_10, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = load float** %6, align 8
  %1093 = getelementptr inbounds float* %1092, i64 %1091
  store float %1089, float* %1093, align 4
  %1094 = load float* %ytoss, align 4
  %1095 = load float* %initvalu_11, align 4
  %1096 = fsub float %1094, %1095
  %1097 = load float* %tauytof, align 4
  %1098 = fdiv float %1096, %1097
  %1099 = load i32* %offset_11, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = load float** %6, align 8
  %1102 = getelementptr inbounds float* %1101, i64 %1100
  store float %1098, float* %1102, align 4
  %1103 = load float* %GtoFast, align 4
  %1104 = load float* %initvalu_10, align 4
  %1105 = fmul float %1103, %1104
  %1106 = load float* %initvalu_11, align 4
  %1107 = fmul float %1105, %1106
  %1108 = load float* %initvalu_39, align 4
  %1109 = load float* %ek, align 4
  %1110 = fsub float %1108, %1109
  %1111 = fmul float %1107, %1110
  store float %1111, float* %I_tof, align 4
  %1112 = load float* %I_tos, align 4
  %1113 = load float* %I_tof, align 4
  %1114 = fadd float %1112, %1113
  store float %1114, float* %I_to, align 4
  %1115 = load float* %initvalu_39, align 4
  %1116 = load float* %ek, align 4
  %1117 = fsub float %1115, %1116
  %1118 = fpext float %1117 to double
  %1119 = fsub double %1118, 5.921500e+01
  %1120 = fmul double 2.385000e-01, %1119
  %1121 = call double @exp(double %1120) #5
  %1122 = fadd double 1.000000e+00, %1121
  %1123 = fdiv double 1.020000e+00, %1122
  %1124 = fptrunc double %1123 to float
  store float %1124, float* %aki, align 4
  %1125 = load float* %initvalu_39, align 4
  %1126 = fpext float %1125 to double
  %1127 = fadd double %1126, 5.476000e+00
  %1128 = load float* %ek, align 4
  %1129 = fpext float %1128 to double
  %1130 = fsub double %1127, %1129
  %1131 = fmul double 8.032000e-02, %1130
  %1132 = call double @exp(double %1131) #5
  %1133 = fmul double 4.912400e-01, %1132
  %1134 = load float* %initvalu_39, align 4
  %1135 = load float* %ek, align 4
  %1136 = fsub float %1134, %1135
  %1137 = fpext float %1136 to double
  %1138 = fsub double %1137, 5.943100e+02
  %1139 = fmul double 6.175000e-02, %1138
  %1140 = call double @exp(double %1139) #5
  %1141 = fadd double %1133, %1140
  %1142 = load float* %initvalu_39, align 4
  %1143 = load float* %ek, align 4
  %1144 = fsub float %1142, %1143
  %1145 = fpext float %1144 to double
  %1146 = fadd double %1145, 4.753000e+00
  %1147 = fmul double -5.143000e-01, %1146
  %1148 = call double @exp(double %1147) #5
  %1149 = fadd double 1.000000e+00, %1148
  %1150 = fdiv double %1141, %1149
  %1151 = fptrunc double %1150 to float
  store float %1151, float* %bki, align 4
  %1152 = load float* %aki, align 4
  %1153 = load float* %aki, align 4
  %1154 = load float* %bki, align 4
  %1155 = fadd float %1153, %1154
  %1156 = fdiv float %1152, %1155
  store float %1156, float* %kiss, align 4
  %1157 = load float* %Ko, align 4
  %1158 = fpext float %1157 to double
  %1159 = fdiv double %1158, 5.400000e+00
  %1160 = call double @sqrt(double %1159) #5
  %1161 = fmul double 9.000000e-01, %1160
  %1162 = load float* %kiss, align 4
  %1163 = fpext float %1162 to double
  %1164 = fmul double %1161, %1163
  %1165 = load float* %initvalu_39, align 4
  %1166 = load float* %ek, align 4
  %1167 = fsub float %1165, %1166
  %1168 = fpext float %1167 to double
  %1169 = fmul double %1164, %1168
  %1170 = fptrunc double %1169 to float
  store float %1170, float* %I_ki, align 4
  %1171 = load float* %Fjunc, align 4
  %1172 = load float* %GClCa, align 4
  %1173 = fmul float %1171, %1172
  %1174 = load float* %KdClCa, align 4
  %1175 = load float* %initvalu_36, align 4
  %1176 = fdiv float %1174, %1175
  %1177 = fadd float 1.000000e+00, %1176
  %1178 = fdiv float %1173, %1177
  %1179 = load float* %initvalu_39, align 4
  %1180 = load float* %ecl, align 4
  %1181 = fsub float %1179, %1180
  %1182 = fmul float %1178, %1181
  store float %1182, float* %I_ClCa_junc, align 4
  %1183 = load float* %Fsl, align 4
  %1184 = load float* %GClCa, align 4
  %1185 = fmul float %1183, %1184
  %1186 = load float* %KdClCa, align 4
  %1187 = load float* %initvalu_37, align 4
  %1188 = fdiv float %1186, %1187
  %1189 = fadd float 1.000000e+00, %1188
  %1190 = fdiv float %1185, %1189
  %1191 = load float* %initvalu_39, align 4
  %1192 = load float* %ecl, align 4
  %1193 = fsub float %1191, %1192
  %1194 = fmul float %1190, %1193
  store float %1194, float* %I_ClCa_sl, align 4
  %1195 = load float* %I_ClCa_junc, align 4
  %1196 = load float* %I_ClCa_sl, align 4
  %1197 = fadd float %1195, %1196
  store float %1197, float* %I_ClCa, align 4
  %1198 = load float* %GClB, align 4
  %1199 = load float* %initvalu_39, align 4
  %1200 = load float* %ecl, align 4
  %1201 = fsub float %1199, %1200
  %1202 = fmul float %1198, %1201
  store float %1202, float* %I_Clbk, align 4
  %1203 = load float* %initvalu_39, align 4
  %1204 = fpext float %1203 to double
  %1205 = fadd double %1204, 1.450000e+01
  %1206 = fsub double -0.000000e+00, %1205
  %1207 = fdiv double %1206, 6.000000e+00
  %1208 = call double @exp(double %1207) #5
  %1209 = fadd double 1.000000e+00, %1208
  %1210 = fdiv double 1.000000e+00, %1209
  %1211 = fptrunc double %1210 to float
  store float %1211, float* %dss, align 4
  %1212 = load float* %dss, align 4
  %1213 = fpext float %1212 to double
  %1214 = load float* %initvalu_39, align 4
  %1215 = fpext float %1214 to double
  %1216 = fadd double %1215, 1.450000e+01
  %1217 = fsub double -0.000000e+00, %1216
  %1218 = fdiv double %1217, 6.000000e+00
  %1219 = call double @exp(double %1218) #5
  %1220 = fsub double 1.000000e+00, %1219
  %1221 = fmul double %1213, %1220
  %1222 = load float* %initvalu_39, align 4
  %1223 = fpext float %1222 to double
  %1224 = fadd double %1223, 1.450000e+01
  %1225 = fmul double 3.500000e-02, %1224
  %1226 = fdiv double %1221, %1225
  %1227 = fptrunc double %1226 to float
  store float %1227, float* %taud, align 4
  %1228 = load float* %initvalu_39, align 4
  %1229 = fpext float %1228 to double
  %1230 = fadd double %1229, 3.506000e+01
  %1231 = fdiv double %1230, 3.600000e+00
  %1232 = call double @exp(double %1231) #5
  %1233 = fadd double 1.000000e+00, %1232
  %1234 = fdiv double 1.000000e+00, %1233
  %1235 = load float* %initvalu_39, align 4
  %1236 = fsub float 5.000000e+01, %1235
  %1237 = fdiv float %1236, 2.000000e+01
  %1238 = fpext float %1237 to double
  %1239 = call double @exp(double %1238) #5
  %1240 = fadd double 1.000000e+00, %1239
  %1241 = fdiv double 6.000000e-01, %1240
  %1242 = fadd double %1234, %1241
  %1243 = fptrunc double %1242 to float
  store float %1243, float* %fss, align 4
  %1244 = load float* %initvalu_39, align 4
  %1245 = fpext float %1244 to double
  %1246 = fadd double %1245, 1.450000e+01
  %1247 = fmul double 3.370000e-02, %1246
  %1248 = call double @pow(double %1247, double 2.000000e+00) #5
  %1249 = fsub double -0.000000e+00, %1248
  %1250 = call double @exp(double %1249) #5
  %1251 = fmul double 1.970000e-02, %1250
  %1252 = fadd double %1251, 2.000000e-02
  %1253 = fdiv double 1.000000e+00, %1252
  %1254 = fptrunc double %1253 to float
  store float %1254, float* %tauf, align 4
  %1255 = load float* %dss, align 4
  %1256 = load float* %initvalu_4, align 4
  %1257 = fsub float %1255, %1256
  %1258 = load float* %taud, align 4
  %1259 = fdiv float %1257, %1258
  %1260 = load i32* %offset_4, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = load float** %6, align 8
  %1263 = getelementptr inbounds float* %1262, i64 %1261
  store float %1259, float* %1263, align 4
  %1264 = load float* %fss, align 4
  %1265 = load float* %initvalu_5, align 4
  %1266 = fsub float %1264, %1265
  %1267 = load float* %tauf, align 4
  %1268 = fdiv float %1266, %1267
  %1269 = load i32* %offset_5, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = load float** %6, align 8
  %1272 = getelementptr inbounds float* %1271, i64 %1270
  store float %1268, float* %1272, align 4
  %1273 = load float* %initvalu_36, align 4
  %1274 = fpext float %1273 to double
  %1275 = fmul double 1.700000e+00, %1274
  %1276 = load float* %initvalu_6, align 4
  %1277 = fsub float 1.000000e+00, %1276
  %1278 = fpext float %1277 to double
  %1279 = fmul double %1275, %1278
  %1280 = load float* %initvalu_6, align 4
  %1281 = fpext float %1280 to double
  %1282 = fmul double 1.190000e-02, %1281
  %1283 = fsub double %1279, %1282
  %1284 = fptrunc double %1283 to float
  %1285 = load i32* %offset_6, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = load float** %6, align 8
  %1288 = getelementptr inbounds float* %1287, i64 %1286
  store float %1284, float* %1288, align 4
  %1289 = load float* %initvalu_37, align 4
  %1290 = fpext float %1289 to double
  %1291 = fmul double 1.700000e+00, %1290
  %1292 = load float* %initvalu_7, align 4
  %1293 = fsub float 1.000000e+00, %1292
  %1294 = fpext float %1293 to double
  %1295 = fmul double %1291, %1294
  %1296 = load float* %initvalu_7, align 4
  %1297 = fpext float %1296 to double
  %1298 = fmul double 1.190000e-02, %1297
  %1299 = fsub double %1295, %1298
  %1300 = fptrunc double %1299 to float
  %1301 = load i32* %offset_7, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = load float** %6, align 8
  %1304 = getelementptr inbounds float* %1303, i64 %1302
  store float %1300, float* %1304, align 4
  %1305 = load float* %pCa, align 4
  %1306 = fmul float %1305, 4.000000e+00
  %1307 = load float* %initvalu_39, align 4
  %1308 = load float* %Frdy, align 4
  %1309 = fmul float %1307, %1308
  %1310 = load float* %FoRT, align 4
  %1311 = fmul float %1309, %1310
  %1312 = fmul float %1306, %1311
  %1313 = fpext float %1312 to double
  %1314 = load float* %initvalu_36, align 4
  %1315 = fpext float %1314 to double
  %1316 = fmul double 3.410000e-01, %1315
  %1317 = load float* %initvalu_39, align 4
  %1318 = fmul float 2.000000e+00, %1317
  %1319 = load float* %FoRT, align 4
  %1320 = fmul float %1318, %1319
  %1321 = fpext float %1320 to double
  %1322 = call double @exp(double %1321) #5
  %1323 = fmul double %1316, %1322
  %1324 = load float* %Cao, align 4
  %1325 = fpext float %1324 to double
  %1326 = fmul double 3.410000e-01, %1325
  %1327 = fsub double %1323, %1326
  %1328 = fmul double %1313, %1327
  %1329 = load float* %initvalu_39, align 4
  %1330 = fmul float 2.000000e+00, %1329
  %1331 = load float* %FoRT, align 4
  %1332 = fmul float %1330, %1331
  %1333 = fpext float %1332 to double
  %1334 = call double @exp(double %1333) #5
  %1335 = fsub double %1334, 1.000000e+00
  %1336 = fdiv double %1328, %1335
  %1337 = fptrunc double %1336 to float
  store float %1337, float* %ibarca_j, align 4
  %1338 = load float* %pCa, align 4
  %1339 = fmul float %1338, 4.000000e+00
  %1340 = load float* %initvalu_39, align 4
  %1341 = load float* %Frdy, align 4
  %1342 = fmul float %1340, %1341
  %1343 = load float* %FoRT, align 4
  %1344 = fmul float %1342, %1343
  %1345 = fmul float %1339, %1344
  %1346 = fpext float %1345 to double
  %1347 = load float* %initvalu_37, align 4
  %1348 = fpext float %1347 to double
  %1349 = fmul double 3.410000e-01, %1348
  %1350 = load float* %initvalu_39, align 4
  %1351 = fmul float 2.000000e+00, %1350
  %1352 = load float* %FoRT, align 4
  %1353 = fmul float %1351, %1352
  %1354 = fpext float %1353 to double
  %1355 = call double @exp(double %1354) #5
  %1356 = fmul double %1349, %1355
  %1357 = load float* %Cao, align 4
  %1358 = fpext float %1357 to double
  %1359 = fmul double 3.410000e-01, %1358
  %1360 = fsub double %1356, %1359
  %1361 = fmul double %1346, %1360
  %1362 = load float* %initvalu_39, align 4
  %1363 = fmul float 2.000000e+00, %1362
  %1364 = load float* %FoRT, align 4
  %1365 = fmul float %1363, %1364
  %1366 = fpext float %1365 to double
  %1367 = call double @exp(double %1366) #5
  %1368 = fsub double %1367, 1.000000e+00
  %1369 = fdiv double %1361, %1368
  %1370 = fptrunc double %1369 to float
  store float %1370, float* %ibarca_sl, align 4
  %1371 = load float* %pK, align 4
  %1372 = load float* %initvalu_39, align 4
  %1373 = load float* %Frdy, align 4
  %1374 = fmul float %1372, %1373
  %1375 = load float* %FoRT, align 4
  %1376 = fmul float %1374, %1375
  %1377 = fmul float %1371, %1376
  %1378 = fpext float %1377 to double
  %1379 = load float* %initvalu_35, align 4
  %1380 = fpext float %1379 to double
  %1381 = fmul double 7.500000e-01, %1380
  %1382 = load float* %initvalu_39, align 4
  %1383 = load float* %FoRT, align 4
  %1384 = fmul float %1382, %1383
  %1385 = fpext float %1384 to double
  %1386 = call double @exp(double %1385) #5
  %1387 = fmul double %1381, %1386
  %1388 = load float* %Ko, align 4
  %1389 = fpext float %1388 to double
  %1390 = fmul double 7.500000e-01, %1389
  %1391 = fsub double %1387, %1390
  %1392 = fmul double %1378, %1391
  %1393 = load float* %initvalu_39, align 4
  %1394 = load float* %FoRT, align 4
  %1395 = fmul float %1393, %1394
  %1396 = fpext float %1395 to double
  %1397 = call double @exp(double %1396) #5
  %1398 = fsub double %1397, 1.000000e+00
  %1399 = fdiv double %1392, %1398
  %1400 = fptrunc double %1399 to float
  store float %1400, float* %ibark, align 4
  %1401 = load float* %pNa, align 4
  %1402 = load float* %initvalu_39, align 4
  %1403 = load float* %Frdy, align 4
  %1404 = fmul float %1402, %1403
  %1405 = load float* %FoRT, align 4
  %1406 = fmul float %1404, %1405
  %1407 = fmul float %1401, %1406
  %1408 = fpext float %1407 to double
  %1409 = load float* %initvalu_32, align 4
  %1410 = fpext float %1409 to double
  %1411 = fmul double 7.500000e-01, %1410
  %1412 = load float* %initvalu_39, align 4
  %1413 = load float* %FoRT, align 4
  %1414 = fmul float %1412, %1413
  %1415 = fpext float %1414 to double
  %1416 = call double @exp(double %1415) #5
  %1417 = fmul double %1411, %1416
  %1418 = load float* %Nao, align 4
  %1419 = fpext float %1418 to double
  %1420 = fmul double 7.500000e-01, %1419
  %1421 = fsub double %1417, %1420
  %1422 = fmul double %1408, %1421
  %1423 = load float* %initvalu_39, align 4
  %1424 = load float* %FoRT, align 4
  %1425 = fmul float %1423, %1424
  %1426 = fpext float %1425 to double
  %1427 = call double @exp(double %1426) #5
  %1428 = fsub double %1427, 1.000000e+00
  %1429 = fdiv double %1422, %1428
  %1430 = fptrunc double %1429 to float
  store float %1430, float* %ibarna_j, align 4
  %1431 = load float* %pNa, align 4
  %1432 = load float* %initvalu_39, align 4
  %1433 = load float* %Frdy, align 4
  %1434 = fmul float %1432, %1433
  %1435 = load float* %FoRT, align 4
  %1436 = fmul float %1434, %1435
  %1437 = fmul float %1431, %1436
  %1438 = fpext float %1437 to double
  %1439 = load float* %initvalu_33, align 4
  %1440 = fpext float %1439 to double
  %1441 = fmul double 7.500000e-01, %1440
  %1442 = load float* %initvalu_39, align 4
  %1443 = load float* %FoRT, align 4
  %1444 = fmul float %1442, %1443
  %1445 = fpext float %1444 to double
  %1446 = call double @exp(double %1445) #5
  %1447 = fmul double %1441, %1446
  %1448 = load float* %Nao, align 4
  %1449 = fpext float %1448 to double
  %1450 = fmul double 7.500000e-01, %1449
  %1451 = fsub double %1447, %1450
  %1452 = fmul double %1438, %1451
  %1453 = load float* %initvalu_39, align 4
  %1454 = load float* %FoRT, align 4
  %1455 = fmul float %1453, %1454
  %1456 = fpext float %1455 to double
  %1457 = call double @exp(double %1456) #5
  %1458 = fsub double %1457, 1.000000e+00
  %1459 = fdiv double %1452, %1458
  %1460 = fptrunc double %1459 to float
  store float %1460, float* %ibarna_sl, align 4
  %1461 = load float* %Fjunc_CaL, align 4
  %1462 = load float* %ibarca_j, align 4
  %1463 = fmul float %1461, %1462
  %1464 = load float* %initvalu_4, align 4
  %1465 = fmul float %1463, %1464
  %1466 = load float* %initvalu_5, align 4
  %1467 = fmul float %1465, %1466
  %1468 = load float* %initvalu_6, align 4
  %1469 = fsub float 1.000000e+00, %1468
  %1470 = fmul float %1467, %1469
  %1471 = fpext float %1470 to double
  %1472 = load float* %Q10CaL, align 4
  %1473 = fpext float %1472 to double
  %1474 = load float* %Qpow, align 4
  %1475 = fpext float %1474 to double
  %1476 = call double @pow(double %1473, double %1475) #5
  %1477 = fmul double %1471, %1476
  %1478 = fmul double %1477, 4.500000e-01
  %1479 = fptrunc double %1478 to float
  store float %1479, float* %I_Ca_junc, align 4
  %1480 = load float* %Fsl_CaL, align 4
  %1481 = load float* %ibarca_sl, align 4
  %1482 = fmul float %1480, %1481
  %1483 = load float* %initvalu_4, align 4
  %1484 = fmul float %1482, %1483
  %1485 = load float* %initvalu_5, align 4
  %1486 = fmul float %1484, %1485
  %1487 = load float* %initvalu_7, align 4
  %1488 = fsub float 1.000000e+00, %1487
  %1489 = fmul float %1486, %1488
  %1490 = fpext float %1489 to double
  %1491 = load float* %Q10CaL, align 4
  %1492 = fpext float %1491 to double
  %1493 = load float* %Qpow, align 4
  %1494 = fpext float %1493 to double
  %1495 = call double @pow(double %1492, double %1494) #5
  %1496 = fmul double %1490, %1495
  %1497 = fmul double %1496, 4.500000e-01
  %1498 = fptrunc double %1497 to float
  store float %1498, float* %I_Ca_sl, align 4
  %1499 = load float* %I_Ca_junc, align 4
  %1500 = load float* %I_Ca_sl, align 4
  %1501 = fadd float %1499, %1500
  store float %1501, float* %I_Ca, align 4
  %1502 = load float* %I_Ca, align 4
  %1503 = fsub float -0.000000e+00, %1502
  %1504 = load float* %Cmem, align 4
  %1505 = fmul float %1503, %1504
  %1506 = load float* %Vmyo, align 4
  %1507 = fmul float %1506, 2.000000e+00
  %1508 = load float* %Frdy, align 4
  %1509 = fmul float %1507, %1508
  %1510 = fdiv float %1505, %1509
  %1511 = fpext float %1510 to double
  %1512 = fmul double %1511, 1.000000e+03
  %1513 = fptrunc double %1512 to float
  %1514 = load i32* %offset_43, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = load float** %6, align 8
  %1517 = getelementptr inbounds float* %1516, i64 %1515
  store float %1513, float* %1517, align 4
  %1518 = load float* %ibark, align 4
  %1519 = load float* %initvalu_4, align 4
  %1520 = fmul float %1518, %1519
  %1521 = load float* %initvalu_5, align 4
  %1522 = fmul float %1520, %1521
  %1523 = load float* %Fjunc_CaL, align 4
  %1524 = load float* %initvalu_6, align 4
  %1525 = fsub float 1.000000e+00, %1524
  %1526 = fmul float %1523, %1525
  %1527 = load float* %Fsl_CaL, align 4
  %1528 = load float* %initvalu_7, align 4
  %1529 = fsub float 1.000000e+00, %1528
  %1530 = fmul float %1527, %1529
  %1531 = fadd float %1526, %1530
  %1532 = fmul float %1522, %1531
  %1533 = fpext float %1532 to double
  %1534 = load float* %Q10CaL, align 4
  %1535 = fpext float %1534 to double
  %1536 = load float* %Qpow, align 4
  %1537 = fpext float %1536 to double
  %1538 = call double @pow(double %1535, double %1537) #5
  %1539 = fmul double %1533, %1538
  %1540 = fmul double %1539, 4.500000e-01
  %1541 = fptrunc double %1540 to float
  store float %1541, float* %I_CaK, align 4
  %1542 = load float* %Fjunc_CaL, align 4
  %1543 = load float* %ibarna_j, align 4
  %1544 = fmul float %1542, %1543
  %1545 = load float* %initvalu_4, align 4
  %1546 = fmul float %1544, %1545
  %1547 = load float* %initvalu_5, align 4
  %1548 = fmul float %1546, %1547
  %1549 = load float* %initvalu_6, align 4
  %1550 = fsub float 1.000000e+00, %1549
  %1551 = fmul float %1548, %1550
  %1552 = fpext float %1551 to double
  %1553 = load float* %Q10CaL, align 4
  %1554 = fpext float %1553 to double
  %1555 = load float* %Qpow, align 4
  %1556 = fpext float %1555 to double
  %1557 = call double @pow(double %1554, double %1556) #5
  %1558 = fmul double %1552, %1557
  %1559 = fmul double %1558, 4.500000e-01
  %1560 = fptrunc double %1559 to float
  store float %1560, float* %I_CaNa_junc, align 4
  %1561 = load float* %Fsl_CaL, align 4
  %1562 = load float* %ibarna_sl, align 4
  %1563 = fmul float %1561, %1562
  %1564 = load float* %initvalu_4, align 4
  %1565 = fmul float %1563, %1564
  %1566 = load float* %initvalu_5, align 4
  %1567 = fmul float %1565, %1566
  %1568 = load float* %initvalu_7, align 4
  %1569 = fsub float 1.000000e+00, %1568
  %1570 = fmul float %1567, %1569
  %1571 = fpext float %1570 to double
  %1572 = load float* %Q10CaL, align 4
  %1573 = fpext float %1572 to double
  %1574 = load float* %Qpow, align 4
  %1575 = fpext float %1574 to double
  %1576 = call double @pow(double %1573, double %1575) #5
  %1577 = fmul double %1571, %1576
  %1578 = fmul double %1577, 4.500000e-01
  %1579 = fptrunc double %1578 to float
  store float %1579, float* %I_CaNa_sl, align 4
  %1580 = load float* %I_CaNa_junc, align 4
  %1581 = load float* %I_CaNa_sl, align 4
  %1582 = fadd float %1580, %1581
  store float %1582, float* %I_CaNa, align 4
  %1583 = load float* %I_Ca, align 4
  %1584 = load float* %I_CaK, align 4
  %1585 = fadd float %1583, %1584
  %1586 = load float* %I_CaNa, align 4
  %1587 = fadd float %1585, %1586
  store float %1587, float* %I_Catot, align 4
  %1588 = load float* %Kdact, align 4
  %1589 = load float* %initvalu_36, align 4
  %1590 = fdiv float %1588, %1589
  %1591 = fpext float %1590 to double
  %1592 = call double @pow(double %1591, double 3.000000e+00) #5
  %1593 = fadd double 1.000000e+00, %1592
  %1594 = fdiv double 1.000000e+00, %1593
  %1595 = fptrunc double %1594 to float
  store float %1595, float* %Ka_junc, align 4
  %1596 = load float* %Kdact, align 4
  %1597 = load float* %initvalu_37, align 4
  %1598 = fdiv float %1596, %1597
  %1599 = fpext float %1598 to double
  %1600 = call double @pow(double %1599, double 3.000000e+00) #5
  %1601 = fadd double 1.000000e+00, %1600
  %1602 = fdiv double 1.000000e+00, %1601
  %1603 = fptrunc double %1602 to float
  store float %1603, float* %Ka_sl, align 4
  %1604 = load float* %nu, align 4
  %1605 = load float* %initvalu_39, align 4
  %1606 = fmul float %1604, %1605
  %1607 = load float* %FoRT, align 4
  %1608 = fmul float %1606, %1607
  %1609 = fpext float %1608 to double
  %1610 = call double @exp(double %1609) #5
  %1611 = load float* %initvalu_32, align 4
  %1612 = fpext float %1611 to double
  %1613 = call double @pow(double %1612, double 3.000000e+00) #5
  %1614 = fmul double %1610, %1613
  %1615 = load float* %Cao, align 4
  %1616 = fpext float %1615 to double
  %1617 = fmul double %1614, %1616
  %1618 = fptrunc double %1617 to float
  store float %1618, float* %s1_junc, align 4
  %1619 = load float* %nu, align 4
  %1620 = load float* %initvalu_39, align 4
  %1621 = fmul float %1619, %1620
  %1622 = load float* %FoRT, align 4
  %1623 = fmul float %1621, %1622
  %1624 = fpext float %1623 to double
  %1625 = call double @exp(double %1624) #5
  %1626 = load float* %initvalu_33, align 4
  %1627 = fpext float %1626 to double
  %1628 = call double @pow(double %1627, double 3.000000e+00) #5
  %1629 = fmul double %1625, %1628
  %1630 = load float* %Cao, align 4
  %1631 = fpext float %1630 to double
  %1632 = fmul double %1629, %1631
  %1633 = fptrunc double %1632 to float
  store float %1633, float* %s1_sl, align 4
  %1634 = load float* %nu, align 4
  %1635 = fsub float %1634, 1.000000e+00
  %1636 = load float* %initvalu_39, align 4
  %1637 = fmul float %1635, %1636
  %1638 = load float* %FoRT, align 4
  %1639 = fmul float %1637, %1638
  %1640 = fpext float %1639 to double
  %1641 = call double @exp(double %1640) #5
  %1642 = load float* %Nao, align 4
  %1643 = fpext float %1642 to double
  %1644 = call double @pow(double %1643, double 3.000000e+00) #5
  %1645 = fmul double %1641, %1644
  %1646 = load float* %initvalu_36, align 4
  %1647 = fpext float %1646 to double
  %1648 = fmul double %1645, %1647
  %1649 = fptrunc double %1648 to float
  store float %1649, float* %s2_junc, align 4
  %1650 = load float* %KmCai, align 4
  %1651 = fpext float %1650 to double
  %1652 = load float* %Nao, align 4
  %1653 = fpext float %1652 to double
  %1654 = call double @pow(double %1653, double 3.000000e+00) #5
  %1655 = fmul double %1651, %1654
  %1656 = load float* %initvalu_32, align 4
  %1657 = load float* %KmNai, align 4
  %1658 = fdiv float %1656, %1657
  %1659 = fpext float %1658 to double
  %1660 = call double @pow(double %1659, double 3.000000e+00) #5
  %1661 = fadd double 1.000000e+00, %1660
  %1662 = fmul double %1655, %1661
  %1663 = load float* %KmNao, align 4
  %1664 = fpext float %1663 to double
  %1665 = call double @pow(double %1664, double 3.000000e+00) #5
  %1666 = load float* %initvalu_36, align 4
  %1667 = fpext float %1666 to double
  %1668 = fmul double %1665, %1667
  %1669 = fadd double %1662, %1668
  %1670 = load float* %KmNai, align 4
  %1671 = fpext float %1670 to double
  %1672 = call double @pow(double %1671, double 3.000000e+00) #5
  %1673 = load float* %Cao, align 4
  %1674 = fpext float %1673 to double
  %1675 = fmul double %1672, %1674
  %1676 = load float* %initvalu_36, align 4
  %1677 = load float* %KmCai, align 4
  %1678 = fdiv float %1676, %1677
  %1679 = fadd float 1.000000e+00, %1678
  %1680 = fpext float %1679 to double
  %1681 = fmul double %1675, %1680
  %1682 = fadd double %1669, %1681
  %1683 = load float* %KmCao, align 4
  %1684 = fpext float %1683 to double
  %1685 = load float* %initvalu_32, align 4
  %1686 = fpext float %1685 to double
  %1687 = call double @pow(double %1686, double 3.000000e+00) #5
  %1688 = fmul double %1684, %1687
  %1689 = fadd double %1682, %1688
  %1690 = load float* %initvalu_32, align 4
  %1691 = fpext float %1690 to double
  %1692 = call double @pow(double %1691, double 3.000000e+00) #5
  %1693 = load float* %Cao, align 4
  %1694 = fpext float %1693 to double
  %1695 = fmul double %1692, %1694
  %1696 = fadd double %1689, %1695
  %1697 = load float* %Nao, align 4
  %1698 = fpext float %1697 to double
  %1699 = call double @pow(double %1698, double 3.000000e+00) #5
  %1700 = load float* %initvalu_36, align 4
  %1701 = fpext float %1700 to double
  %1702 = fmul double %1699, %1701
  %1703 = fadd double %1696, %1702
  %1704 = load float* %ksat, align 4
  %1705 = fpext float %1704 to double
  %1706 = load float* %nu, align 4
  %1707 = fsub float %1706, 1.000000e+00
  %1708 = load float* %initvalu_39, align 4
  %1709 = fmul float %1707, %1708
  %1710 = load float* %FoRT, align 4
  %1711 = fmul float %1709, %1710
  %1712 = fpext float %1711 to double
  %1713 = call double @exp(double %1712) #5
  %1714 = fmul double %1705, %1713
  %1715 = fadd double 1.000000e+00, %1714
  %1716 = fmul double %1703, %1715
  %1717 = fptrunc double %1716 to float
  store float %1717, float* %s3_junc, align 4
  %1718 = load float* %nu, align 4
  %1719 = fsub float %1718, 1.000000e+00
  %1720 = load float* %initvalu_39, align 4
  %1721 = fmul float %1719, %1720
  %1722 = load float* %FoRT, align 4
  %1723 = fmul float %1721, %1722
  %1724 = fpext float %1723 to double
  %1725 = call double @exp(double %1724) #5
  %1726 = load float* %Nao, align 4
  %1727 = fpext float %1726 to double
  %1728 = call double @pow(double %1727, double 3.000000e+00) #5
  %1729 = fmul double %1725, %1728
  %1730 = load float* %initvalu_37, align 4
  %1731 = fpext float %1730 to double
  %1732 = fmul double %1729, %1731
  %1733 = fptrunc double %1732 to float
  store float %1733, float* %s2_sl, align 4
  %1734 = load float* %KmCai, align 4
  %1735 = fpext float %1734 to double
  %1736 = load float* %Nao, align 4
  %1737 = fpext float %1736 to double
  %1738 = call double @pow(double %1737, double 3.000000e+00) #5
  %1739 = fmul double %1735, %1738
  %1740 = load float* %initvalu_33, align 4
  %1741 = load float* %KmNai, align 4
  %1742 = fdiv float %1740, %1741
  %1743 = fpext float %1742 to double
  %1744 = call double @pow(double %1743, double 3.000000e+00) #5
  %1745 = fadd double 1.000000e+00, %1744
  %1746 = fmul double %1739, %1745
  %1747 = load float* %KmNao, align 4
  %1748 = fpext float %1747 to double
  %1749 = call double @pow(double %1748, double 3.000000e+00) #5
  %1750 = load float* %initvalu_37, align 4
  %1751 = fpext float %1750 to double
  %1752 = fmul double %1749, %1751
  %1753 = fadd double %1746, %1752
  %1754 = load float* %KmNai, align 4
  %1755 = fpext float %1754 to double
  %1756 = call double @pow(double %1755, double 3.000000e+00) #5
  %1757 = load float* %Cao, align 4
  %1758 = fpext float %1757 to double
  %1759 = fmul double %1756, %1758
  %1760 = load float* %initvalu_37, align 4
  %1761 = load float* %KmCai, align 4
  %1762 = fdiv float %1760, %1761
  %1763 = fadd float 1.000000e+00, %1762
  %1764 = fpext float %1763 to double
  %1765 = fmul double %1759, %1764
  %1766 = fadd double %1753, %1765
  %1767 = load float* %KmCao, align 4
  %1768 = fpext float %1767 to double
  %1769 = load float* %initvalu_33, align 4
  %1770 = fpext float %1769 to double
  %1771 = call double @pow(double %1770, double 3.000000e+00) #5
  %1772 = fmul double %1768, %1771
  %1773 = fadd double %1766, %1772
  %1774 = load float* %initvalu_33, align 4
  %1775 = fpext float %1774 to double
  %1776 = call double @pow(double %1775, double 3.000000e+00) #5
  %1777 = load float* %Cao, align 4
  %1778 = fpext float %1777 to double
  %1779 = fmul double %1776, %1778
  %1780 = fadd double %1773, %1779
  %1781 = load float* %Nao, align 4
  %1782 = fpext float %1781 to double
  %1783 = call double @pow(double %1782, double 3.000000e+00) #5
  %1784 = load float* %initvalu_37, align 4
  %1785 = fpext float %1784 to double
  %1786 = fmul double %1783, %1785
  %1787 = fadd double %1780, %1786
  %1788 = load float* %ksat, align 4
  %1789 = fpext float %1788 to double
  %1790 = load float* %nu, align 4
  %1791 = fsub float %1790, 1.000000e+00
  %1792 = load float* %initvalu_39, align 4
  %1793 = fmul float %1791, %1792
  %1794 = load float* %FoRT, align 4
  %1795 = fmul float %1793, %1794
  %1796 = fpext float %1795 to double
  %1797 = call double @exp(double %1796) #5
  %1798 = fmul double %1789, %1797
  %1799 = fadd double 1.000000e+00, %1798
  %1800 = fmul double %1787, %1799
  %1801 = fptrunc double %1800 to float
  store float %1801, float* %s3_sl, align 4
  %1802 = load float* %Fjunc, align 4
  %1803 = load float* %IbarNCX, align 4
  %1804 = fmul float %1802, %1803
  %1805 = fpext float %1804 to double
  %1806 = load float* %Q10NCX, align 4
  %1807 = fpext float %1806 to double
  %1808 = load float* %Qpow, align 4
  %1809 = fpext float %1808 to double
  %1810 = call double @pow(double %1807, double %1809) #5
  %1811 = fmul double %1805, %1810
  %1812 = load float* %Ka_junc, align 4
  %1813 = fpext float %1812 to double
  %1814 = fmul double %1811, %1813
  %1815 = load float* %s1_junc, align 4
  %1816 = load float* %s2_junc, align 4
  %1817 = fsub float %1815, %1816
  %1818 = fpext float %1817 to double
  %1819 = fmul double %1814, %1818
  %1820 = load float* %s3_junc, align 4
  %1821 = fpext float %1820 to double
  %1822 = fdiv double %1819, %1821
  %1823 = fptrunc double %1822 to float
  store float %1823, float* %I_ncx_junc, align 4
  %1824 = load float* %Fsl, align 4
  %1825 = load float* %IbarNCX, align 4
  %1826 = fmul float %1824, %1825
  %1827 = fpext float %1826 to double
  %1828 = load float* %Q10NCX, align 4
  %1829 = fpext float %1828 to double
  %1830 = load float* %Qpow, align 4
  %1831 = fpext float %1830 to double
  %1832 = call double @pow(double %1829, double %1831) #5
  %1833 = fmul double %1827, %1832
  %1834 = load float* %Ka_sl, align 4
  %1835 = fpext float %1834 to double
  %1836 = fmul double %1833, %1835
  %1837 = load float* %s1_sl, align 4
  %1838 = load float* %s2_sl, align 4
  %1839 = fsub float %1837, %1838
  %1840 = fpext float %1839 to double
  %1841 = fmul double %1836, %1840
  %1842 = load float* %s3_sl, align 4
  %1843 = fpext float %1842 to double
  %1844 = fdiv double %1841, %1843
  %1845 = fptrunc double %1844 to float
  store float %1845, float* %I_ncx_sl, align 4
  %1846 = load float* %I_ncx_junc, align 4
  %1847 = load float* %I_ncx_sl, align 4
  %1848 = fadd float %1846, %1847
  store float %1848, float* %I_ncx, align 4
  %1849 = load float* %I_ncx, align 4
  %1850 = fmul float 2.000000e+00, %1849
  %1851 = load float* %Cmem, align 4
  %1852 = fmul float %1850, %1851
  %1853 = load float* %Vmyo, align 4
  %1854 = fmul float %1853, 2.000000e+00
  %1855 = load float* %Frdy, align 4
  %1856 = fmul float %1854, %1855
  %1857 = fdiv float %1852, %1856
  %1858 = fpext float %1857 to double
  %1859 = fmul double %1858, 1.000000e+03
  %1860 = fptrunc double %1859 to float
  %1861 = load i32* %offset_45, align 4
  %1862 = sext i32 %1861 to i64
  %1863 = load float** %6, align 8
  %1864 = getelementptr inbounds float* %1863, i64 %1862
  store float %1860, float* %1864, align 4
  %1865 = load float* %Fjunc, align 4
  %1866 = fpext float %1865 to double
  %1867 = load float* %Q10SLCaP, align 4
  %1868 = fpext float %1867 to double
  %1869 = load float* %Qpow, align 4
  %1870 = fpext float %1869 to double
  %1871 = call double @pow(double %1868, double %1870) #5
  %1872 = fmul double %1866, %1871
  %1873 = load float* %IbarSLCaP, align 4
  %1874 = fpext float %1873 to double
  %1875 = fmul double %1872, %1874
  %1876 = load float* %initvalu_36, align 4
  %1877 = fpext float %1876 to double
  %1878 = call double @pow(double %1877, double 1.600000e+00) #5
  %1879 = fmul double %1875, %1878
  %1880 = load float* %KmPCa, align 4
  %1881 = fpext float %1880 to double
  %1882 = call double @pow(double %1881, double 1.600000e+00) #5
  %1883 = load float* %initvalu_36, align 4
  %1884 = fpext float %1883 to double
  %1885 = call double @pow(double %1884, double 1.600000e+00) #5
  %1886 = fadd double %1882, %1885
  %1887 = fdiv double %1879, %1886
  %1888 = fptrunc double %1887 to float
  store float %1888, float* %I_pca_junc, align 4
  %1889 = load float* %Fsl, align 4
  %1890 = fpext float %1889 to double
  %1891 = load float* %Q10SLCaP, align 4
  %1892 = fpext float %1891 to double
  %1893 = load float* %Qpow, align 4
  %1894 = fpext float %1893 to double
  %1895 = call double @pow(double %1892, double %1894) #5
  %1896 = fmul double %1890, %1895
  %1897 = load float* %IbarSLCaP, align 4
  %1898 = fpext float %1897 to double
  %1899 = fmul double %1896, %1898
  %1900 = load float* %initvalu_37, align 4
  %1901 = fpext float %1900 to double
  %1902 = call double @pow(double %1901, double 1.600000e+00) #5
  %1903 = fmul double %1899, %1902
  %1904 = load float* %KmPCa, align 4
  %1905 = fpext float %1904 to double
  %1906 = call double @pow(double %1905, double 1.600000e+00) #5
  %1907 = load float* %initvalu_37, align 4
  %1908 = fpext float %1907 to double
  %1909 = call double @pow(double %1908, double 1.600000e+00) #5
  %1910 = fadd double %1906, %1909
  %1911 = fdiv double %1903, %1910
  %1912 = fptrunc double %1911 to float
  store float %1912, float* %I_pca_sl, align 4
  %1913 = load float* %I_pca_junc, align 4
  %1914 = load float* %I_pca_sl, align 4
  %1915 = fadd float %1913, %1914
  store float %1915, float* %I_pca, align 4
  %1916 = load float* %I_pca, align 4
  %1917 = fsub float -0.000000e+00, %1916
  %1918 = load float* %Cmem, align 4
  %1919 = fmul float %1917, %1918
  %1920 = load float* %Vmyo, align 4
  %1921 = fmul float %1920, 2.000000e+00
  %1922 = load float* %Frdy, align 4
  %1923 = fmul float %1921, %1922
  %1924 = fdiv float %1919, %1923
  %1925 = fpext float %1924 to double
  %1926 = fmul double %1925, 1.000000e+03
  %1927 = fptrunc double %1926 to float
  %1928 = load i32* %offset_44, align 4
  %1929 = sext i32 %1928 to i64
  %1930 = load float** %6, align 8
  %1931 = getelementptr inbounds float* %1930, i64 %1929
  store float %1927, float* %1931, align 4
  %1932 = load float* %Fjunc, align 4
  %1933 = load float* %GCaB, align 4
  %1934 = fmul float %1932, %1933
  %1935 = load float* %initvalu_39, align 4
  %1936 = load float* %eca_junc, align 4
  %1937 = fsub float %1935, %1936
  %1938 = fmul float %1934, %1937
  store float %1938, float* %I_cabk_junc, align 4
  %1939 = load float* %Fsl, align 4
  %1940 = load float* %GCaB, align 4
  %1941 = fmul float %1939, %1940
  %1942 = load float* %initvalu_39, align 4
  %1943 = load float* %eca_sl, align 4
  %1944 = fsub float %1942, %1943
  %1945 = fmul float %1941, %1944
  store float %1945, float* %I_cabk_sl, align 4
  %1946 = load float* %I_cabk_junc, align 4
  %1947 = load float* %I_cabk_sl, align 4
  %1948 = fadd float %1946, %1947
  store float %1948, float* %I_cabk, align 4
  %1949 = load float* %I_cabk, align 4
  %1950 = fsub float -0.000000e+00, %1949
  %1951 = load float* %Cmem, align 4
  %1952 = fmul float %1950, %1951
  %1953 = load float* %Vmyo, align 4
  %1954 = fmul float %1953, 2.000000e+00
  %1955 = load float* %Frdy, align 4
  %1956 = fmul float %1954, %1955
  %1957 = fdiv float %1952, %1956
  %1958 = fpext float %1957 to double
  %1959 = fmul double %1958, 1.000000e+03
  %1960 = fptrunc double %1959 to float
  %1961 = load i32* %offset_46, align 4
  %1962 = sext i32 %1961 to i64
  %1963 = load float** %6, align 8
  %1964 = getelementptr inbounds float* %1963, i64 %1962
  store float %1960, float* %1964, align 4
  store float 1.500000e+01, float* %MaxSR, align 4
  store float 1.000000e+00, float* %MinSR, align 4
  %1965 = load float* %MaxSR, align 4
  %1966 = fpext float %1965 to double
  %1967 = load float* %MaxSR, align 4
  %1968 = load float* %MinSR, align 4
  %1969 = fsub float %1967, %1968
  %1970 = fpext float %1969 to double
  %1971 = load float* %ec50SR, align 4
  %1972 = load float* %initvalu_31, align 4
  %1973 = fdiv float %1971, %1972
  %1974 = fpext float %1973 to double
  %1975 = call double @pow(double %1974, double 2.500000e+00) #5
  %1976 = fadd double 1.000000e+00, %1975
  %1977 = fdiv double %1970, %1976
  %1978 = fsub double %1966, %1977
  %1979 = fptrunc double %1978 to float
  store float %1979, float* %kCaSR, align 4
  %1980 = load float* %koCa, align 4
  %1981 = load float* %kCaSR, align 4
  %1982 = fdiv float %1980, %1981
  store float %1982, float* %koSRCa, align 4
  %1983 = load float* %kiCa, align 4
  %1984 = load float* %kCaSR, align 4
  %1985 = fmul float %1983, %1984
  store float %1985, float* %kiSRCa, align 4
  %1986 = load float* %initvalu_14, align 4
  %1987 = fsub float 1.000000e+00, %1986
  %1988 = load float* %initvalu_15, align 4
  %1989 = fsub float %1987, %1988
  %1990 = load float* %initvalu_16, align 4
  %1991 = fsub float %1989, %1990
  store float %1991, float* %RI, align 4
  %1992 = load float* %kim, align 4
  %1993 = load float* %RI, align 4
  %1994 = fmul float %1992, %1993
  %1995 = load float* %kiSRCa, align 4
  %1996 = load float* %initvalu_36, align 4
  %1997 = fmul float %1995, %1996
  %1998 = load float* %initvalu_14, align 4
  %1999 = fmul float %1997, %1998
  %2000 = fsub float %1994, %1999
  %2001 = fpext float %2000 to double
  %2002 = load float* %koSRCa, align 4
  %2003 = fpext float %2002 to double
  %2004 = load float* %initvalu_36, align 4
  %2005 = fpext float %2004 to double
  %2006 = call double @pow(double %2005, double 2.000000e+00) #5
  %2007 = fmul double %2003, %2006
  %2008 = load float* %initvalu_14, align 4
  %2009 = fpext float %2008 to double
  %2010 = fmul double %2007, %2009
  %2011 = load float* %kom, align 4
  %2012 = load float* %initvalu_15, align 4
  %2013 = fmul float %2011, %2012
  %2014 = fpext float %2013 to double
  %2015 = fsub double %2010, %2014
  %2016 = fsub double %2001, %2015
  %2017 = fptrunc double %2016 to float
  %2018 = load i32* %offset_14, align 4
  %2019 = sext i32 %2018 to i64
  %2020 = load float** %6, align 8
  %2021 = getelementptr inbounds float* %2020, i64 %2019
  store float %2017, float* %2021, align 4
  %2022 = load float* %koSRCa, align 4
  %2023 = fpext float %2022 to double
  %2024 = load float* %initvalu_36, align 4
  %2025 = fpext float %2024 to double
  %2026 = call double @pow(double %2025, double 2.000000e+00) #5
  %2027 = fmul double %2023, %2026
  %2028 = load float* %initvalu_14, align 4
  %2029 = fpext float %2028 to double
  %2030 = fmul double %2027, %2029
  %2031 = load float* %kom, align 4
  %2032 = load float* %initvalu_15, align 4
  %2033 = fmul float %2031, %2032
  %2034 = fpext float %2033 to double
  %2035 = fsub double %2030, %2034
  %2036 = load float* %kiSRCa, align 4
  %2037 = load float* %initvalu_36, align 4
  %2038 = fmul float %2036, %2037
  %2039 = load float* %initvalu_15, align 4
  %2040 = fmul float %2038, %2039
  %2041 = load float* %kim, align 4
  %2042 = load float* %initvalu_16, align 4
  %2043 = fmul float %2041, %2042
  %2044 = fsub float %2040, %2043
  %2045 = fpext float %2044 to double
  %2046 = fsub double %2035, %2045
  %2047 = fptrunc double %2046 to float
  %2048 = load i32* %offset_15, align 4
  %2049 = sext i32 %2048 to i64
  %2050 = load float** %6, align 8
  %2051 = getelementptr inbounds float* %2050, i64 %2049
  store float %2047, float* %2051, align 4
  %2052 = load float* %kiSRCa, align 4
  %2053 = load float* %initvalu_36, align 4
  %2054 = fmul float %2052, %2053
  %2055 = load float* %initvalu_15, align 4
  %2056 = fmul float %2054, %2055
  %2057 = load float* %kim, align 4
  %2058 = load float* %initvalu_16, align 4
  %2059 = fmul float %2057, %2058
  %2060 = fsub float %2056, %2059
  %2061 = fpext float %2060 to double
  %2062 = load float* %kom, align 4
  %2063 = load float* %initvalu_16, align 4
  %2064 = fmul float %2062, %2063
  %2065 = fpext float %2064 to double
  %2066 = load float* %koSRCa, align 4
  %2067 = fpext float %2066 to double
  %2068 = load float* %initvalu_36, align 4
  %2069 = fpext float %2068 to double
  %2070 = call double @pow(double %2069, double 2.000000e+00) #5
  %2071 = fmul double %2067, %2070
  %2072 = load float* %RI, align 4
  %2073 = fpext float %2072 to double
  %2074 = fmul double %2071, %2073
  %2075 = fsub double %2065, %2074
  %2076 = fsub double %2061, %2075
  %2077 = fptrunc double %2076 to float
  %2078 = load i32* %offset_16, align 4
  %2079 = sext i32 %2078 to i64
  %2080 = load float** %6, align 8
  %2081 = getelementptr inbounds float* %2080, i64 %2079
  store float %2077, float* %2081, align 4
  %2082 = load float* %ks, align 4
  %2083 = load float* %initvalu_15, align 4
  %2084 = fmul float %2082, %2083
  %2085 = load float* %initvalu_31, align 4
  %2086 = load float* %initvalu_36, align 4
  %2087 = fsub float %2085, %2086
  %2088 = fmul float %2084, %2087
  store float %2088, float* %J_SRCarel, align 4
  %2089 = load float* %Q10SRCaP, align 4
  %2090 = fpext float %2089 to double
  %2091 = load float* %Qpow, align 4
  %2092 = fpext float %2091 to double
  %2093 = call double @pow(double %2090, double %2092) #5
  %2094 = load float* %Vmax_SRCaP, align 4
  %2095 = fpext float %2094 to double
  %2096 = fmul double %2093, %2095
  %2097 = load float* %initvalu_38, align 4
  %2098 = load float* %Kmf, align 4
  %2099 = fdiv float %2097, %2098
  %2100 = fpext float %2099 to double
  %2101 = load float* %hillSRCaP, align 4
  %2102 = fpext float %2101 to double
  %2103 = call double @pow(double %2100, double %2102) #5
  %2104 = load float* %initvalu_31, align 4
  %2105 = load float* %Kmr, align 4
  %2106 = fdiv float %2104, %2105
  %2107 = fpext float %2106 to double
  %2108 = load float* %hillSRCaP, align 4
  %2109 = fpext float %2108 to double
  %2110 = call double @pow(double %2107, double %2109) #5
  %2111 = fsub double %2103, %2110
  %2112 = fmul double %2096, %2111
  %2113 = load float* %initvalu_38, align 4
  %2114 = load float* %Kmf, align 4
  %2115 = fdiv float %2113, %2114
  %2116 = fpext float %2115 to double
  %2117 = load float* %hillSRCaP, align 4
  %2118 = fpext float %2117 to double
  %2119 = call double @pow(double %2116, double %2118) #5
  %2120 = fadd double 1.000000e+00, %2119
  %2121 = load float* %initvalu_31, align 4
  %2122 = load float* %Kmr, align 4
  %2123 = fdiv float %2121, %2122
  %2124 = fpext float %2123 to double
  %2125 = load float* %hillSRCaP, align 4
  %2126 = fpext float %2125 to double
  %2127 = call double @pow(double %2124, double %2126) #5
  %2128 = fadd double %2120, %2127
  %2129 = fdiv double %2112, %2128
  %2130 = fptrunc double %2129 to float
  store float %2130, float* %J_serca, align 4
  %2131 = load float* %initvalu_31, align 4
  %2132 = load float* %initvalu_36, align 4
  %2133 = fsub float %2131, %2132
  %2134 = fpext float %2133 to double
  %2135 = fmul double 5.348000e-06, %2134
  %2136 = fptrunc double %2135 to float
  store float %2136, float* %J_SRleak, align 4
  %2137 = load float* %kon_na, align 4
  %2138 = load float* %initvalu_32, align 4
  %2139 = fmul float %2137, %2138
  %2140 = load float* %Bmax_Naj, align 4
  %2141 = load float* %initvalu_17, align 4
  %2142 = fsub float %2140, %2141
  %2143 = fmul float %2139, %2142
  %2144 = load float* %koff_na, align 4
  %2145 = load float* %initvalu_17, align 4
  %2146 = fmul float %2144, %2145
  %2147 = fsub float %2143, %2146
  %2148 = load i32* %offset_17, align 4
  %2149 = sext i32 %2148 to i64
  %2150 = load float** %6, align 8
  %2151 = getelementptr inbounds float* %2150, i64 %2149
  store float %2147, float* %2151, align 4
  %2152 = load float* %kon_na, align 4
  %2153 = load float* %initvalu_33, align 4
  %2154 = fmul float %2152, %2153
  %2155 = load float* %Bmax_Nasl, align 4
  %2156 = load float* %initvalu_18, align 4
  %2157 = fsub float %2155, %2156
  %2158 = fmul float %2154, %2157
  %2159 = load float* %koff_na, align 4
  %2160 = load float* %initvalu_18, align 4
  %2161 = fmul float %2159, %2160
  %2162 = fsub float %2158, %2161
  %2163 = load i32* %offset_18, align 4
  %2164 = sext i32 %2163 to i64
  %2165 = load float** %6, align 8
  %2166 = getelementptr inbounds float* %2165, i64 %2164
  store float %2162, float* %2166, align 4
  %2167 = load float* %kon_tncl, align 4
  %2168 = load float* %initvalu_38, align 4
  %2169 = fmul float %2167, %2168
  %2170 = load float* %Bmax_TnClow, align 4
  %2171 = load float* %initvalu_19, align 4
  %2172 = fsub float %2170, %2171
  %2173 = fmul float %2169, %2172
  %2174 = load float* %koff_tncl, align 4
  %2175 = load float* %initvalu_19, align 4
  %2176 = fmul float %2174, %2175
  %2177 = fsub float %2173, %2176
  %2178 = load i32* %offset_19, align 4
  %2179 = sext i32 %2178 to i64
  %2180 = load float** %6, align 8
  %2181 = getelementptr inbounds float* %2180, i64 %2179
  store float %2177, float* %2181, align 4
  %2182 = load float* %kon_tnchca, align 4
  %2183 = load float* %initvalu_38, align 4
  %2184 = fmul float %2182, %2183
  %2185 = load float* %Bmax_TnChigh, align 4
  %2186 = load float* %initvalu_20, align 4
  %2187 = fsub float %2185, %2186
  %2188 = load float* %initvalu_21, align 4
  %2189 = fsub float %2187, %2188
  %2190 = fmul float %2184, %2189
  %2191 = load float* %koff_tnchca, align 4
  %2192 = load float* %initvalu_20, align 4
  %2193 = fmul float %2191, %2192
  %2194 = fsub float %2190, %2193
  %2195 = load i32* %offset_20, align 4
  %2196 = sext i32 %2195 to i64
  %2197 = load float** %6, align 8
  %2198 = getelementptr inbounds float* %2197, i64 %2196
  store float %2194, float* %2198, align 4
  %2199 = load float* %kon_tnchmg, align 4
  %2200 = load float* %Mgi, align 4
  %2201 = fmul float %2199, %2200
  %2202 = load float* %Bmax_TnChigh, align 4
  %2203 = load float* %initvalu_20, align 4
  %2204 = fsub float %2202, %2203
  %2205 = load float* %initvalu_21, align 4
  %2206 = fsub float %2204, %2205
  %2207 = fmul float %2201, %2206
  %2208 = load float* %koff_tnchmg, align 4
  %2209 = load float* %initvalu_21, align 4
  %2210 = fmul float %2208, %2209
  %2211 = fsub float %2207, %2210
  %2212 = load i32* %offset_21, align 4
  %2213 = sext i32 %2212 to i64
  %2214 = load float** %6, align 8
  %2215 = getelementptr inbounds float* %2214, i64 %2213
  store float %2211, float* %2215, align 4
  %2216 = load i32* %offset_22, align 4
  %2217 = sext i32 %2216 to i64
  %2218 = load float** %6, align 8
  %2219 = getelementptr inbounds float* %2218, i64 %2217
  store float 0.000000e+00, float* %2219, align 4
  %2220 = load float* %kon_myoca, align 4
  %2221 = load float* %initvalu_38, align 4
  %2222 = fmul float %2220, %2221
  %2223 = load float* %Bmax_myosin, align 4
  %2224 = load float* %initvalu_23, align 4
  %2225 = fsub float %2223, %2224
  %2226 = load float* %initvalu_24, align 4
  %2227 = fsub float %2225, %2226
  %2228 = fmul float %2222, %2227
  %2229 = load float* %koff_myoca, align 4
  %2230 = load float* %initvalu_23, align 4
  %2231 = fmul float %2229, %2230
  %2232 = fsub float %2228, %2231
  %2233 = load i32* %offset_23, align 4
  %2234 = sext i32 %2233 to i64
  %2235 = load float** %6, align 8
  %2236 = getelementptr inbounds float* %2235, i64 %2234
  store float %2232, float* %2236, align 4
  %2237 = load float* %kon_myomg, align 4
  %2238 = load float* %Mgi, align 4
  %2239 = fmul float %2237, %2238
  %2240 = load float* %Bmax_myosin, align 4
  %2241 = load float* %initvalu_23, align 4
  %2242 = fsub float %2240, %2241
  %2243 = load float* %initvalu_24, align 4
  %2244 = fsub float %2242, %2243
  %2245 = fmul float %2239, %2244
  %2246 = load float* %koff_myomg, align 4
  %2247 = load float* %initvalu_24, align 4
  %2248 = fmul float %2246, %2247
  %2249 = fsub float %2245, %2248
  %2250 = load i32* %offset_24, align 4
  %2251 = sext i32 %2250 to i64
  %2252 = load float** %6, align 8
  %2253 = getelementptr inbounds float* %2252, i64 %2251
  store float %2249, float* %2253, align 4
  %2254 = load float* %kon_sr, align 4
  %2255 = load float* %initvalu_38, align 4
  %2256 = fmul float %2254, %2255
  %2257 = load float* %Bmax_SR, align 4
  %2258 = load float* %initvalu_25, align 4
  %2259 = fsub float %2257, %2258
  %2260 = fmul float %2256, %2259
  %2261 = load float* %koff_sr, align 4
  %2262 = load float* %initvalu_25, align 4
  %2263 = fmul float %2261, %2262
  %2264 = fsub float %2260, %2263
  %2265 = load i32* %offset_25, align 4
  %2266 = sext i32 %2265 to i64
  %2267 = load float** %6, align 8
  %2268 = getelementptr inbounds float* %2267, i64 %2266
  store float %2264, float* %2268, align 4
  %2269 = load i32* %offset_19, align 4
  %2270 = sext i32 %2269 to i64
  %2271 = load float** %6, align 8
  %2272 = getelementptr inbounds float* %2271, i64 %2270
  %2273 = load float* %2272, align 4
  %2274 = load i32* %offset_20, align 4
  %2275 = sext i32 %2274 to i64
  %2276 = load float** %6, align 8
  %2277 = getelementptr inbounds float* %2276, i64 %2275
  %2278 = load float* %2277, align 4
  %2279 = fadd float %2273, %2278
  %2280 = load i32* %offset_21, align 4
  %2281 = sext i32 %2280 to i64
  %2282 = load float** %6, align 8
  %2283 = getelementptr inbounds float* %2282, i64 %2281
  %2284 = load float* %2283, align 4
  %2285 = fadd float %2279, %2284
  %2286 = load i32* %offset_22, align 4
  %2287 = sext i32 %2286 to i64
  %2288 = load float** %6, align 8
  %2289 = getelementptr inbounds float* %2288, i64 %2287
  %2290 = load float* %2289, align 4
  %2291 = fadd float %2285, %2290
  %2292 = load i32* %offset_23, align 4
  %2293 = sext i32 %2292 to i64
  %2294 = load float** %6, align 8
  %2295 = getelementptr inbounds float* %2294, i64 %2293
  %2296 = load float* %2295, align 4
  %2297 = fadd float %2291, %2296
  %2298 = load i32* %offset_24, align 4
  %2299 = sext i32 %2298 to i64
  %2300 = load float** %6, align 8
  %2301 = getelementptr inbounds float* %2300, i64 %2299
  %2302 = load float* %2301, align 4
  %2303 = fadd float %2297, %2302
  %2304 = load i32* %offset_25, align 4
  %2305 = sext i32 %2304 to i64
  %2306 = load float** %6, align 8
  %2307 = getelementptr inbounds float* %2306, i64 %2305
  %2308 = load float* %2307, align 4
  %2309 = fadd float %2303, %2308
  store float %2309, float* %J_CaB_cytosol, align 4
  %2310 = load float* %kon_sll, align 4
  %2311 = load float* %initvalu_36, align 4
  %2312 = fmul float %2310, %2311
  %2313 = load float* %Bmax_SLlowj, align 4
  %2314 = load float* %initvalu_26, align 4
  %2315 = fsub float %2313, %2314
  %2316 = fmul float %2312, %2315
  %2317 = load float* %koff_sll, align 4
  %2318 = load float* %initvalu_26, align 4
  %2319 = fmul float %2317, %2318
  %2320 = fsub float %2316, %2319
  %2321 = load i32* %offset_26, align 4
  %2322 = sext i32 %2321 to i64
  %2323 = load float** %6, align 8
  %2324 = getelementptr inbounds float* %2323, i64 %2322
  store float %2320, float* %2324, align 4
  %2325 = load float* %kon_sll, align 4
  %2326 = load float* %initvalu_37, align 4
  %2327 = fmul float %2325, %2326
  %2328 = load float* %Bmax_SLlowsl, align 4
  %2329 = load float* %initvalu_27, align 4
  %2330 = fsub float %2328, %2329
  %2331 = fmul float %2327, %2330
  %2332 = load float* %koff_sll, align 4
  %2333 = load float* %initvalu_27, align 4
  %2334 = fmul float %2332, %2333
  %2335 = fsub float %2331, %2334
  %2336 = load i32* %offset_27, align 4
  %2337 = sext i32 %2336 to i64
  %2338 = load float** %6, align 8
  %2339 = getelementptr inbounds float* %2338, i64 %2337
  store float %2335, float* %2339, align 4
  %2340 = load float* %kon_slh, align 4
  %2341 = load float* %initvalu_36, align 4
  %2342 = fmul float %2340, %2341
  %2343 = load float* %Bmax_SLhighj, align 4
  %2344 = load float* %initvalu_28, align 4
  %2345 = fsub float %2343, %2344
  %2346 = fmul float %2342, %2345
  %2347 = load float* %koff_slh, align 4
  %2348 = load float* %initvalu_28, align 4
  %2349 = fmul float %2347, %2348
  %2350 = fsub float %2346, %2349
  %2351 = load i32* %offset_28, align 4
  %2352 = sext i32 %2351 to i64
  %2353 = load float** %6, align 8
  %2354 = getelementptr inbounds float* %2353, i64 %2352
  store float %2350, float* %2354, align 4
  %2355 = load float* %kon_slh, align 4
  %2356 = load float* %initvalu_37, align 4
  %2357 = fmul float %2355, %2356
  %2358 = load float* %Bmax_SLhighsl, align 4
  %2359 = load float* %initvalu_29, align 4
  %2360 = fsub float %2358, %2359
  %2361 = fmul float %2357, %2360
  %2362 = load float* %koff_slh, align 4
  %2363 = load float* %initvalu_29, align 4
  %2364 = fmul float %2362, %2363
  %2365 = fsub float %2361, %2364
  %2366 = load i32* %offset_29, align 4
  %2367 = sext i32 %2366 to i64
  %2368 = load float** %6, align 8
  %2369 = getelementptr inbounds float* %2368, i64 %2367
  store float %2365, float* %2369, align 4
  %2370 = load i32* %offset_26, align 4
  %2371 = sext i32 %2370 to i64
  %2372 = load float** %6, align 8
  %2373 = getelementptr inbounds float* %2372, i64 %2371
  %2374 = load float* %2373, align 4
  %2375 = load i32* %offset_28, align 4
  %2376 = sext i32 %2375 to i64
  %2377 = load float** %6, align 8
  %2378 = getelementptr inbounds float* %2377, i64 %2376
  %2379 = load float* %2378, align 4
  %2380 = fadd float %2374, %2379
  store float %2380, float* %J_CaB_junction, align 4
  %2381 = load i32* %offset_27, align 4
  %2382 = sext i32 %2381 to i64
  %2383 = load float** %6, align 8
  %2384 = getelementptr inbounds float* %2383, i64 %2382
  %2385 = load float* %2384, align 4
  %2386 = load i32* %offset_29, align 4
  %2387 = sext i32 %2386 to i64
  %2388 = load float** %6, align 8
  %2389 = getelementptr inbounds float* %2388, i64 %2387
  %2390 = load float* %2389, align 4
  %2391 = fadd float %2385, %2390
  store float %2391, float* %J_CaB_sl, align 4
  %2392 = load float* %kon_csqn, align 4
  %2393 = load float* %initvalu_31, align 4
  %2394 = fmul float %2392, %2393
  %2395 = load float* %Bmax_Csqn, align 4
  %2396 = load float* %initvalu_30, align 4
  %2397 = fsub float %2395, %2396
  %2398 = fmul float %2394, %2397
  %2399 = load float* %koff_csqn, align 4
  %2400 = load float* %initvalu_30, align 4
  %2401 = fmul float %2399, %2400
  %2402 = fsub float %2398, %2401
  %2403 = load i32* %offset_30, align 4
  %2404 = sext i32 %2403 to i64
  %2405 = load float** %6, align 8
  %2406 = getelementptr inbounds float* %2405, i64 %2404
  store float %2402, float* %2406, align 4
  %2407 = load float* %Vsr, align 4
  %2408 = fdiv float 1.000000e+00, %2407
  store float %2408, float* %oneovervsr, align 4
  %2409 = load float* %J_serca, align 4
  %2410 = load float* %Vmyo, align 4
  %2411 = fmul float %2409, %2410
  %2412 = load float* %oneovervsr, align 4
  %2413 = fmul float %2411, %2412
  %2414 = load float* %J_SRleak, align 4
  %2415 = load float* %Vmyo, align 4
  %2416 = fmul float %2414, %2415
  %2417 = load float* %oneovervsr, align 4
  %2418 = fmul float %2416, %2417
  %2419 = load float* %J_SRCarel, align 4
  %2420 = fadd float %2418, %2419
  %2421 = fsub float %2413, %2420
  %2422 = load i32* %offset_30, align 4
  %2423 = sext i32 %2422 to i64
  %2424 = load float** %6, align 8
  %2425 = getelementptr inbounds float* %2424, i64 %2423
  %2426 = load float* %2425, align 4
  %2427 = fsub float %2421, %2426
  %2428 = load i32* %offset_31, align 4
  %2429 = sext i32 %2428 to i64
  %2430 = load float** %6, align 8
  %2431 = getelementptr inbounds float* %2430, i64 %2429
  store float %2427, float* %2431, align 4
  %2432 = load float* %I_Na_junc, align 4
  %2433 = load float* %I_nabk_junc, align 4
  %2434 = fadd float %2432, %2433
  %2435 = load float* %I_ncx_junc, align 4
  %2436 = fmul float 3.000000e+00, %2435
  %2437 = fadd float %2434, %2436
  %2438 = load float* %I_nak_junc, align 4
  %2439 = fmul float 3.000000e+00, %2438
  %2440 = fadd float %2437, %2439
  %2441 = load float* %I_CaNa_junc, align 4
  %2442 = fadd float %2440, %2441
  store float %2442, float* %I_Na_tot_junc, align 4
  %2443 = load float* %I_Na_sl, align 4
  %2444 = load float* %I_nabk_sl, align 4
  %2445 = fadd float %2443, %2444
  %2446 = load float* %I_ncx_sl, align 4
  %2447 = fmul float 3.000000e+00, %2446
  %2448 = fadd float %2445, %2447
  %2449 = load float* %I_nak_sl, align 4
  %2450 = fmul float 3.000000e+00, %2449
  %2451 = fadd float %2448, %2450
  %2452 = load float* %I_CaNa_sl, align 4
  %2453 = fadd float %2451, %2452
  store float %2453, float* %I_Na_tot_sl, align 4
  %2454 = load float* %I_Na_tot_junc, align 4
  %2455 = fsub float -0.000000e+00, %2454
  %2456 = load float* %Cmem, align 4
  %2457 = fmul float %2455, %2456
  %2458 = load float* %Vjunc, align 4
  %2459 = load float* %Frdy, align 4
  %2460 = fmul float %2458, %2459
  %2461 = fdiv float %2457, %2460
  %2462 = load float* %J_na_juncsl, align 4
  %2463 = load float* %Vjunc, align 4
  %2464 = fdiv float %2462, %2463
  %2465 = load float* %initvalu_33, align 4
  %2466 = load float* %initvalu_32, align 4
  %2467 = fsub float %2465, %2466
  %2468 = fmul float %2464, %2467
  %2469 = fadd float %2461, %2468
  %2470 = load i32* %offset_17, align 4
  %2471 = sext i32 %2470 to i64
  %2472 = load float** %6, align 8
  %2473 = getelementptr inbounds float* %2472, i64 %2471
  %2474 = load float* %2473, align 4
  %2475 = fsub float %2469, %2474
  %2476 = load i32* %offset_32, align 4
  %2477 = sext i32 %2476 to i64
  %2478 = load float** %6, align 8
  %2479 = getelementptr inbounds float* %2478, i64 %2477
  store float %2475, float* %2479, align 4
  %2480 = load float* %Vsl, align 4
  %2481 = fdiv float 1.000000e+00, %2480
  store float %2481, float* %oneovervsl, align 4
  %2482 = load float* %I_Na_tot_sl, align 4
  %2483 = fsub float -0.000000e+00, %2482
  %2484 = load float* %Cmem, align 4
  %2485 = fmul float %2483, %2484
  %2486 = load float* %oneovervsl, align 4
  %2487 = fmul float %2485, %2486
  %2488 = load float* %Frdy, align 4
  %2489 = fdiv float %2487, %2488
  %2490 = load float* %J_na_juncsl, align 4
  %2491 = load float* %oneovervsl, align 4
  %2492 = fmul float %2490, %2491
  %2493 = load float* %initvalu_32, align 4
  %2494 = load float* %initvalu_33, align 4
  %2495 = fsub float %2493, %2494
  %2496 = fmul float %2492, %2495
  %2497 = fadd float %2489, %2496
  %2498 = load float* %J_na_slmyo, align 4
  %2499 = load float* %oneovervsl, align 4
  %2500 = fmul float %2498, %2499
  %2501 = load float* %initvalu_34, align 4
  %2502 = load float* %initvalu_33, align 4
  %2503 = fsub float %2501, %2502
  %2504 = fmul float %2500, %2503
  %2505 = fadd float %2497, %2504
  %2506 = load i32* %offset_18, align 4
  %2507 = sext i32 %2506 to i64
  %2508 = load float** %6, align 8
  %2509 = getelementptr inbounds float* %2508, i64 %2507
  %2510 = load float* %2509, align 4
  %2511 = fsub float %2505, %2510
  %2512 = load i32* %offset_33, align 4
  %2513 = sext i32 %2512 to i64
  %2514 = load float** %6, align 8
  %2515 = getelementptr inbounds float* %2514, i64 %2513
  store float %2511, float* %2515, align 4
  %2516 = load float* %J_na_slmyo, align 4
  %2517 = load float* %Vmyo, align 4
  %2518 = fdiv float %2516, %2517
  %2519 = load float* %initvalu_33, align 4
  %2520 = load float* %initvalu_34, align 4
  %2521 = fsub float %2519, %2520
  %2522 = fmul float %2518, %2521
  %2523 = load i32* %offset_34, align 4
  %2524 = sext i32 %2523 to i64
  %2525 = load float** %6, align 8
  %2526 = getelementptr inbounds float* %2525, i64 %2524
  store float %2522, float* %2526, align 4
  %2527 = load float* %I_to, align 4
  %2528 = load float* %I_kr, align 4
  %2529 = fadd float %2527, %2528
  %2530 = load float* %I_ks, align 4
  %2531 = fadd float %2529, %2530
  %2532 = load float* %I_ki, align 4
  %2533 = fadd float %2531, %2532
  %2534 = load float* %I_nak, align 4
  %2535 = fmul float 2.000000e+00, %2534
  %2536 = fsub float %2533, %2535
  %2537 = load float* %I_CaK, align 4
  %2538 = fadd float %2536, %2537
  %2539 = load float* %I_kp, align 4
  %2540 = fadd float %2538, %2539
  store float %2540, float* %I_K_tot, align 4
  %2541 = load i32* %offset_35, align 4
  %2542 = sext i32 %2541 to i64
  %2543 = load float** %6, align 8
  %2544 = getelementptr inbounds float* %2543, i64 %2542
  store float 0.000000e+00, float* %2544, align 4
  %2545 = load float* %I_Ca_junc, align 4
  %2546 = load float* %I_cabk_junc, align 4
  %2547 = fadd float %2545, %2546
  %2548 = load float* %I_pca_junc, align 4
  %2549 = fadd float %2547, %2548
  %2550 = load float* %I_ncx_junc, align 4
  %2551 = fmul float 2.000000e+00, %2550
  %2552 = fsub float %2549, %2551
  store float %2552, float* %I_Ca_tot_junc, align 4
  %2553 = load float* %I_Ca_sl, align 4
  %2554 = load float* %I_cabk_sl, align 4
  %2555 = fadd float %2553, %2554
  %2556 = load float* %I_pca_sl, align 4
  %2557 = fadd float %2555, %2556
  %2558 = load float* %I_ncx_sl, align 4
  %2559 = fmul float 2.000000e+00, %2558
  %2560 = fsub float %2557, %2559
  store float %2560, float* %I_Ca_tot_sl, align 4
  %2561 = load float* %I_Ca_tot_junc, align 4
  %2562 = fsub float -0.000000e+00, %2561
  %2563 = load float* %Cmem, align 4
  %2564 = fmul float %2562, %2563
  %2565 = load float* %Vjunc, align 4
  %2566 = fmul float %2565, 2.000000e+00
  %2567 = load float* %Frdy, align 4
  %2568 = fmul float %2566, %2567
  %2569 = fdiv float %2564, %2568
  %2570 = load float* %J_ca_juncsl, align 4
  %2571 = load float* %Vjunc, align 4
  %2572 = fdiv float %2570, %2571
  %2573 = load float* %initvalu_37, align 4
  %2574 = load float* %initvalu_36, align 4
  %2575 = fsub float %2573, %2574
  %2576 = fmul float %2572, %2575
  %2577 = fadd float %2569, %2576
  %2578 = load float* %J_CaB_junction, align 4
  %2579 = fsub float %2577, %2578
  %2580 = load float* %J_SRCarel, align 4
  %2581 = load float* %Vsr, align 4
  %2582 = fmul float %2580, %2581
  %2583 = load float* %Vjunc, align 4
  %2584 = fdiv float %2582, %2583
  %2585 = fadd float %2579, %2584
  %2586 = load float* %J_SRleak, align 4
  %2587 = load float* %Vmyo, align 4
  %2588 = fmul float %2586, %2587
  %2589 = load float* %Vjunc, align 4
  %2590 = fdiv float %2588, %2589
  %2591 = fadd float %2585, %2590
  %2592 = load i32* %offset_36, align 4
  %2593 = sext i32 %2592 to i64
  %2594 = load float** %6, align 8
  %2595 = getelementptr inbounds float* %2594, i64 %2593
  store float %2591, float* %2595, align 4
  %2596 = load float* %I_Ca_tot_sl, align 4
  %2597 = fsub float -0.000000e+00, %2596
  %2598 = load float* %Cmem, align 4
  %2599 = fmul float %2597, %2598
  %2600 = load float* %Vsl, align 4
  %2601 = fmul float %2600, 2.000000e+00
  %2602 = load float* %Frdy, align 4
  %2603 = fmul float %2601, %2602
  %2604 = fdiv float %2599, %2603
  %2605 = load float* %J_ca_juncsl, align 4
  %2606 = load float* %Vsl, align 4
  %2607 = fdiv float %2605, %2606
  %2608 = load float* %initvalu_36, align 4
  %2609 = load float* %initvalu_37, align 4
  %2610 = fsub float %2608, %2609
  %2611 = fmul float %2607, %2610
  %2612 = fadd float %2604, %2611
  %2613 = load float* %J_ca_slmyo, align 4
  %2614 = load float* %Vsl, align 4
  %2615 = fdiv float %2613, %2614
  %2616 = load float* %initvalu_38, align 4
  %2617 = load float* %initvalu_37, align 4
  %2618 = fsub float %2616, %2617
  %2619 = fmul float %2615, %2618
  %2620 = fadd float %2612, %2619
  %2621 = load float* %J_CaB_sl, align 4
  %2622 = fsub float %2620, %2621
  %2623 = load i32* %offset_37, align 4
  %2624 = sext i32 %2623 to i64
  %2625 = load float** %6, align 8
  %2626 = getelementptr inbounds float* %2625, i64 %2624
  store float %2622, float* %2626, align 4
  %2627 = load float* %J_serca, align 4
  %2628 = fsub float -0.000000e+00, %2627
  %2629 = load float* %J_CaB_cytosol, align 4
  %2630 = fsub float %2628, %2629
  %2631 = load float* %J_ca_slmyo, align 4
  %2632 = load float* %Vmyo, align 4
  %2633 = fdiv float %2631, %2632
  %2634 = load float* %initvalu_37, align 4
  %2635 = load float* %initvalu_38, align 4
  %2636 = fsub float %2634, %2635
  %2637 = fmul float %2633, %2636
  %2638 = fadd float %2630, %2637
  %2639 = load i32* %offset_38, align 4
  %2640 = sext i32 %2639 to i64
  %2641 = load float** %6, align 8
  %2642 = getelementptr inbounds float* %2641, i64 %2640
  store float %2638, float* %2642, align 4
  %2643 = load float* %J_ca_juncsl, align 4
  %2644 = load float* %Vsl, align 4
  %2645 = fdiv float %2643, %2644
  %2646 = load float* %initvalu_36, align 4
  %2647 = load float* %initvalu_37, align 4
  %2648 = fsub float %2646, %2647
  %2649 = fmul float %2645, %2648
  store float %2649, float* %junc_sl, align 4
  %2650 = load float* %J_ca_juncsl, align 4
  %2651 = load float* %Vjunc, align 4
  %2652 = fdiv float %2650, %2651
  %2653 = load float* %initvalu_37, align 4
  %2654 = load float* %initvalu_36, align 4
  %2655 = fsub float %2653, %2654
  %2656 = fmul float %2652, %2655
  store float %2656, float* %sl_junc, align 4
  %2657 = load float* %J_ca_slmyo, align 4
  %2658 = load float* %Vsl, align 4
  %2659 = fdiv float %2657, %2658
  %2660 = load float* %initvalu_38, align 4
  %2661 = load float* %initvalu_37, align 4
  %2662 = fsub float %2660, %2661
  %2663 = fmul float %2659, %2662
  store float %2663, float* %sl_myo, align 4
  %2664 = load float* %J_ca_slmyo, align 4
  %2665 = load float* %Vmyo, align 4
  %2666 = fdiv float %2664, %2665
  %2667 = load float* %initvalu_37, align 4
  %2668 = load float* %initvalu_38, align 4
  %2669 = fsub float %2667, %2668
  %2670 = fmul float %2666, %2669
  store float %2670, float* %myo_sl, align 4
  store i32 1, i32* %state, align 4
  %2671 = load i32* %state, align 4
  switch i32 %2671, label %2704 [
    i32 0, label %2672
    i32 1, label %2673
    i32 2, label %2683
  ]

; <label>:2672                                    ; preds = %579
  store float 0.000000e+00, float* %I_app, align 4
  br label %2704

; <label>:2673                                    ; preds = %579
  %2674 = load float* %1, align 4
  %2675 = fpext float %2674 to double
  %2676 = load float* %parameter_1, align 4
  %2677 = fpext float %2676 to double
  %2678 = call double @fmod(double %2675, double %2677) #5
  %2679 = fcmp ole double %2678, 5.000000e+00
  br i1 %2679, label %2680, label %2681

; <label>:2680                                    ; preds = %2673
  store float 9.500000e+00, float* %I_app, align 4
  br label %2682

; <label>:2681                                    ; preds = %2673
  store float 0.000000e+00, float* %I_app, align 4
  br label %2682

; <label>:2682                                    ; preds = %2681, %2680
  br label %2704

; <label>:2683                                    ; preds = %579
  store float -5.500000e+01, float* %V_hold, align 4
  store float 0.000000e+00, float* %V_test, align 4
  %2684 = load float* %1, align 4
  %2685 = fpext float %2684 to double
  %2686 = fcmp ogt double %2685, 5.000000e-01
  %2687 = zext i1 %2686 to i32
  %2688 = load float* %1, align 4
  %2689 = fpext float %2688 to double
  %2690 = fcmp olt double %2689, 2.005000e+02
  %2691 = zext i1 %2690 to i32
  %2692 = and i32 %2687, %2691
  %2693 = icmp ne i32 %2692, 0
  br i1 %2693, label %2694, label %2696

; <label>:2694                                    ; preds = %2683
  %2695 = load float* %V_test, align 4
  store float %2695, float* %V_clamp, align 4
  br label %2698

; <label>:2696                                    ; preds = %2683
  %2697 = load float* %V_hold, align 4
  store float %2697, float* %V_clamp, align 4
  br label %2698

; <label>:2698                                    ; preds = %2696, %2694
  store float 0x3FA47AE140000000, float* %R_clamp, align 4
  %2699 = load float* %V_clamp, align 4
  %2700 = load float* %initvalu_39, align 4
  %2701 = fsub float %2699, %2700
  %2702 = load float* %R_clamp, align 4
  %2703 = fdiv float %2701, %2702
  store float %2703, float* %I_app, align 4
  br label %2704

; <label>:2704                                    ; preds = %579, %2698, %2682, %2672
  %2705 = load float* %I_Na_tot_junc, align 4
  %2706 = load float* %I_Na_tot_sl, align 4
  %2707 = fadd float %2705, %2706
  store float %2707, float* %I_Na_tot, align 4
  %2708 = load float* %I_ClCa, align 4
  %2709 = load float* %I_Clbk, align 4
  %2710 = fadd float %2708, %2709
  store float %2710, float* %I_Cl_tot, align 4
  %2711 = load float* %I_Ca_tot_junc, align 4
  %2712 = load float* %I_Ca_tot_sl, align 4
  %2713 = fadd float %2711, %2712
  store float %2713, float* %I_Ca_tot, align 4
  %2714 = load float* %I_Na_tot, align 4
  %2715 = load float* %I_Cl_tot, align 4
  %2716 = fadd float %2714, %2715
  %2717 = load float* %I_Ca_tot, align 4
  %2718 = fadd float %2716, %2717
  %2719 = load float* %I_K_tot, align 4
  %2720 = fadd float %2718, %2719
  store float %2720, float* %I_tot, align 4
  %2721 = load float* %I_tot, align 4
  %2722 = load float* %I_app, align 4
  %2723 = fsub float %2721, %2722
  %2724 = fsub float -0.000000e+00, %2723
  %2725 = load i32* %offset_39, align 4
  %2726 = sext i32 %2725 to i64
  %2727 = load float** %6, align 8
  %2728 = getelementptr inbounds float* %2727, i64 %2726
  store float %2724, float* %2728, align 4
  %2729 = load i32* %offset_41, align 4
  %2730 = sext i32 %2729 to i64
  %2731 = load float** %6, align 8
  %2732 = getelementptr inbounds float* %2731, i64 %2730
  store float 0.000000e+00, float* %2732, align 4
  %2733 = load i32* %offset_42, align 4
  %2734 = sext i32 %2733 to i64
  %2735 = load float** %6, align 8
  %2736 = getelementptr inbounds float* %2735, i64 %2734
  store float 0.000000e+00, float* %2736, align 4
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #1

; Function Attrs: nounwind uwtable
define void @fin(float* %initvalu, i32 %initvalu_offset_ecc, i32 %initvalu_offset_Dyad, i32 %initvalu_offset_SL, i32 %initvalu_offset_Cyt, float* %parameter, float* %finavalu, float %JCaDyad, float %JCaSL, float %JCaCyt) #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %BtotDyad = alloca float, align 4
  %CaMKIItotDyad = alloca float, align 4
  %Vmyo = alloca float, align 4
  %Vdyad = alloca float, align 4
  %VSL = alloca float, align 4
  %kDyadSL = alloca float, align 4
  %kSLmyo = alloca float, align 4
  %k0Boff = alloca float, align 4
  %k0Bon = alloca float, align 4
  %k2Boff = alloca float, align 4
  %k2Bon = alloca float, align 4
  %k4Boff = alloca float, align 4
  %k4Bon = alloca float, align 4
  %CaMtotDyad = alloca float, align 4
  %Bdyad = alloca float, align 4
  %J_cam_dyadSL = alloca float, align 4
  %J_ca2cam_dyadSL = alloca float, align 4
  %J_ca4cam_dyadSL = alloca float, align 4
  %J_cam_SLmyo = alloca float, align 4
  %J_ca2cam_SLmyo = alloca float, align 4
  %J_ca4cam_SLmyo = alloca float, align 4
  store float* %initvalu, float** %1, align 8
  store i32 %initvalu_offset_ecc, i32* %2, align 4
  store i32 %initvalu_offset_Dyad, i32* %3, align 4
  store i32 %initvalu_offset_SL, i32* %4, align 4
  store i32 %initvalu_offset_Cyt, i32* %5, align 4
  store float* %parameter, float** %6, align 8
  store float* %finavalu, float** %7, align 8
  store float %JCaDyad, float* %8, align 4
  store float %JCaSL, float* %9, align 4
  store float %JCaCyt, float* %10, align 4
  %11 = load float** %6, align 8
  %12 = getelementptr inbounds float* %11, i64 2
  %13 = load float* %12, align 4
  store float %13, float* %BtotDyad, align 4
  %14 = load float** %6, align 8
  %15 = getelementptr inbounds float* %14, i64 3
  %16 = load float* %15, align 4
  store float %16, float* %CaMKIItotDyad, align 4
  store float 0x3DB796C3A0000000, float* %Vmyo, align 4
  store float 0x3D14079E40000000, float* %Vdyad, align 4
  store float 0x3D6739EC20000000, float* %VSL, align 4
  store float 0x3CBA33CA20000000, float* %kDyadSL, align 4
  store float 0x3D03561180000000, float* %kSLmyo, align 4
  store float 0x3F56F00680000000, float* %k0Boff, align 4
  %17 = load float* %k0Boff, align 4
  %18 = fpext float %17 to double
  %19 = fdiv double %18, 2.000000e-01
  %20 = fptrunc double %19 to float
  store float %20, float* %k0Bon, align 4
  %21 = load float* %k0Boff, align 4
  %22 = fdiv float %21, 1.000000e+02
  store float %22, float* %k2Boff, align 4
  %23 = load float* %k0Bon, align 4
  store float %23, float* %k2Bon, align 4
  %24 = load float* %k2Boff, align 4
  store float %24, float* %k4Boff, align 4
  %25 = load float* %k0Bon, align 4
  store float %25, float* %k4Bon, align 4
  %26 = load i32* %2, align 4
  %27 = add nsw i32 %26, 35
  %28 = sext i32 %27 to i64
  %29 = load float** %7, align 8
  %30 = getelementptr inbounds float* %29, i64 %28
  %31 = load float* %30, align 4
  %32 = fpext float %31 to double
  %33 = load float* %8, align 4
  %34 = fpext float %33 to double
  %35 = fmul double 1.000000e-03, %34
  %36 = fadd double %32, %35
  %37 = fptrunc double %36 to float
  %38 = load i32* %2, align 4
  %39 = add nsw i32 %38, 35
  %40 = sext i32 %39 to i64
  %41 = load float** %7, align 8
  %42 = getelementptr inbounds float* %41, i64 %40
  store float %37, float* %42, align 4
  %43 = load i32* %2, align 4
  %44 = add nsw i32 %43, 36
  %45 = sext i32 %44 to i64
  %46 = load float** %7, align 8
  %47 = getelementptr inbounds float* %46, i64 %45
  %48 = load float* %47, align 4
  %49 = fpext float %48 to double
  %50 = load float* %9, align 4
  %51 = fpext float %50 to double
  %52 = fmul double 1.000000e-03, %51
  %53 = fadd double %49, %52
  %54 = fptrunc double %53 to float
  %55 = load i32* %2, align 4
  %56 = add nsw i32 %55, 36
  %57 = sext i32 %56 to i64
  %58 = load float** %7, align 8
  %59 = getelementptr inbounds float* %58, i64 %57
  store float %54, float* %59, align 4
  %60 = load i32* %2, align 4
  %61 = add nsw i32 %60, 37
  %62 = sext i32 %61 to i64
  %63 = load float** %7, align 8
  %64 = getelementptr inbounds float* %63, i64 %62
  %65 = load float* %64, align 4
  %66 = fpext float %65 to double
  %67 = load float* %10, align 4
  %68 = fpext float %67 to double
  %69 = fmul double 1.000000e-03, %68
  %70 = fadd double %66, %69
  %71 = fptrunc double %70 to float
  %72 = load i32* %2, align 4
  %73 = add nsw i32 %72, 37
  %74 = sext i32 %73 to i64
  %75 = load float** %7, align 8
  %76 = getelementptr inbounds float* %75, i64 %74
  store float %71, float* %76, align 4
  %77 = load i32* %3, align 4
  %78 = add nsw i32 %77, 0
  %79 = sext i32 %78 to i64
  %80 = load float** %1, align 8
  %81 = getelementptr inbounds float* %80, i64 %79
  %82 = load float* %81, align 4
  %83 = load i32* %3, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = load float** %1, align 8
  %87 = getelementptr inbounds float* %86, i64 %85
  %88 = load float* %87, align 4
  %89 = fadd float %82, %88
  %90 = load i32* %3, align 4
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = load float** %1, align 8
  %94 = getelementptr inbounds float* %93, i64 %92
  %95 = load float* %94, align 4
  %96 = fadd float %89, %95
  %97 = load i32* %3, align 4
  %98 = add nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = load float** %1, align 8
  %101 = getelementptr inbounds float* %100, i64 %99
  %102 = load float* %101, align 4
  %103 = fadd float %96, %102
  %104 = load i32* %3, align 4
  %105 = add nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = load float** %1, align 8
  %108 = getelementptr inbounds float* %107, i64 %106
  %109 = load float* %108, align 4
  %110 = fadd float %103, %109
  %111 = load i32* %3, align 4
  %112 = add nsw i32 %111, 5
  %113 = sext i32 %112 to i64
  %114 = load float** %1, align 8
  %115 = getelementptr inbounds float* %114, i64 %113
  %116 = load float* %115, align 4
  %117 = fadd float %110, %116
  %118 = load float* %CaMKIItotDyad, align 4
  %119 = load i32* %3, align 4
  %120 = add nsw i32 %119, 6
  %121 = sext i32 %120 to i64
  %122 = load float** %1, align 8
  %123 = getelementptr inbounds float* %122, i64 %121
  %124 = load float* %123, align 4
  %125 = load i32* %3, align 4
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = load float** %1, align 8
  %129 = getelementptr inbounds float* %128, i64 %127
  %130 = load float* %129, align 4
  %131 = fadd float %124, %130
  %132 = load i32* %3, align 4
  %133 = add nsw i32 %132, 8
  %134 = sext i32 %133 to i64
  %135 = load float** %1, align 8
  %136 = getelementptr inbounds float* %135, i64 %134
  %137 = load float* %136, align 4
  %138 = fadd float %131, %137
  %139 = load i32* %3, align 4
  %140 = add nsw i32 %139, 9
  %141 = sext i32 %140 to i64
  %142 = load float** %1, align 8
  %143 = getelementptr inbounds float* %142, i64 %141
  %144 = load float* %143, align 4
  %145 = fadd float %138, %144
  %146 = fmul float %118, %145
  %147 = fadd float %117, %146
  %148 = load i32* %3, align 4
  %149 = add nsw i32 %148, 12
  %150 = sext i32 %149 to i64
  %151 = load float** %1, align 8
  %152 = getelementptr inbounds float* %151, i64 %150
  %153 = load float* %152, align 4
  %154 = fadd float %147, %153
  %155 = load i32* %3, align 4
  %156 = add nsw i32 %155, 13
  %157 = sext i32 %156 to i64
  %158 = load float** %1, align 8
  %159 = getelementptr inbounds float* %158, i64 %157
  %160 = load float* %159, align 4
  %161 = fadd float %154, %160
  %162 = load i32* %3, align 4
  %163 = add nsw i32 %162, 14
  %164 = sext i32 %163 to i64
  %165 = load float** %1, align 8
  %166 = getelementptr inbounds float* %165, i64 %164
  %167 = load float* %166, align 4
  %168 = fadd float %161, %167
  store float %168, float* %CaMtotDyad, align 4
  %169 = load float* %BtotDyad, align 4
  %170 = load float* %CaMtotDyad, align 4
  %171 = fsub float %169, %170
  store float %171, float* %Bdyad, align 4
  %172 = load float* %k0Boff, align 4
  %173 = load i32* %3, align 4
  %174 = add nsw i32 %173, 0
  %175 = sext i32 %174 to i64
  %176 = load float** %1, align 8
  %177 = getelementptr inbounds float* %176, i64 %175
  %178 = load float* %177, align 4
  %179 = fmul float %172, %178
  %180 = load float* %k0Bon, align 4
  %181 = load float* %Bdyad, align 4
  %182 = fmul float %180, %181
  %183 = load i32* %4, align 4
  %184 = add nsw i32 %183, 0
  %185 = sext i32 %184 to i64
  %186 = load float** %1, align 8
  %187 = getelementptr inbounds float* %186, i64 %185
  %188 = load float* %187, align 4
  %189 = fmul float %182, %188
  %190 = fsub float %179, %189
  %191 = fpext float %190 to double
  %192 = fmul double 1.000000e-03, %191
  %193 = fptrunc double %192 to float
  store float %193, float* %J_cam_dyadSL, align 4
  %194 = load float* %k2Boff, align 4
  %195 = load i32* %3, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = load float** %1, align 8
  %199 = getelementptr inbounds float* %198, i64 %197
  %200 = load float* %199, align 4
  %201 = fmul float %194, %200
  %202 = load float* %k2Bon, align 4
  %203 = load float* %Bdyad, align 4
  %204 = fmul float %202, %203
  %205 = load i32* %4, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = load float** %1, align 8
  %209 = getelementptr inbounds float* %208, i64 %207
  %210 = load float* %209, align 4
  %211 = fmul float %204, %210
  %212 = fsub float %201, %211
  %213 = fpext float %212 to double
  %214 = fmul double 1.000000e-03, %213
  %215 = fptrunc double %214 to float
  store float %215, float* %J_ca2cam_dyadSL, align 4
  %216 = load float* %k2Boff, align 4
  %217 = load i32* %3, align 4
  %218 = add nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = load float** %1, align 8
  %221 = getelementptr inbounds float* %220, i64 %219
  %222 = load float* %221, align 4
  %223 = fmul float %216, %222
  %224 = load float* %k4Bon, align 4
  %225 = load float* %Bdyad, align 4
  %226 = fmul float %224, %225
  %227 = load i32* %4, align 4
  %228 = add nsw i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = load float** %1, align 8
  %231 = getelementptr inbounds float* %230, i64 %229
  %232 = load float* %231, align 4
  %233 = fmul float %226, %232
  %234 = fsub float %223, %233
  %235 = fpext float %234 to double
  %236 = fmul double 1.000000e-03, %235
  %237 = fptrunc double %236 to float
  store float %237, float* %J_ca4cam_dyadSL, align 4
  %238 = load float* %kSLmyo, align 4
  %239 = load i32* %4, align 4
  %240 = add nsw i32 %239, 0
  %241 = sext i32 %240 to i64
  %242 = load float** %1, align 8
  %243 = getelementptr inbounds float* %242, i64 %241
  %244 = load float* %243, align 4
  %245 = load i32* %5, align 4
  %246 = add nsw i32 %245, 0
  %247 = sext i32 %246 to i64
  %248 = load float** %1, align 8
  %249 = getelementptr inbounds float* %248, i64 %247
  %250 = load float* %249, align 4
  %251 = fsub float %244, %250
  %252 = fmul float %238, %251
  store float %252, float* %J_cam_SLmyo, align 4
  %253 = load float* %kSLmyo, align 4
  %254 = load i32* %4, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = load float** %1, align 8
  %258 = getelementptr inbounds float* %257, i64 %256
  %259 = load float* %258, align 4
  %260 = load i32* %5, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = load float** %1, align 8
  %264 = getelementptr inbounds float* %263, i64 %262
  %265 = load float* %264, align 4
  %266 = fsub float %259, %265
  %267 = fmul float %253, %266
  store float %267, float* %J_ca2cam_SLmyo, align 4
  %268 = load float* %kSLmyo, align 4
  %269 = load i32* %4, align 4
  %270 = add nsw i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = load float** %1, align 8
  %273 = getelementptr inbounds float* %272, i64 %271
  %274 = load float* %273, align 4
  %275 = load i32* %5, align 4
  %276 = add nsw i32 %275, 2
  %277 = sext i32 %276 to i64
  %278 = load float** %1, align 8
  %279 = getelementptr inbounds float* %278, i64 %277
  %280 = load float* %279, align 4
  %281 = fsub float %274, %280
  %282 = fmul float %268, %281
  store float %282, float* %J_ca4cam_SLmyo, align 4
  %283 = load i32* %3, align 4
  %284 = add nsw i32 %283, 0
  %285 = sext i32 %284 to i64
  %286 = load float** %7, align 8
  %287 = getelementptr inbounds float* %286, i64 %285
  %288 = load float* %287, align 4
  %289 = load float* %J_cam_dyadSL, align 4
  %290 = fsub float %288, %289
  %291 = load i32* %3, align 4
  %292 = add nsw i32 %291, 0
  %293 = sext i32 %292 to i64
  %294 = load float** %7, align 8
  %295 = getelementptr inbounds float* %294, i64 %293
  store float %290, float* %295, align 4
  %296 = load i32* %3, align 4
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = load float** %7, align 8
  %300 = getelementptr inbounds float* %299, i64 %298
  %301 = load float* %300, align 4
  %302 = load float* %J_ca2cam_dyadSL, align 4
  %303 = fsub float %301, %302
  %304 = load i32* %3, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = load float** %7, align 8
  %308 = getelementptr inbounds float* %307, i64 %306
  store float %303, float* %308, align 4
  %309 = load i32* %3, align 4
  %310 = add nsw i32 %309, 2
  %311 = sext i32 %310 to i64
  %312 = load float** %7, align 8
  %313 = getelementptr inbounds float* %312, i64 %311
  %314 = load float* %313, align 4
  %315 = load float* %J_ca4cam_dyadSL, align 4
  %316 = fsub float %314, %315
  %317 = load i32* %3, align 4
  %318 = add nsw i32 %317, 2
  %319 = sext i32 %318 to i64
  %320 = load float** %7, align 8
  %321 = getelementptr inbounds float* %320, i64 %319
  store float %316, float* %321, align 4
  %322 = load i32* %4, align 4
  %323 = add nsw i32 %322, 0
  %324 = sext i32 %323 to i64
  %325 = load float** %7, align 8
  %326 = getelementptr inbounds float* %325, i64 %324
  %327 = load float* %326, align 4
  %328 = load float* %J_cam_dyadSL, align 4
  %329 = load float* %Vdyad, align 4
  %330 = fmul float %328, %329
  %331 = load float* %VSL, align 4
  %332 = fdiv float %330, %331
  %333 = fadd float %327, %332
  %334 = load float* %J_cam_SLmyo, align 4
  %335 = load float* %VSL, align 4
  %336 = fdiv float %334, %335
  %337 = fsub float %333, %336
  %338 = load i32* %4, align 4
  %339 = add nsw i32 %338, 0
  %340 = sext i32 %339 to i64
  %341 = load float** %7, align 8
  %342 = getelementptr inbounds float* %341, i64 %340
  store float %337, float* %342, align 4
  %343 = load i32* %4, align 4
  %344 = add nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = load float** %7, align 8
  %347 = getelementptr inbounds float* %346, i64 %345
  %348 = load float* %347, align 4
  %349 = load float* %J_ca2cam_dyadSL, align 4
  %350 = load float* %Vdyad, align 4
  %351 = fmul float %349, %350
  %352 = load float* %VSL, align 4
  %353 = fdiv float %351, %352
  %354 = fadd float %348, %353
  %355 = load float* %J_ca2cam_SLmyo, align 4
  %356 = load float* %VSL, align 4
  %357 = fdiv float %355, %356
  %358 = fsub float %354, %357
  %359 = load i32* %4, align 4
  %360 = add nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = load float** %7, align 8
  %363 = getelementptr inbounds float* %362, i64 %361
  store float %358, float* %363, align 4
  %364 = load i32* %4, align 4
  %365 = add nsw i32 %364, 2
  %366 = sext i32 %365 to i64
  %367 = load float** %7, align 8
  %368 = getelementptr inbounds float* %367, i64 %366
  %369 = load float* %368, align 4
  %370 = load float* %J_ca4cam_dyadSL, align 4
  %371 = load float* %Vdyad, align 4
  %372 = fmul float %370, %371
  %373 = load float* %VSL, align 4
  %374 = fdiv float %372, %373
  %375 = fadd float %369, %374
  %376 = load float* %J_ca4cam_SLmyo, align 4
  %377 = load float* %VSL, align 4
  %378 = fdiv float %376, %377
  %379 = fsub float %375, %378
  %380 = load i32* %4, align 4
  %381 = add nsw i32 %380, 2
  %382 = sext i32 %381 to i64
  %383 = load float** %7, align 8
  %384 = getelementptr inbounds float* %383, i64 %382
  store float %379, float* %384, align 4
  %385 = load i32* %5, align 4
  %386 = add nsw i32 %385, 0
  %387 = sext i32 %386 to i64
  %388 = load float** %7, align 8
  %389 = getelementptr inbounds float* %388, i64 %387
  %390 = load float* %389, align 4
  %391 = load float* %J_cam_SLmyo, align 4
  %392 = load float* %Vmyo, align 4
  %393 = fdiv float %391, %392
  %394 = fadd float %390, %393
  %395 = load i32* %5, align 4
  %396 = add nsw i32 %395, 0
  %397 = sext i32 %396 to i64
  %398 = load float** %7, align 8
  %399 = getelementptr inbounds float* %398, i64 %397
  store float %394, float* %399, align 4
  %400 = load i32* %5, align 4
  %401 = add nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = load float** %7, align 8
  %404 = getelementptr inbounds float* %403, i64 %402
  %405 = load float* %404, align 4
  %406 = load float* %J_ca2cam_SLmyo, align 4
  %407 = load float* %Vmyo, align 4
  %408 = fdiv float %406, %407
  %409 = fadd float %405, %408
  %410 = load i32* %5, align 4
  %411 = add nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = load float** %7, align 8
  %414 = getelementptr inbounds float* %413, i64 %412
  store float %409, float* %414, align 4
  %415 = load i32* %5, align 4
  %416 = add nsw i32 %415, 2
  %417 = sext i32 %416 to i64
  %418 = load float** %7, align 8
  %419 = getelementptr inbounds float* %418, i64 %417
  %420 = load float* %419, align 4
  %421 = load float* %J_ca4cam_SLmyo, align 4
  %422 = load float* %Vmyo, align 4
  %423 = fdiv float %421, %422
  %424 = fadd float %420, %423
  %425 = load i32* %5, align 4
  %426 = add nsw i32 %425, 2
  %427 = sext i32 %426 to i64
  %428 = load float** %7, align 8
  %429 = getelementptr inbounds float* %428, i64 %427
  store float %424, float* %429, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @master(float %timeinst, float* %initvalu, float* %parameter, float* %finavalu, i32 %mode) #0 {
  %1 = alloca float, align 4
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  %JCaDyad = alloca float, align 4
  %JCaSL = alloca float, align 4
  %JCaCyt = alloca float, align 4
  %initvalu_offset_batch = alloca i32, align 4
  %initvalu_offset_ecc = alloca i32, align 4
  %parameter_offset_ecc = alloca i32, align 4
  %initvalu_offset_Dyad = alloca i32, align 4
  %parameter_offset_Dyad = alloca i32, align 4
  %initvalu_offset_SL = alloca i32, align 4
  %parameter_offset_SL = alloca i32, align 4
  %initvalu_offset_Cyt = alloca i32, align 4
  %parameter_offset_Cyt = alloca i32, align 4
  %CaDyad = alloca float, align 4
  %CaSL = alloca float, align 4
  %CaCyt = alloca float, align 4
  %th_id = alloca i32, align 4
  %nthreads = alloca i32, align 4
  %th_count = alloca [4 x i32], align 16
  %temp = alloca i32, align 4
  store float %timeinst, float* %1, align 4
  store float* %initvalu, float** %2, align 8
  store float* %parameter, float** %3, align 8
  store float* %finavalu, float** %4, align 8
  store i32 %mode, i32* %5, align 4
  store i32 1, i32* %nthreads, align 4
  %6 = load i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %100

; <label>:8                                       ; preds = %0
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %24, %8
  %10 = load i32* %i, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %27

; <label>:12                                      ; preds = %9
  %13 = load i32* %temp, align 4
  %14 = load i32* %nthreads, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12
  store i32 0, i32* %temp, align 4
  br label %17

; <label>:17                                      ; preds = %16, %12
  %18 = load i32* %temp, align 4
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32]* %th_count, i32 0, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32* %temp, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %temp, align 4
  br label %24

; <label>:24                                      ; preds = %17
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %9

; <label>:27                                      ; preds = %9
  %28 = load i32* %th_id, align 4
  %29 = getelementptr inbounds [4 x i32]* %th_count, i32 0, i64 1
  %30 = load i32* %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %27
  store i32 0, i32* %initvalu_offset_ecc, align 4
  store i32 0, i32* %parameter_offset_ecc, align 4
  %33 = load float* %1, align 4
  %34 = load float** %2, align 8
  %35 = load i32* %initvalu_offset_ecc, align 4
  %36 = load float** %3, align 8
  %37 = load i32* %parameter_offset_ecc, align 4
  %38 = load float** %4, align 8
  call void @ecc(float %33, float* %34, i32 %35, float* %36, i32 %37, float* %38)
  br label %39

; <label>:39                                      ; preds = %32, %27
  %40 = load i32* %th_id, align 4
  %41 = getelementptr inbounds [4 x i32]* %th_count, i32 0, i64 2
  %42 = load i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %59

; <label>:44                                      ; preds = %39
  store i32 46, i32* %initvalu_offset_Dyad, align 4
  store i32 1, i32* %parameter_offset_Dyad, align 4
  %45 = load float** %2, align 8
  %46 = getelementptr inbounds float* %45, i64 35
  %47 = load float* %46, align 4
  %48 = fpext float %47 to double
  %49 = fmul double %48, 1.000000e+03
  %50 = fptrunc double %49 to float
  store float %50, float* %CaDyad, align 4
  %51 = load float* %1, align 4
  %52 = load float** %2, align 8
  %53 = load i32* %initvalu_offset_Dyad, align 4
  %54 = load float** %3, align 8
  %55 = load i32* %parameter_offset_Dyad, align 4
  %56 = load float** %4, align 8
  %57 = load float* %CaDyad, align 4
  %58 = call float @cam(float %51, float* %52, i32 %53, float* %54, i32 %55, float* %56, float %57)
  store float %58, float* %JCaDyad, align 4
  br label %59

; <label>:59                                      ; preds = %44, %39
  %60 = load i32* %th_id, align 4
  %61 = getelementptr inbounds [4 x i32]* %th_count, i32 0, i64 3
  %62 = load i32* %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %79

; <label>:64                                      ; preds = %59
  store i32 61, i32* %initvalu_offset_SL, align 4
  store i32 6, i32* %parameter_offset_SL, align 4
  %65 = load float** %2, align 8
  %66 = getelementptr inbounds float* %65, i64 36
  %67 = load float* %66, align 4
  %68 = fpext float %67 to double
  %69 = fmul double %68, 1.000000e+03
  %70 = fptrunc double %69 to float
  store float %70, float* %CaSL, align 4
  %71 = load float* %1, align 4
  %72 = load float** %2, align 8
  %73 = load i32* %initvalu_offset_SL, align 4
  %74 = load float** %3, align 8
  %75 = load i32* %parameter_offset_SL, align 4
  %76 = load float** %4, align 8
  %77 = load float* %CaSL, align 4
  %78 = call float @cam(float %71, float* %72, i32 %73, float* %74, i32 %75, float* %76, float %77)
  store float %78, float* %JCaSL, align 4
  br label %79

; <label>:79                                      ; preds = %64, %59
  %80 = load i32* %th_id, align 4
  %81 = getelementptr inbounds [4 x i32]* %th_count, i32 0, i64 4
  %82 = load i32* %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %99

; <label>:84                                      ; preds = %79
  store i32 76, i32* %initvalu_offset_Cyt, align 4
  store i32 11, i32* %parameter_offset_Cyt, align 4
  %85 = load float** %2, align 8
  %86 = getelementptr inbounds float* %85, i64 37
  %87 = load float* %86, align 4
  %88 = fpext float %87 to double
  %89 = fmul double %88, 1.000000e+03
  %90 = fptrunc double %89 to float
  store float %90, float* %CaCyt, align 4
  %91 = load float* %1, align 4
  %92 = load float** %2, align 8
  %93 = load i32* %initvalu_offset_Cyt, align 4
  %94 = load float** %3, align 8
  %95 = load i32* %parameter_offset_Cyt, align 4
  %96 = load float** %4, align 8
  %97 = load float* %CaCyt, align 4
  %98 = call float @cam(float %91, float* %92, i32 %93, float* %94, i32 %95, float* %96, float %97)
  store float %98, float* %JCaCyt, align 4
  br label %99

; <label>:99                                      ; preds = %84, %79
  br label %149

; <label>:100                                     ; preds = %0
  store i32 0, i32* %initvalu_offset_ecc, align 4
  store i32 0, i32* %parameter_offset_ecc, align 4
  %101 = load float* %1, align 4
  %102 = load float** %2, align 8
  %103 = load i32* %initvalu_offset_ecc, align 4
  %104 = load float** %3, align 8
  %105 = load i32* %parameter_offset_ecc, align 4
  %106 = load float** %4, align 8
  call void @ecc(float %101, float* %102, i32 %103, float* %104, i32 %105, float* %106)
  store i32 46, i32* %initvalu_offset_Dyad, align 4
  store i32 1, i32* %parameter_offset_Dyad, align 4
  %107 = load float** %2, align 8
  %108 = getelementptr inbounds float* %107, i64 35
  %109 = load float* %108, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %110, 1.000000e+03
  %112 = fptrunc double %111 to float
  store float %112, float* %CaDyad, align 4
  %113 = load float* %1, align 4
  %114 = load float** %2, align 8
  %115 = load i32* %initvalu_offset_Dyad, align 4
  %116 = load float** %3, align 8
  %117 = load i32* %parameter_offset_Dyad, align 4
  %118 = load float** %4, align 8
  %119 = load float* %CaDyad, align 4
  %120 = call float @cam(float %113, float* %114, i32 %115, float* %116, i32 %117, float* %118, float %119)
  store float %120, float* %JCaDyad, align 4
  store i32 61, i32* %initvalu_offset_SL, align 4
  store i32 6, i32* %parameter_offset_SL, align 4
  %121 = load float** %2, align 8
  %122 = getelementptr inbounds float* %121, i64 36
  %123 = load float* %122, align 4
  %124 = fpext float %123 to double
  %125 = fmul double %124, 1.000000e+03
  %126 = fptrunc double %125 to float
  store float %126, float* %CaSL, align 4
  %127 = load float* %1, align 4
  %128 = load float** %2, align 8
  %129 = load i32* %initvalu_offset_SL, align 4
  %130 = load float** %3, align 8
  %131 = load i32* %parameter_offset_SL, align 4
  %132 = load float** %4, align 8
  %133 = load float* %CaSL, align 4
  %134 = call float @cam(float %127, float* %128, i32 %129, float* %130, i32 %131, float* %132, float %133)
  store float %134, float* %JCaSL, align 4
  store i32 76, i32* %initvalu_offset_Cyt, align 4
  store i32 11, i32* %parameter_offset_Cyt, align 4
  %135 = load float** %2, align 8
  %136 = getelementptr inbounds float* %135, i64 37
  %137 = load float* %136, align 4
  %138 = fpext float %137 to double
  %139 = fmul double %138, 1.000000e+03
  %140 = fptrunc double %139 to float
  store float %140, float* %CaCyt, align 4
  %141 = load float* %1, align 4
  %142 = load float** %2, align 8
  %143 = load i32* %initvalu_offset_Cyt, align 4
  %144 = load float** %3, align 8
  %145 = load i32* %parameter_offset_Cyt, align 4
  %146 = load float** %4, align 8
  %147 = load float* %CaCyt, align 4
  %148 = call float @cam(float %141, float* %142, i32 %143, float* %144, i32 %145, float* %146, float %147)
  store float %148, float* %JCaCyt, align 4
  br label %149

; <label>:149                                     ; preds = %100, %99
  %150 = load float** %2, align 8
  %151 = load i32* %initvalu_offset_ecc, align 4
  %152 = load i32* %initvalu_offset_Dyad, align 4
  %153 = load i32* %initvalu_offset_SL, align 4
  %154 = load i32* %initvalu_offset_Cyt, align 4
  %155 = load float** %3, align 8
  %156 = load float** %4, align 8
  %157 = load float* %JCaDyad, align 4
  %158 = load float* %JCaSL, align 4
  %159 = load float* %JCaCyt, align 4
  call void @fin(float* %150, i32 %151, i32 %152, i32 %153, i32 %154, float* %155, float* %156, float %157, float %158, float %159)
  store i32 0, i32* %i, align 4
  br label %160

; <label>:160                                     ; preds = %191, %149
  %161 = load i32* %i, align 4
  %162 = icmp slt i32 %161, 91
  br i1 %162, label %163, label %194

; <label>:163                                     ; preds = %160
  %164 = load i32* %i, align 4
  %165 = sext i32 %164 to i64
  %166 = load float** %4, align 8
  %167 = getelementptr inbounds float* %166, i64 %165
  %168 = load float* %167, align 4
  %169 = call i32 @__isnanf(float %168) #6
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %176

; <label>:171                                     ; preds = %163
  %172 = load i32* %i, align 4
  %173 = sext i32 %172 to i64
  %174 = load float** %4, align 8
  %175 = getelementptr inbounds float* %174, i64 %173
  store float 0x3F1A36E2E0000000, float* %175, align 4
  br label %190

; <label>:176                                     ; preds = %163
  %177 = load i32* %i, align 4
  %178 = sext i32 %177 to i64
  %179 = load float** %4, align 8
  %180 = getelementptr inbounds float* %179, i64 %178
  %181 = load float* %180, align 4
  %182 = call i32 @__isinff(float %181) #6
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %189

; <label>:184                                     ; preds = %176
  %185 = load i32* %i, align 4
  %186 = sext i32 %185 to i64
  %187 = load float** %4, align 8
  %188 = getelementptr inbounds float* %187, i64 %186
  store float 0x3F1A36E2E0000000, float* %188, align 4
  br label %189

; <label>:189                                     ; preds = %184, %176
  br label %190

; <label>:190                                     ; preds = %189, %171
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32* %i, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4
  br label %160

; <label>:194                                     ; preds = %160
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #3

; Function Attrs: nounwind uwtable
define i32 @solver(float** %y, float* %x, i32 %xmax, float* %params, i32 %mode) #0 {
  %1 = alloca i32, align 4
  %2 = alloca float**, align 8
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %err_exponent = alloca float, align 4
  %last_interval = alloca float, align 4
  %error = alloca i32, align 4
  %outside = alloca i32, align 4
  %h = alloca float, align 4
  %h_init = alloca float, align 4
  %tolerance = alloca float, align 4
  %xmin = alloca i32, align 4
  %scale_min = alloca float, align 4
  %scale_fina = alloca float, align 4
  %err = alloca float*, align 8
  %scale = alloca float*, align 8
  %yy = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store float** %y, float*** %2, align 8
  store float* %x, float** %3, align 8
  store i32 %xmax, i32* %4, align 4
  store float* %params, float** %5, align 8
  store i32 %mode, i32* %6, align 4
  %7 = call noalias i8* @malloc(i64 364) #5
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %err, align 8
  %9 = call noalias i8* @malloc(i64 364) #5
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %scale, align 8
  %11 = call noalias i8* @malloc(i64 364) #5
  %12 = bitcast i8* %11 to float*
  store float* %12, float** %yy, align 8
  store float 0x3FC24924A0000000, float* %err_exponent, align 4
  store float 0.000000e+00, float* %last_interval, align 4
  store float 1.000000e+00, float* %h_init, align 4
  %13 = load float* %h_init, align 4
  store float %13, float* %h, align 4
  store i32 0, i32* %xmin, align 4
  %14 = load i32* %4, align 4
  %15 = load i32* %xmin, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sitofp i32 %16 to float
  %18 = fdiv float 1.000000e+01, %17
  store float %18, float* %tolerance, align 4
  %19 = load float** %3, align 8
  %20 = getelementptr inbounds float* %19, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = load i32* %4, align 4
  %22 = load i32* %xmin, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

; <label>:24                                      ; preds = %0
  %25 = load float* %h, align 4
  %26 = fpext float %25 to double
  %27 = fcmp ole double %26, 0.000000e+00
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %24, %0
  store i32 -2, i32* %1
  br label %319

; <label>:29                                      ; preds = %24
  %30 = load i32* %4, align 4
  %31 = load i32* %xmin, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  store i32 0, i32* %1
  br label %319

; <label>:34                                      ; preds = %29
  %35 = load float* %h, align 4
  %36 = load i32* %4, align 4
  %37 = load i32* %xmin, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sitofp i32 %38 to float
  %40 = fcmp ogt float %35, %39
  br i1 %40, label %41, label %47

; <label>:41                                      ; preds = %34
  %42 = load i32* %4, align 4
  %43 = sitofp i32 %42 to float
  %44 = load i32* %xmin, align 4
  %45 = sitofp i32 %44 to float
  %46 = fsub float %43, %45
  store float %46, float* %h, align 4
  store float 1.000000e+00, float* %last_interval, align 4
  br label %47

; <label>:47                                      ; preds = %41, %34
  store i32 1, i32* %k, align 4
  br label %48

; <label>:48                                      ; preds = %309, %47
  %49 = load i32* %k, align 4
  %50 = load i32* %4, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %312

; <label>:52                                      ; preds = %48
  %53 = load i32* %k, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sitofp i32 %54 to float
  %56 = load i32* %k, align 4
  %57 = sext i32 %56 to i64
  %58 = load float** %3, align 8
  %59 = getelementptr inbounds float* %58, i64 %57
  store float %55, float* %59, align 4
  %60 = load float* %h_init, align 4
  store float %60, float* %h, align 4
  store float 1.000000e+00, float* %scale_fina, align 4
  store i32 0, i32* %j, align 4
  br label %61

; <label>:61                                      ; preds = %290, %52
  %62 = load i32* %j, align 4
  %63 = icmp slt i32 %62, 12
  br i1 %63, label %64, label %293

; <label>:64                                      ; preds = %61
  store i32 0, i32* %error, align 4
  store i32 0, i32* %outside, align 4
  store float 4.000000e+00, float* %scale_min, align 4
  %65 = load i32* %k, align 4
  %66 = sext i32 %65 to i64
  %67 = load float** %3, align 8
  %68 = getelementptr inbounds float* %67, i64 %66
  %69 = load float* %68, align 4
  %70 = load float* %h, align 4
  %71 = load i32* %k, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = load float*** %2, align 8
  %75 = getelementptr inbounds float** %74, i64 %73
  %76 = load float** %75, align 8
  %77 = load i32* %k, align 4
  %78 = sext i32 %77 to i64
  %79 = load float*** %2, align 8
  %80 = getelementptr inbounds float** %79, i64 %78
  %81 = load float** %80, align 8
  %82 = load float** %err, align 8
  %83 = load float** %5, align 8
  %84 = load i32* %6, align 4
  %85 = call float @embedded_fehlberg_7_8(float %69, float %70, float* %76, float* %81, float* %82, float* %83, i32 %84)
  store i32 0, i32* %i, align 4
  br label %86

; <label>:86                                      ; preds = %98, %64
  %87 = load i32* %i, align 4
  %88 = icmp slt i32 %87, 91
  br i1 %88, label %89, label %101

; <label>:89                                      ; preds = %86
  %90 = load i32* %i, align 4
  %91 = sext i32 %90 to i64
  %92 = load float** %err, align 8
  %93 = getelementptr inbounds float* %92, i64 %91
  %94 = load float* %93, align 4
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %89
  store i32 1, i32* %error, align 4
  br label %97

; <label>:97                                      ; preds = %96, %89
  br label %98

; <label>:98                                      ; preds = %97
  %99 = load i32* %i, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %i, align 4
  br label %86

; <label>:101                                     ; preds = %86
  %102 = load i32* %error, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %101
  store float 4.000000e+00, float* %scale_fina, align 4
  br label %293

; <label>:105                                     ; preds = %101
  store i32 0, i32* %i, align 4
  br label %106

; <label>:106                                     ; preds = %184, %105
  %107 = load i32* %i, align 4
  %108 = icmp slt i32 %107, 91
  br i1 %108, label %109, label %187

; <label>:109                                     ; preds = %106
  %110 = load i32* %i, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32* %k, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = load float*** %2, align 8
  %116 = getelementptr inbounds float** %115, i64 %114
  %117 = load float** %116, align 8
  %118 = getelementptr inbounds float* %117, i64 %111
  %119 = load float* %118, align 4
  %120 = fpext float %119 to double
  %121 = fcmp oeq double %120, 0.000000e+00
  br i1 %121, label %122, label %128

; <label>:122                                     ; preds = %109
  %123 = load float* %tolerance, align 4
  %124 = load i32* %i, align 4
  %125 = sext i32 %124 to i64
  %126 = load float** %yy, align 8
  %127 = getelementptr inbounds float* %126, i64 %125
  store float %123, float* %127, align 4
  br label %146

; <label>:128                                     ; preds = %109
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = load i32* %k, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = load float*** %2, align 8
  %135 = getelementptr inbounds float** %134, i64 %133
  %136 = load float** %135, align 8
  %137 = getelementptr inbounds float* %136, i64 %130
  %138 = load float* %137, align 4
  %139 = fpext float %138 to double
  %140 = call double @fabs(double %139) #6
  %141 = fptrunc double %140 to float
  %142 = load i32* %i, align 4
  %143 = sext i32 %142 to i64
  %144 = load float** %yy, align 8
  %145 = getelementptr inbounds float* %144, i64 %143
  store float %141, float* %145, align 4
  br label %146

; <label>:146                                     ; preds = %128, %122
  %147 = load float* %tolerance, align 4
  %148 = load i32* %i, align 4
  %149 = sext i32 %148 to i64
  %150 = load float** %yy, align 8
  %151 = getelementptr inbounds float* %150, i64 %149
  %152 = load float* %151, align 4
  %153 = fmul float %147, %152
  %154 = load i32* %i, align 4
  %155 = sext i32 %154 to i64
  %156 = load float** %err, align 8
  %157 = getelementptr inbounds float* %156, i64 %155
  %158 = load float* %157, align 4
  %159 = fdiv float %153, %158
  %160 = fpext float %159 to double
  %161 = load float* %err_exponent, align 4
  %162 = fpext float %161 to double
  %163 = call double @pow(double %160, double %162) #5
  %164 = fmul double 8.000000e-01, %163
  %165 = fptrunc double %164 to float
  %166 = load i32* %i, align 4
  %167 = sext i32 %166 to i64
  %168 = load float** %scale, align 8
  %169 = getelementptr inbounds float* %168, i64 %167
  store float %165, float* %169, align 4
  %170 = load i32* %i, align 4
  %171 = sext i32 %170 to i64
  %172 = load float** %scale, align 8
  %173 = getelementptr inbounds float* %172, i64 %171
  %174 = load float* %173, align 4
  %175 = load float* %scale_min, align 4
  %176 = fcmp olt float %174, %175
  br i1 %176, label %177, label %183

; <label>:177                                     ; preds = %146
  %178 = load i32* %i, align 4
  %179 = sext i32 %178 to i64
  %180 = load float** %scale, align 8
  %181 = getelementptr inbounds float* %180, i64 %179
  %182 = load float* %181, align 4
  store float %182, float* %scale_min, align 4
  br label %183

; <label>:183                                     ; preds = %177, %146
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load i32* %i, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %i, align 4
  br label %106

; <label>:187                                     ; preds = %106
  %188 = load float* %scale_min, align 4
  %189 = fpext float %188 to double
  %190 = fcmp olt double %189, 1.250000e-01
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %187
  br label %195

; <label>:192                                     ; preds = %187
  %193 = load float* %scale_min, align 4
  %194 = fpext float %193 to double
  br label %195

; <label>:195                                     ; preds = %192, %191
  %196 = phi double [ 1.250000e-01, %191 ], [ %194, %192 ]
  %197 = fcmp olt double %196, 4.000000e+00
  br i1 %197, label %198, label %208

; <label>:198                                     ; preds = %195
  %199 = load float* %scale_min, align 4
  %200 = fpext float %199 to double
  %201 = fcmp olt double %200, 1.250000e-01
  br i1 %201, label %202, label %203

; <label>:202                                     ; preds = %198
  br label %206

; <label>:203                                     ; preds = %198
  %204 = load float* %scale_min, align 4
  %205 = fpext float %204 to double
  br label %206

; <label>:206                                     ; preds = %203, %202
  %207 = phi double [ 1.250000e-01, %202 ], [ %205, %203 ]
  br label %209

; <label>:208                                     ; preds = %195
  br label %209

; <label>:209                                     ; preds = %208, %206
  %210 = phi double [ %207, %206 ], [ 4.000000e+00, %208 ]
  %211 = fptrunc double %210 to float
  store float %211, float* %scale_fina, align 4
  store i32 0, i32* %i, align 4
  br label %212

; <label>:212                                     ; preds = %231, %209
  %213 = load i32* %i, align 4
  %214 = icmp slt i32 %213, 91
  br i1 %214, label %215, label %234

; <label>:215                                     ; preds = %212
  %216 = load i32* %i, align 4
  %217 = sext i32 %216 to i64
  %218 = load float** %err, align 8
  %219 = getelementptr inbounds float* %218, i64 %217
  %220 = load float* %219, align 4
  %221 = load float* %tolerance, align 4
  %222 = load i32* %i, align 4
  %223 = sext i32 %222 to i64
  %224 = load float** %yy, align 8
  %225 = getelementptr inbounds float* %224, i64 %223
  %226 = load float* %225, align 4
  %227 = fmul float %221, %226
  %228 = fcmp ogt float %220, %227
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %215
  store i32 1, i32* %outside, align 4
  br label %230

; <label>:230                                     ; preds = %229, %215
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32* %i, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %i, align 4
  br label %212

; <label>:234                                     ; preds = %212
  %235 = load i32* %outside, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

; <label>:237                                     ; preds = %234
  br label %293

; <label>:238                                     ; preds = %234
  %239 = load float* %h, align 4
  %240 = load float* %scale_fina, align 4
  %241 = fmul float %239, %240
  store float %241, float* %h, align 4
  %242 = load float* %h, align 4
  %243 = fpext float %242 to double
  %244 = fcmp oge double %243, 9.000000e-01
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %238
  store float 0x3FECCCCCC0000000, float* %h, align 4
  br label %246

; <label>:246                                     ; preds = %245, %238
  %247 = load i32* %k, align 4
  %248 = sext i32 %247 to i64
  %249 = load float** %3, align 8
  %250 = getelementptr inbounds float* %249, i64 %248
  %251 = load float* %250, align 4
  %252 = load float* %h, align 4
  %253 = fadd float %251, %252
  %254 = load i32* %4, align 4
  %255 = sitofp i32 %254 to float
  %256 = fcmp ogt float %253, %255
  br i1 %256, label %257, label %266

; <label>:257                                     ; preds = %246
  %258 = load i32* %4, align 4
  %259 = sitofp i32 %258 to float
  %260 = load i32* %k, align 4
  %261 = sext i32 %260 to i64
  %262 = load float** %3, align 8
  %263 = getelementptr inbounds float* %262, i64 %261
  %264 = load float* %263, align 4
  %265 = fsub float %259, %264
  store float %265, float* %h, align 4
  br label %289

; <label>:266                                     ; preds = %246
  %267 = load i32* %k, align 4
  %268 = sext i32 %267 to i64
  %269 = load float** %3, align 8
  %270 = getelementptr inbounds float* %269, i64 %268
  %271 = load float* %270, align 4
  %272 = load float* %h, align 4
  %273 = fadd float %271, %272
  %274 = fpext float %273 to double
  %275 = load float* %h, align 4
  %276 = fpext float %275 to double
  %277 = fmul double 5.000000e-01, %276
  %278 = fadd double %274, %277
  %279 = load i32* %4, align 4
  %280 = sitofp i32 %279 to float
  %281 = fpext float %280 to double
  %282 = fcmp ogt double %278, %281
  br i1 %282, label %283, label %288

; <label>:283                                     ; preds = %266
  %284 = load float* %h, align 4
  %285 = fpext float %284 to double
  %286 = fmul double 5.000000e-01, %285
  %287 = fptrunc double %286 to float
  store float %287, float* %h, align 4
  br label %288

; <label>:288                                     ; preds = %283, %266
  br label %289

; <label>:289                                     ; preds = %288, %257
  br label %290

; <label>:290                                     ; preds = %289
  %291 = load i32* %j, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %j, align 4
  br label %61

; <label>:293                                     ; preds = %237, %104, %61
  %294 = load i32* %k, align 4
  %295 = sext i32 %294 to i64
  %296 = load float** %3, align 8
  %297 = getelementptr inbounds float* %296, i64 %295
  %298 = load float* %297, align 4
  %299 = load float* %h, align 4
  %300 = fadd float %298, %299
  %301 = load i32* %k, align 4
  %302 = sext i32 %301 to i64
  %303 = load float** %3, align 8
  %304 = getelementptr inbounds float* %303, i64 %302
  store float %300, float* %304, align 4
  %305 = load i32* %j, align 4
  %306 = icmp sge i32 %305, 12
  br i1 %306, label %307, label %308

; <label>:307                                     ; preds = %293
  store i32 -1, i32* %1
  br label %319

; <label>:308                                     ; preds = %293
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load i32* %k, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %k, align 4
  br label %48

; <label>:312                                     ; preds = %48
  %313 = load float** %err, align 8
  %314 = bitcast float* %313 to i8*
  call void @free(i8* %314) #5
  %315 = load float** %scale, align 8
  %316 = bitcast float* %315 to i8*
  call void @free(i8* %316) #5
  %317 = load float** %yy, align 8
  %318 = bitcast float* %317 to i8*
  call void @free(i8* %318) #5
  store i32 0, i32* %1
  br label %319

; <label>:319                                     ; preds = %312, %307, %33, %28
  %320 = load i32* %1
  ret i32 %320
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal float @embedded_fehlberg_7_8(float %timeinst, float %h, float* %initvalu, float* %finavalu, float* %error, float* %parameter, i32 %mode) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %h2_7 = alloca float, align 4
  %timeinst_temp = alloca float, align 4
  %initvalu_temp = alloca float*, align 8
  %finavalu_temp = alloca float**, align 8
  %i = alloca i32, align 4
  store float %timeinst, float* %2, align 4
  store float %h, float* %3, align 4
  store float* %initvalu, float** %4, align 8
  store float* %finavalu, float** %5, align 8
  store float* %error, float** %6, align 8
  store float* %parameter, float** %7, align 8
  store i32 %mode, i32* %8, align 4
  %9 = load float* %3, align 4
  %10 = fmul float 0x3FB2F684C0000000, %9
  store float %10, float* %h2_7, align 4
  %11 = call noalias i8* @malloc(i64 364) #5
  %12 = bitcast i8* %11 to float*
  store float* %12, float** %initvalu_temp, align 8
  %13 = call noalias i8* @malloc(i64 104) #5
  %14 = bitcast i8* %13 to float**
  store float** %14, float*** %finavalu_temp, align 8
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %25, %0
  %16 = load i32* %i, align 4
  %17 = icmp slt i32 %16, 13
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %15
  %19 = call noalias i8* @malloc(i64 364) #5
  %20 = bitcast i8* %19 to float*
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load float*** %finavalu_temp, align 8
  %24 = getelementptr inbounds float** %23, i64 %22
  store float* %20, float** %24, align 8
  br label %25

; <label>:25                                      ; preds = %18
  %26 = load i32* %i, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %15

; <label>:28                                      ; preds = %15
  %29 = load float* %2, align 4
  store float %29, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %30

; <label>:30                                      ; preds = %43, %28
  %31 = load i32* %i, align 4
  %32 = icmp slt i32 %31, 91
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %30
  %34 = load i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = load float** %4, align 8
  %37 = getelementptr inbounds float* %36, i64 %35
  %38 = load float* %37, align 4
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load float** %initvalu_temp, align 8
  %42 = getelementptr inbounds float* %41, i64 %40
  store float %38, float* %42, align 4
  br label %43

; <label>:43                                      ; preds = %33
  %44 = load i32* %i, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %30

; <label>:46                                      ; preds = %30
  %47 = load float* %timeinst_temp, align 4
  %48 = load float** %initvalu_temp, align 8
  %49 = load float** %7, align 8
  %50 = load float*** %finavalu_temp, align 8
  %51 = getelementptr inbounds float** %50, i64 0
  %52 = load float** %51, align 8
  %53 = load i32* %8, align 4
  call void @master(float %47, float* %48, float* %49, float* %52, i32 %53)
  %54 = load float* %2, align 4
  %55 = load float* %h2_7, align 4
  %56 = fadd float %54, %55
  store float %56, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %57

; <label>:57                                      ; preds = %80, %46
  %58 = load i32* %i, align 4
  %59 = icmp slt i32 %58, 91
  br i1 %59, label %60, label %83

; <label>:60                                      ; preds = %57
  %61 = load i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = load float** %4, align 8
  %64 = getelementptr inbounds float* %63, i64 %62
  %65 = load float* %64, align 4
  %66 = load float* %h2_7, align 4
  %67 = load i32* %i, align 4
  %68 = sext i32 %67 to i64
  %69 = load float*** %finavalu_temp, align 8
  %70 = getelementptr inbounds float** %69, i64 0
  %71 = load float** %70, align 8
  %72 = getelementptr inbounds float* %71, i64 %68
  %73 = load float* %72, align 4
  %74 = fmul float %66, %73
  %75 = fadd float %65, %74
  %76 = load i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = load float** %initvalu_temp, align 8
  %79 = getelementptr inbounds float* %78, i64 %77
  store float %75, float* %79, align 4
  br label %80

; <label>:80                                      ; preds = %60
  %81 = load i32* %i, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %i, align 4
  br label %57

; <label>:83                                      ; preds = %57
  %84 = load float* %timeinst_temp, align 4
  %85 = load float** %initvalu_temp, align 8
  %86 = load float** %7, align 8
  %87 = load float*** %finavalu_temp, align 8
  %88 = getelementptr inbounds float** %87, i64 1
  %89 = load float** %88, align 8
  %90 = load i32* %8, align 4
  call void @master(float %84, float* %85, float* %86, float* %89, i32 %90)
  %91 = load float* %2, align 4
  %92 = load float* %3, align 4
  %93 = fmul float 0x3FBC71C720000000, %92
  %94 = fadd float %91, %93
  store float %94, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %95

; <label>:95                                      ; preds = %128, %83
  %96 = load i32* %i, align 4
  %97 = icmp slt i32 %96, 91
  br i1 %97, label %98, label %131

; <label>:98                                      ; preds = %95
  %99 = load i32* %i, align 4
  %100 = sext i32 %99 to i64
  %101 = load float** %4, align 8
  %102 = getelementptr inbounds float* %101, i64 %100
  %103 = load float* %102, align 4
  %104 = load float* %3, align 4
  %105 = load i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = load float*** %finavalu_temp, align 8
  %108 = getelementptr inbounds float** %107, i64 0
  %109 = load float** %108, align 8
  %110 = getelementptr inbounds float* %109, i64 %106
  %111 = load float* %110, align 4
  %112 = fmul float 0x3F9C71C720000000, %111
  %113 = load i32* %i, align 4
  %114 = sext i32 %113 to i64
  %115 = load float*** %finavalu_temp, align 8
  %116 = getelementptr inbounds float** %115, i64 1
  %117 = load float** %116, align 8
  %118 = getelementptr inbounds float* %117, i64 %114
  %119 = load float* %118, align 4
  %120 = fmul float 0x3FB5555560000000, %119
  %121 = fadd float %112, %120
  %122 = fmul float %104, %121
  %123 = fadd float %103, %122
  %124 = load i32* %i, align 4
  %125 = sext i32 %124 to i64
  %126 = load float** %initvalu_temp, align 8
  %127 = getelementptr inbounds float* %126, i64 %125
  store float %123, float* %127, align 4
  br label %128

; <label>:128                                     ; preds = %98
  %129 = load i32* %i, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4
  br label %95

; <label>:131                                     ; preds = %95
  %132 = load float* %timeinst_temp, align 4
  %133 = load float** %initvalu_temp, align 8
  %134 = load float** %7, align 8
  %135 = load float*** %finavalu_temp, align 8
  %136 = getelementptr inbounds float** %135, i64 2
  %137 = load float** %136, align 8
  %138 = load i32* %8, align 4
  call void @master(float %132, float* %133, float* %134, float* %137, i32 %138)
  %139 = load float* %2, align 4
  %140 = load float* %3, align 4
  %141 = fmul float 0x3FC5555560000000, %140
  %142 = fadd float %139, %141
  store float %142, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %143

; <label>:143                                     ; preds = %176, %131
  %144 = load i32* %i, align 4
  %145 = icmp slt i32 %144, 91
  br i1 %145, label %146, label %179

; <label>:146                                     ; preds = %143
  %147 = load i32* %i, align 4
  %148 = sext i32 %147 to i64
  %149 = load float** %4, align 8
  %150 = getelementptr inbounds float* %149, i64 %148
  %151 = load float* %150, align 4
  %152 = load float* %3, align 4
  %153 = load i32* %i, align 4
  %154 = sext i32 %153 to i64
  %155 = load float*** %finavalu_temp, align 8
  %156 = getelementptr inbounds float** %155, i64 0
  %157 = load float** %156, align 8
  %158 = getelementptr inbounds float* %157, i64 %154
  %159 = load float* %158, align 4
  %160 = fmul float 0x3FA5555560000000, %159
  %161 = load i32* %i, align 4
  %162 = sext i32 %161 to i64
  %163 = load float*** %finavalu_temp, align 8
  %164 = getelementptr inbounds float** %163, i64 2
  %165 = load float** %164, align 8
  %166 = getelementptr inbounds float* %165, i64 %162
  %167 = load float* %166, align 4
  %168 = fmul float 1.250000e-01, %167
  %169 = fadd float %160, %168
  %170 = fmul float %152, %169
  %171 = fadd float %151, %170
  %172 = load i32* %i, align 4
  %173 = sext i32 %172 to i64
  %174 = load float** %initvalu_temp, align 8
  %175 = getelementptr inbounds float* %174, i64 %173
  store float %171, float* %175, align 4
  br label %176

; <label>:176                                     ; preds = %146
  %177 = load i32* %i, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %i, align 4
  br label %143

; <label>:179                                     ; preds = %143
  %180 = load float* %timeinst_temp, align 4
  %181 = load float** %initvalu_temp, align 8
  %182 = load float** %7, align 8
  %183 = load float*** %finavalu_temp, align 8
  %184 = getelementptr inbounds float** %183, i64 3
  %185 = load float** %184, align 8
  %186 = load i32* %8, align 4
  call void @master(float %180, float* %181, float* %182, float* %185, i32 %186)
  %187 = load float* %2, align 4
  %188 = load float* %3, align 4
  %189 = fmul float 0x3FDAAAAAA0000000, %188
  %190 = fadd float %187, %189
  store float %190, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %191

; <label>:191                                     ; preds = %233, %179
  %192 = load i32* %i, align 4
  %193 = icmp slt i32 %192, 91
  br i1 %193, label %194, label %236

; <label>:194                                     ; preds = %191
  %195 = load i32* %i, align 4
  %196 = sext i32 %195 to i64
  %197 = load float** %4, align 8
  %198 = getelementptr inbounds float* %197, i64 %196
  %199 = load float* %198, align 4
  %200 = load float* %3, align 4
  %201 = load i32* %i, align 4
  %202 = sext i32 %201 to i64
  %203 = load float*** %finavalu_temp, align 8
  %204 = getelementptr inbounds float** %203, i64 0
  %205 = load float** %204, align 8
  %206 = getelementptr inbounds float* %205, i64 %202
  %207 = load float* %206, align 4
  %208 = fmul float 0x3FDAAAAAA0000000, %207
  %209 = load i32* %i, align 4
  %210 = sext i32 %209 to i64
  %211 = load float*** %finavalu_temp, align 8
  %212 = getelementptr inbounds float** %211, i64 2
  %213 = load float** %212, align 8
  %214 = getelementptr inbounds float* %213, i64 %210
  %215 = load float* %214, align 4
  %216 = fmul float -1.562500e+00, %215
  %217 = fadd float %208, %216
  %218 = load i32* %i, align 4
  %219 = sext i32 %218 to i64
  %220 = load float*** %finavalu_temp, align 8
  %221 = getelementptr inbounds float** %220, i64 3
  %222 = load float** %221, align 8
  %223 = getelementptr inbounds float* %222, i64 %219
  %224 = load float* %223, align 4
  %225 = fmul float 1.562500e+00, %224
  %226 = fadd float %217, %225
  %227 = fmul float %200, %226
  %228 = fadd float %199, %227
  %229 = load i32* %i, align 4
  %230 = sext i32 %229 to i64
  %231 = load float** %initvalu_temp, align 8
  %232 = getelementptr inbounds float* %231, i64 %230
  store float %228, float* %232, align 4
  br label %233

; <label>:233                                     ; preds = %194
  %234 = load i32* %i, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %i, align 4
  br label %191

; <label>:236                                     ; preds = %191
  %237 = load float* %timeinst_temp, align 4
  %238 = load float** %initvalu_temp, align 8
  %239 = load float** %7, align 8
  %240 = load float*** %finavalu_temp, align 8
  %241 = getelementptr inbounds float** %240, i64 4
  %242 = load float** %241, align 8
  %243 = load i32* %8, align 4
  call void @master(float %237, float* %238, float* %239, float* %242, i32 %243)
  %244 = load float* %2, align 4
  %245 = load float* %3, align 4
  %246 = fmul float 5.000000e-01, %245
  %247 = fadd float %244, %246
  store float %247, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %248

; <label>:248                                     ; preds = %290, %236
  %249 = load i32* %i, align 4
  %250 = icmp slt i32 %249, 91
  br i1 %250, label %251, label %293

; <label>:251                                     ; preds = %248
  %252 = load i32* %i, align 4
  %253 = sext i32 %252 to i64
  %254 = load float** %4, align 8
  %255 = getelementptr inbounds float* %254, i64 %253
  %256 = load float* %255, align 4
  %257 = load float* %3, align 4
  %258 = load i32* %i, align 4
  %259 = sext i32 %258 to i64
  %260 = load float*** %finavalu_temp, align 8
  %261 = getelementptr inbounds float** %260, i64 0
  %262 = load float** %261, align 8
  %263 = getelementptr inbounds float* %262, i64 %259
  %264 = load float* %263, align 4
  %265 = fmul float 0x3FA99999A0000000, %264
  %266 = load i32* %i, align 4
  %267 = sext i32 %266 to i64
  %268 = load float*** %finavalu_temp, align 8
  %269 = getelementptr inbounds float** %268, i64 3
  %270 = load float** %269, align 8
  %271 = getelementptr inbounds float* %270, i64 %267
  %272 = load float* %271, align 4
  %273 = fmul float 2.500000e-01, %272
  %274 = fadd float %265, %273
  %275 = load i32* %i, align 4
  %276 = sext i32 %275 to i64
  %277 = load float*** %finavalu_temp, align 8
  %278 = getelementptr inbounds float** %277, i64 4
  %279 = load float** %278, align 8
  %280 = getelementptr inbounds float* %279, i64 %276
  %281 = load float* %280, align 4
  %282 = fmul float 0x3FC99999A0000000, %281
  %283 = fadd float %274, %282
  %284 = fmul float %257, %283
  %285 = fadd float %256, %284
  %286 = load i32* %i, align 4
  %287 = sext i32 %286 to i64
  %288 = load float** %initvalu_temp, align 8
  %289 = getelementptr inbounds float* %288, i64 %287
  store float %285, float* %289, align 4
  br label %290

; <label>:290                                     ; preds = %251
  %291 = load i32* %i, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %i, align 4
  br label %248

; <label>:293                                     ; preds = %248
  %294 = load float* %timeinst_temp, align 4
  %295 = load float** %initvalu_temp, align 8
  %296 = load float** %7, align 8
  %297 = load float*** %finavalu_temp, align 8
  %298 = getelementptr inbounds float** %297, i64 5
  %299 = load float** %298, align 8
  %300 = load i32* %8, align 4
  call void @master(float %294, float* %295, float* %296, float* %299, i32 %300)
  %301 = load float* %2, align 4
  %302 = load float* %3, align 4
  %303 = fmul float 0x3FEAAAAAA0000000, %302
  %304 = fadd float %301, %303
  store float %304, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %305

; <label>:305                                     ; preds = %356, %293
  %306 = load i32* %i, align 4
  %307 = icmp slt i32 %306, 91
  br i1 %307, label %308, label %359

; <label>:308                                     ; preds = %305
  %309 = load i32* %i, align 4
  %310 = sext i32 %309 to i64
  %311 = load float** %4, align 8
  %312 = getelementptr inbounds float* %311, i64 %310
  %313 = load float* %312, align 4
  %314 = load float* %3, align 4
  %315 = load i32* %i, align 4
  %316 = sext i32 %315 to i64
  %317 = load float*** %finavalu_temp, align 8
  %318 = getelementptr inbounds float** %317, i64 0
  %319 = load float** %318, align 8
  %320 = getelementptr inbounds float* %319, i64 %316
  %321 = load float* %320, align 4
  %322 = fmul float 0xBFCDA12F60000000, %321
  %323 = load i32* %i, align 4
  %324 = sext i32 %323 to i64
  %325 = load float*** %finavalu_temp, align 8
  %326 = getelementptr inbounds float** %325, i64 3
  %327 = load float** %326, align 8
  %328 = getelementptr inbounds float* %327, i64 %324
  %329 = load float* %328, align 4
  %330 = fmul float 0x3FF284BDA0000000, %329
  %331 = fadd float %322, %330
  %332 = load i32* %i, align 4
  %333 = sext i32 %332 to i64
  %334 = load float*** %finavalu_temp, align 8
  %335 = getelementptr inbounds float** %334, i64 4
  %336 = load float** %335, align 8
  %337 = getelementptr inbounds float* %336, i64 %333
  %338 = load float* %337, align 4
  %339 = fmul float 0xC003425EE0000000, %338
  %340 = fadd float %331, %339
  %341 = load i32* %i, align 4
  %342 = sext i32 %341 to i64
  %343 = load float*** %finavalu_temp, align 8
  %344 = getelementptr inbounds float** %343, i64 5
  %345 = load float** %344, align 8
  %346 = getelementptr inbounds float* %345, i64 %342
  %347 = load float* %346, align 4
  %348 = fmul float 0x400284BDA0000000, %347
  %349 = fadd float %340, %348
  %350 = fmul float %314, %349
  %351 = fadd float %313, %350
  %352 = load i32* %i, align 4
  %353 = sext i32 %352 to i64
  %354 = load float** %initvalu_temp, align 8
  %355 = getelementptr inbounds float* %354, i64 %353
  store float %351, float* %355, align 4
  br label %356

; <label>:356                                     ; preds = %308
  %357 = load i32* %i, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %i, align 4
  br label %305

; <label>:359                                     ; preds = %305
  %360 = load float* %timeinst_temp, align 4
  %361 = load float** %initvalu_temp, align 8
  %362 = load float** %7, align 8
  %363 = load float*** %finavalu_temp, align 8
  %364 = getelementptr inbounds float** %363, i64 6
  %365 = load float** %364, align 8
  %366 = load i32* %8, align 4
  call void @master(float %360, float* %361, float* %362, float* %365, i32 %366)
  %367 = load float* %2, align 4
  %368 = load float* %3, align 4
  %369 = fmul float 0x3FC5555560000000, %368
  %370 = fadd float %367, %369
  store float %370, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %371

; <label>:371                                     ; preds = %422, %359
  %372 = load i32* %i, align 4
  %373 = icmp slt i32 %372, 91
  br i1 %373, label %374, label %425

; <label>:374                                     ; preds = %371
  %375 = load i32* %i, align 4
  %376 = sext i32 %375 to i64
  %377 = load float** %4, align 8
  %378 = getelementptr inbounds float* %377, i64 %376
  %379 = load float* %378, align 4
  %380 = load float* %3, align 4
  %381 = load i32* %i, align 4
  %382 = sext i32 %381 to i64
  %383 = load float*** %finavalu_temp, align 8
  %384 = getelementptr inbounds float** %383, i64 0
  %385 = load float** %384, align 8
  %386 = getelementptr inbounds float* %385, i64 %382
  %387 = load float* %386, align 4
  %388 = fmul float 0x3FBA740DA0000000, %387
  %389 = load i32* %i, align 4
  %390 = sext i32 %389 to i64
  %391 = load float*** %finavalu_temp, align 8
  %392 = getelementptr inbounds float** %391, i64 4
  %393 = load float** %392, align 8
  %394 = getelementptr inbounds float* %393, i64 %390
  %395 = load float* %394, align 4
  %396 = fmul float 0x3FD159E260000000, %395
  %397 = fadd float %388, %396
  %398 = load i32* %i, align 4
  %399 = sext i32 %398 to i64
  %400 = load float*** %finavalu_temp, align 8
  %401 = getelementptr inbounds float** %400, i64 5
  %402 = load float** %401, align 8
  %403 = getelementptr inbounds float* %402, i64 %399
  %404 = load float* %403, align 4
  %405 = fmul float 0xBFCC71C720000000, %404
  %406 = fadd float %397, %405
  %407 = load i32* %i, align 4
  %408 = sext i32 %407 to i64
  %409 = load float*** %finavalu_temp, align 8
  %410 = getelementptr inbounds float** %409, i64 6
  %411 = load float** %410, align 8
  %412 = getelementptr inbounds float* %411, i64 %408
  %413 = load float* %412, align 4
  %414 = fmul float 0x3F8D950C80000000, %413
  %415 = fadd float %406, %414
  %416 = fmul float %380, %415
  %417 = fadd float %379, %416
  %418 = load i32* %i, align 4
  %419 = sext i32 %418 to i64
  %420 = load float** %initvalu_temp, align 8
  %421 = getelementptr inbounds float* %420, i64 %419
  store float %417, float* %421, align 4
  br label %422

; <label>:422                                     ; preds = %374
  %423 = load i32* %i, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %i, align 4
  br label %371

; <label>:425                                     ; preds = %371
  %426 = load float* %timeinst_temp, align 4
  %427 = load float** %initvalu_temp, align 8
  %428 = load float** %7, align 8
  %429 = load float*** %finavalu_temp, align 8
  %430 = getelementptr inbounds float** %429, i64 7
  %431 = load float** %430, align 8
  %432 = load i32* %8, align 4
  call void @master(float %426, float* %427, float* %428, float* %431, i32 %432)
  %433 = load float* %2, align 4
  %434 = load float* %3, align 4
  %435 = fmul float 0x3FE5555560000000, %434
  %436 = fadd float %433, %435
  store float %436, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %437

; <label>:437                                     ; preds = %506, %425
  %438 = load i32* %i, align 4
  %439 = icmp slt i32 %438, 91
  br i1 %439, label %440, label %509

; <label>:440                                     ; preds = %437
  %441 = load i32* %i, align 4
  %442 = sext i32 %441 to i64
  %443 = load float** %4, align 8
  %444 = getelementptr inbounds float* %443, i64 %442
  %445 = load float* %444, align 4
  %446 = load float* %3, align 4
  %447 = load i32* %i, align 4
  %448 = sext i32 %447 to i64
  %449 = load float*** %finavalu_temp, align 8
  %450 = getelementptr inbounds float** %449, i64 0
  %451 = load float** %450, align 8
  %452 = getelementptr inbounds float* %451, i64 %448
  %453 = load float* %452, align 4
  %454 = fmul float 2.000000e+00, %453
  %455 = load i32* %i, align 4
  %456 = sext i32 %455 to i64
  %457 = load float*** %finavalu_temp, align 8
  %458 = getelementptr inbounds float** %457, i64 3
  %459 = load float** %458, align 8
  %460 = getelementptr inbounds float* %459, i64 %456
  %461 = load float* %460, align 4
  %462 = fmul float 0xC021AAAAA0000000, %461
  %463 = fadd float %454, %462
  %464 = load i32* %i, align 4
  %465 = sext i32 %464 to i64
  %466 = load float*** %finavalu_temp, align 8
  %467 = getelementptr inbounds float** %466, i64 4
  %468 = load float** %467, align 8
  %469 = getelementptr inbounds float* %468, i64 %465
  %470 = load float* %469, align 4
  %471 = fmul float 0x402F49F4A0000000, %470
  %472 = fadd float %463, %471
  %473 = load i32* %i, align 4
  %474 = sext i32 %473 to i64
  %475 = load float*** %finavalu_temp, align 8
  %476 = getelementptr inbounds float** %475, i64 5
  %477 = load float** %476, align 8
  %478 = getelementptr inbounds float* %477, i64 %474
  %479 = load float* %478, align 4
  %480 = fmul float 0xC027C71C80000000, %479
  %481 = fadd float %472, %480
  %482 = load i32* %i, align 4
  %483 = sext i32 %482 to i64
  %484 = load float*** %finavalu_temp, align 8
  %485 = getelementptr inbounds float** %484, i64 6
  %486 = load float** %485, align 8
  %487 = getelementptr inbounds float* %486, i64 %483
  %488 = load float* %487, align 4
  %489 = fmul float 0x3FE7D27D20000000, %488
  %490 = fadd float %481, %489
  %491 = load i32* %i, align 4
  %492 = sext i32 %491 to i64
  %493 = load float*** %finavalu_temp, align 8
  %494 = getelementptr inbounds float** %493, i64 7
  %495 = load float** %494, align 8
  %496 = getelementptr inbounds float* %495, i64 %492
  %497 = load float* %496, align 4
  %498 = fmul float 3.000000e+00, %497
  %499 = fadd float %490, %498
  %500 = fmul float %446, %499
  %501 = fadd float %445, %500
  %502 = load i32* %i, align 4
  %503 = sext i32 %502 to i64
  %504 = load float** %initvalu_temp, align 8
  %505 = getelementptr inbounds float* %504, i64 %503
  store float %501, float* %505, align 4
  br label %506

; <label>:506                                     ; preds = %440
  %507 = load i32* %i, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %i, align 4
  br label %437

; <label>:509                                     ; preds = %437
  %510 = load float* %timeinst_temp, align 4
  %511 = load float** %initvalu_temp, align 8
  %512 = load float** %7, align 8
  %513 = load float*** %finavalu_temp, align 8
  %514 = getelementptr inbounds float** %513, i64 8
  %515 = load float** %514, align 8
  %516 = load i32* %8, align 4
  call void @master(float %510, float* %511, float* %512, float* %515, i32 %516)
  %517 = load float* %2, align 4
  %518 = load float* %3, align 4
  %519 = fmul float 0x3FD5555560000000, %518
  %520 = fadd float %517, %519
  store float %520, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %521

; <label>:521                                     ; preds = %599, %509
  %522 = load i32* %i, align 4
  %523 = icmp slt i32 %522, 91
  br i1 %523, label %524, label %602

; <label>:524                                     ; preds = %521
  %525 = load i32* %i, align 4
  %526 = sext i32 %525 to i64
  %527 = load float** %4, align 8
  %528 = getelementptr inbounds float* %527, i64 %526
  %529 = load float* %528, align 4
  %530 = load float* %3, align 4
  %531 = load i32* %i, align 4
  %532 = sext i32 %531 to i64
  %533 = load float*** %finavalu_temp, align 8
  %534 = getelementptr inbounds float** %533, i64 0
  %535 = load float** %534, align 8
  %536 = getelementptr inbounds float* %535, i64 %532
  %537 = load float* %536, align 4
  %538 = fmul float 0xBFEAF684C0000000, %537
  %539 = load i32* %i, align 4
  %540 = sext i32 %539 to i64
  %541 = load float*** %finavalu_temp, align 8
  %542 = getelementptr inbounds float** %541, i64 3
  %543 = load float** %542, align 8
  %544 = getelementptr inbounds float* %543, i64 %540
  %545 = load float* %544, align 4
  %546 = fmul float 0x3FCB425EE0000000, %545
  %547 = fadd float %538, %546
  %548 = load i32* %i, align 4
  %549 = sext i32 %548 to i64
  %550 = load float*** %finavalu_temp, align 8
  %551 = getelementptr inbounds float** %550, i64 4
  %552 = load float** %551, align 8
  %553 = getelementptr inbounds float* %552, i64 %549
  %554 = load float* %553, align 4
  %555 = fmul float 0xC01CEB2400000000, %554
  %556 = fadd float %547, %555
  %557 = load i32* %i, align 4
  %558 = sext i32 %557 to i64
  %559 = load float*** %finavalu_temp, align 8
  %560 = getelementptr inbounds float** %559, i64 5
  %561 = load float** %560, align 8
  %562 = getelementptr inbounds float* %561, i64 %558
  %563 = load float* %562, align 4
  %564 = fmul float 0x4017097B40000000, %563
  %565 = fadd float %556, %564
  %566 = load i32* %i, align 4
  %567 = sext i32 %566 to i64
  %568 = load float*** %finavalu_temp, align 8
  %569 = getelementptr inbounds float** %568, i64 6
  %570 = load float** %569, align 8
  %571 = getelementptr inbounds float* %570, i64 %567
  %572 = load float* %571, align 4
  %573 = fmul float 0xBFD4444440000000, %572
  %574 = fadd float %565, %573
  %575 = load i32* %i, align 4
  %576 = sext i32 %575 to i64
  %577 = load float*** %finavalu_temp, align 8
  %578 = getelementptr inbounds float** %577, i64 7
  %579 = load float** %578, align 8
  %580 = getelementptr inbounds float* %579, i64 %576
  %581 = load float* %580, align 4
  %582 = fmul float 0x4006AAAAA0000000, %581
  %583 = fadd float %574, %582
  %584 = load i32* %i, align 4
  %585 = sext i32 %584 to i64
  %586 = load float*** %finavalu_temp, align 8
  %587 = getelementptr inbounds float** %586, i64 8
  %588 = load float** %587, align 8
  %589 = getelementptr inbounds float* %588, i64 %585
  %590 = load float* %589, align 4
  %591 = fmul float 0xBFB5555560000000, %590
  %592 = fadd float %583, %591
  %593 = fmul float %530, %592
  %594 = fadd float %529, %593
  %595 = load i32* %i, align 4
  %596 = sext i32 %595 to i64
  %597 = load float** %initvalu_temp, align 8
  %598 = getelementptr inbounds float* %597, i64 %596
  store float %594, float* %598, align 4
  br label %599

; <label>:599                                     ; preds = %524
  %600 = load i32* %i, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %i, align 4
  br label %521

; <label>:602                                     ; preds = %521
  %603 = load float* %timeinst_temp, align 4
  %604 = load float** %initvalu_temp, align 8
  %605 = load float** %7, align 8
  %606 = load float*** %finavalu_temp, align 8
  %607 = getelementptr inbounds float** %606, i64 9
  %608 = load float** %607, align 8
  %609 = load i32* %8, align 4
  call void @master(float %603, float* %604, float* %605, float* %608, i32 %609)
  %610 = load float* %2, align 4
  %611 = load float* %3, align 4
  %612 = fadd float %610, %611
  store float %612, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %613

; <label>:613                                     ; preds = %700, %602
  %614 = load i32* %i, align 4
  %615 = icmp slt i32 %614, 91
  br i1 %615, label %616, label %703

; <label>:616                                     ; preds = %613
  %617 = load i32* %i, align 4
  %618 = sext i32 %617 to i64
  %619 = load float** %4, align 8
  %620 = getelementptr inbounds float* %619, i64 %618
  %621 = load float* %620, align 4
  %622 = load float* %3, align 4
  %623 = load i32* %i, align 4
  %624 = sext i32 %623 to i64
  %625 = load float*** %finavalu_temp, align 8
  %626 = getelementptr inbounds float** %625, i64 0
  %627 = load float** %626, align 8
  %628 = getelementptr inbounds float* %627, i64 %624
  %629 = load float* %628, align 4
  %630 = fmul float 0x3FE29959A0000000, %629
  %631 = load i32* %i, align 4
  %632 = sext i32 %631 to i64
  %633 = load float*** %finavalu_temp, align 8
  %634 = getelementptr inbounds float** %633, i64 3
  %635 = load float** %634, align 8
  %636 = getelementptr inbounds float* %635, i64 %632
  %637 = load float* %636, align 4
  %638 = fmul float 0xC000A25760000000, %637
  %639 = fadd float %630, %638
  %640 = load i32* %i, align 4
  %641 = sext i32 %640 to i64
  %642 = load float*** %finavalu_temp, align 8
  %643 = getelementptr inbounds float** %642, i64 4
  %644 = load float** %643, align 8
  %645 = getelementptr inbounds float* %644, i64 %641
  %646 = load float* %645, align 4
  %647 = fmul float 0x40118B9D20000000, %646
  %648 = fadd float %639, %647
  %649 = load i32* %i, align 4
  %650 = sext i32 %649 to i64
  %651 = load float*** %finavalu_temp, align 8
  %652 = getelementptr inbounds float** %651, i64 5
  %653 = load float** %652, align 8
  %654 = getelementptr inbounds float* %653, i64 %650
  %655 = load float* %654, align 4
  %656 = fmul float 0xC00D5DA8A0000000, %655
  %657 = fadd float %648, %656
  %658 = load i32* %i, align 4
  %659 = sext i32 %658 to i64
  %660 = load float*** %finavalu_temp, align 8
  %661 = getelementptr inbounds float** %660, i64 6
  %662 = load float** %661, align 8
  %663 = getelementptr inbounds float* %662, i64 %659
  %664 = load float* %663, align 4
  %665 = fmul float 0x3FE0A5D680000000, %664
  %666 = fadd float %657, %665
  %667 = load i32* %i, align 4
  %668 = sext i32 %667 to i64
  %669 = load float*** %finavalu_temp, align 8
  %670 = getelementptr inbounds float** %669, i64 7
  %671 = load float** %670, align 8
  %672 = getelementptr inbounds float* %671, i64 %668
  %673 = load float* %672, align 4
  %674 = fmul float 0x3FE18F9C20000000, %673
  %675 = fadd float %666, %674
  %676 = load i32* %i, align 4
  %677 = sext i32 %676 to i64
  %678 = load float*** %finavalu_temp, align 8
  %679 = getelementptr inbounds float** %678, i64 8
  %680 = load float** %679, align 8
  %681 = getelementptr inbounds float* %680, i64 %677
  %682 = load float* %681, align 4
  %683 = fmul float 0x3FD18F9C20000000, %682
  %684 = fadd float %675, %683
  %685 = load i32* %i, align 4
  %686 = sext i32 %685 to i64
  %687 = load float*** %finavalu_temp, align 8
  %688 = getelementptr inbounds float** %687, i64 9
  %689 = load float** %688, align 8
  %690 = getelementptr inbounds float* %689, i64 %686
  %691 = load float* %690, align 4
  %692 = fmul float 0x3FDC18F9C0000000, %691
  %693 = fadd float %684, %692
  %694 = fmul float %622, %693
  %695 = fadd float %621, %694
  %696 = load i32* %i, align 4
  %697 = sext i32 %696 to i64
  %698 = load float** %initvalu_temp, align 8
  %699 = getelementptr inbounds float* %698, i64 %697
  store float %695, float* %699, align 4
  br label %700

; <label>:700                                     ; preds = %616
  %701 = load i32* %i, align 4
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %i, align 4
  br label %613

; <label>:703                                     ; preds = %613
  %704 = load float* %timeinst_temp, align 4
  %705 = load float** %initvalu_temp, align 8
  %706 = load float** %7, align 8
  %707 = load float*** %finavalu_temp, align 8
  %708 = getelementptr inbounds float** %707, i64 10
  %709 = load float** %708, align 8
  %710 = load i32* %8, align 4
  call void @master(float %704, float* %705, float* %706, float* %709, i32 %710)
  %711 = load float* %2, align 4
  store float %711, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %712

; <label>:712                                     ; preds = %781, %703
  %713 = load i32* %i, align 4
  %714 = icmp slt i32 %713, 91
  br i1 %714, label %715, label %784

; <label>:715                                     ; preds = %712
  %716 = load i32* %i, align 4
  %717 = sext i32 %716 to i64
  %718 = load float** %4, align 8
  %719 = getelementptr inbounds float* %718, i64 %717
  %720 = load float* %719, align 4
  %721 = load float* %3, align 4
  %722 = load i32* %i, align 4
  %723 = sext i32 %722 to i64
  %724 = load float*** %finavalu_temp, align 8
  %725 = getelementptr inbounds float** %724, i64 0
  %726 = load float** %725, align 8
  %727 = getelementptr inbounds float* %726, i64 %723
  %728 = load float* %727, align 4
  %729 = fmul float 0x3F8DF881E0000000, %728
  %730 = load i32* %i, align 4
  %731 = sext i32 %730 to i64
  %732 = load float*** %finavalu_temp, align 8
  %733 = getelementptr inbounds float** %732, i64 5
  %734 = load float** %733, align 8
  %735 = getelementptr inbounds float* %734, i64 %731
  %736 = load float* %735, align 4
  %737 = fmul float 0xBFC2BB5120000000, %736
  %738 = fadd float %729, %737
  %739 = load i32* %i, align 4
  %740 = sext i32 %739 to i64
  %741 = load float*** %finavalu_temp, align 8
  %742 = getelementptr inbounds float** %741, i64 6
  %743 = load float** %742, align 8
  %744 = getelementptr inbounds float* %743, i64 %740
  %745 = load float* %744, align 4
  %746 = fmul float 0xBF8DF881E0000000, %745
  %747 = fadd float %738, %746
  %748 = load i32* %i, align 4
  %749 = sext i32 %748 to i64
  %750 = load float*** %finavalu_temp, align 8
  %751 = getelementptr inbounds float** %750, i64 7
  %752 = load float** %751, align 8
  %753 = getelementptr inbounds float* %752, i64 %749
  %754 = load float* %753, align 4
  %755 = fmul float 0xBFB2BB5120000000, %754
  %756 = fadd float %747, %755
  %757 = load i32* %i, align 4
  %758 = sext i32 %757 to i64
  %759 = load float*** %finavalu_temp, align 8
  %760 = getelementptr inbounds float** %759, i64 8
  %761 = load float** %760, align 8
  %762 = getelementptr inbounds float* %761, i64 %758
  %763 = load float* %762, align 4
  %764 = fmul float 0x3FB2BB5120000000, %763
  %765 = fadd float %756, %764
  %766 = load i32* %i, align 4
  %767 = sext i32 %766 to i64
  %768 = load float*** %finavalu_temp, align 8
  %769 = getelementptr inbounds float** %768, i64 9
  %770 = load float** %769, align 8
  %771 = getelementptr inbounds float* %770, i64 %767
  %772 = load float* %771, align 4
  %773 = fmul float 0x3FC2BB5120000000, %772
  %774 = fadd float %765, %773
  %775 = fmul float %721, %774
  %776 = fadd float %720, %775
  %777 = load i32* %i, align 4
  %778 = sext i32 %777 to i64
  %779 = load float** %initvalu_temp, align 8
  %780 = getelementptr inbounds float* %779, i64 %778
  store float %776, float* %780, align 4
  br label %781

; <label>:781                                     ; preds = %715
  %782 = load i32* %i, align 4
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %i, align 4
  br label %712

; <label>:784                                     ; preds = %712
  %785 = load float* %timeinst_temp, align 4
  %786 = load float** %initvalu_temp, align 8
  %787 = load float** %7, align 8
  %788 = load float*** %finavalu_temp, align 8
  %789 = getelementptr inbounds float** %788, i64 11
  %790 = load float** %789, align 8
  %791 = load i32* %8, align 4
  call void @master(float %785, float* %786, float* %787, float* %790, i32 %791)
  %792 = load float* %2, align 4
  %793 = load float* %3, align 4
  %794 = fadd float %792, %793
  store float %794, float* %timeinst_temp, align 4
  store i32 0, i32* %i, align 4
  br label %795

; <label>:795                                     ; preds = %890, %784
  %796 = load i32* %i, align 4
  %797 = icmp slt i32 %796, 91
  br i1 %797, label %798, label %893

; <label>:798                                     ; preds = %795
  %799 = load i32* %i, align 4
  %800 = sext i32 %799 to i64
  %801 = load float** %4, align 8
  %802 = getelementptr inbounds float* %801, i64 %800
  %803 = load float* %802, align 4
  %804 = load float* %3, align 4
  %805 = load i32* %i, align 4
  %806 = sext i32 %805 to i64
  %807 = load float*** %finavalu_temp, align 8
  %808 = getelementptr inbounds float** %807, i64 0
  %809 = load float** %808, align 8
  %810 = getelementptr inbounds float* %809, i64 %806
  %811 = load float* %810, align 4
  %812 = fmul float 0xBFDBBD10C0000000, %811
  %813 = load i32* %i, align 4
  %814 = sext i32 %813 to i64
  %815 = load float*** %finavalu_temp, align 8
  %816 = getelementptr inbounds float** %815, i64 3
  %817 = load float** %816, align 8
  %818 = getelementptr inbounds float* %817, i64 %814
  %819 = load float* %818, align 4
  %820 = fmul float 0xC000A25760000000, %819
  %821 = fadd float %812, %820
  %822 = load i32* %i, align 4
  %823 = sext i32 %822 to i64
  %824 = load float*** %finavalu_temp, align 8
  %825 = getelementptr inbounds float** %824, i64 4
  %826 = load float** %825, align 8
  %827 = getelementptr inbounds float* %826, i64 %823
  %828 = load float* %827, align 4
  %829 = fmul float 0x40118B9D20000000, %828
  %830 = fadd float %821, %829
  %831 = load i32* %i, align 4
  %832 = sext i32 %831 to i64
  %833 = load float*** %finavalu_temp, align 8
  %834 = getelementptr inbounds float** %833, i64 5
  %835 = load float** %834, align 8
  %836 = getelementptr inbounds float* %835, i64 %832
  %837 = load float* %836, align 4
  %838 = fmul float 0xC00C31F380000000, %837
  %839 = fadd float %830, %838
  %840 = load i32* %i, align 4
  %841 = sext i32 %840 to i64
  %842 = load float*** %finavalu_temp, align 8
  %843 = getelementptr inbounds float** %842, i64 6
  %844 = load float** %843, align 8
  %845 = getelementptr inbounds float* %844, i64 %841
  %846 = load float* %845, align 4
  %847 = fmul float 0x3FE11DB8A0000000, %846
  %848 = fadd float %839, %847
  %849 = load i32* %i, align 4
  %850 = sext i32 %849 to i64
  %851 = load float*** %finavalu_temp, align 8
  %852 = getelementptr inbounds float** %851, i64 7
  %853 = load float** %852, align 8
  %854 = getelementptr inbounds float* %853, i64 %850
  %855 = load float* %854, align 4
  %856 = fmul float 0x3FE3E70640000000, %855
  %857 = fadd float %848, %856
  %858 = load i32* %i, align 4
  %859 = sext i32 %858 to i64
  %860 = load float*** %finavalu_temp, align 8
  %861 = getelementptr inbounds float** %860, i64 8
  %862 = load float** %861, align 8
  %863 = getelementptr inbounds float* %862, i64 %859
  %864 = load float* %863, align 4
  %865 = fmul float 0x3FC9C18FA0000000, %864
  %866 = fadd float %857, %865
  %867 = load i32* %i, align 4
  %868 = sext i32 %867 to i64
  %869 = load float*** %finavalu_temp, align 8
  %870 = getelementptr inbounds float** %869, i64 9
  %871 = load float** %870, align 8
  %872 = getelementptr inbounds float* %871, i64 %868
  %873 = load float* %872, align 4
  %874 = fmul float 0x3FD2BB5120000000, %873
  %875 = fadd float %866, %874
  %876 = load i32* %i, align 4
  %877 = sext i32 %876 to i64
  %878 = load float*** %finavalu_temp, align 8
  %879 = getelementptr inbounds float** %878, i64 11
  %880 = load float** %879, align 8
  %881 = getelementptr inbounds float* %880, i64 %877
  %882 = load float* %881, align 4
  %883 = fadd float %875, %882
  %884 = fmul float %804, %883
  %885 = fadd float %803, %884
  %886 = load i32* %i, align 4
  %887 = sext i32 %886 to i64
  %888 = load float** %initvalu_temp, align 8
  %889 = getelementptr inbounds float* %888, i64 %887
  store float %885, float* %889, align 4
  br label %890

; <label>:890                                     ; preds = %798
  %891 = load i32* %i, align 4
  %892 = add nsw i32 %891, 1
  store i32 %892, i32* %i, align 4
  br label %795

; <label>:893                                     ; preds = %795
  %894 = load float* %timeinst_temp, align 4
  %895 = load float** %initvalu_temp, align 8
  %896 = load float** %7, align 8
  %897 = load float*** %finavalu_temp, align 8
  %898 = getelementptr inbounds float** %897, i64 12
  %899 = load float** %898, align 8
  %900 = load i32* %8, align 4
  call void @master(float %894, float* %895, float* %896, float* %899, i32 %900)
  store i32 0, i32* %i, align 4
  br label %901

; <label>:901                                     ; preds = %976, %893
  %902 = load i32* %i, align 4
  %903 = icmp slt i32 %902, 91
  br i1 %903, label %904, label %979

; <label>:904                                     ; preds = %901
  %905 = load i32* %i, align 4
  %906 = sext i32 %905 to i64
  %907 = load float** %4, align 8
  %908 = getelementptr inbounds float* %907, i64 %906
  %909 = load float* %908, align 4
  %910 = load float* %3, align 4
  %911 = load i32* %i, align 4
  %912 = sext i32 %911 to i64
  %913 = load float*** %finavalu_temp, align 8
  %914 = getelementptr inbounds float** %913, i64 0
  %915 = load float** %914, align 8
  %916 = getelementptr inbounds float* %915, i64 %912
  %917 = load float* %916, align 4
  %918 = load i32* %i, align 4
  %919 = sext i32 %918 to i64
  %920 = load float*** %finavalu_temp, align 8
  %921 = getelementptr inbounds float** %920, i64 10
  %922 = load float** %921, align 8
  %923 = getelementptr inbounds float* %922, i64 %919
  %924 = load float* %923, align 4
  %925 = fadd float %917, %924
  %926 = fmul float 0x3FA8FD8FE0000000, %925
  %927 = load i32* %i, align 4
  %928 = sext i32 %927 to i64
  %929 = load float*** %finavalu_temp, align 8
  %930 = getelementptr inbounds float** %929, i64 5
  %931 = load float** %930, align 8
  %932 = getelementptr inbounds float* %931, i64 %928
  %933 = load float* %932, align 4
  %934 = fmul float 0x3FD4B94BA0000000, %933
  %935 = fadd float %926, %934
  %936 = load i32* %i, align 4
  %937 = sext i32 %936 to i64
  %938 = load float*** %finavalu_temp, align 8
  %939 = getelementptr inbounds float** %938, i64 6
  %940 = load float** %939, align 8
  %941 = getelementptr inbounds float* %940, i64 %937
  %942 = load float* %941, align 4
  %943 = load i32* %i, align 4
  %944 = sext i32 %943 to i64
  %945 = load float*** %finavalu_temp, align 8
  %946 = getelementptr inbounds float** %945, i64 7
  %947 = load float** %946, align 8
  %948 = getelementptr inbounds float* %947, i64 %944
  %949 = load float* %948, align 4
  %950 = fadd float %942, %949
  %951 = fmul float 0x3FD0750760000000, %950
  %952 = fadd float %935, %951
  %953 = load i32* %i, align 4
  %954 = sext i32 %953 to i64
  %955 = load float*** %finavalu_temp, align 8
  %956 = getelementptr inbounds float** %955, i64 8
  %957 = load float** %956, align 8
  %958 = getelementptr inbounds float* %957, i64 %954
  %959 = load float* %958, align 4
  %960 = load i32* %i, align 4
  %961 = sext i32 %960 to i64
  %962 = load float*** %finavalu_temp, align 8
  %963 = getelementptr inbounds float** %962, i64 9
  %964 = load float** %963, align 8
  %965 = getelementptr inbounds float* %964, i64 %961
  %966 = load float* %965, align 4
  %967 = fadd float %959, %966
  %968 = fmul float 0x3FA0750760000000, %967
  %969 = fadd float %952, %968
  %970 = fmul float %910, %969
  %971 = fadd float %909, %970
  %972 = load i32* %i, align 4
  %973 = sext i32 %972 to i64
  %974 = load float** %5, align 8
  %975 = getelementptr inbounds float* %974, i64 %973
  store float %971, float* %975, align 4
  br label %976

; <label>:976                                     ; preds = %904
  %977 = load i32* %i, align 4
  %978 = add nsw i32 %977, 1
  store i32 %978, i32* %i, align 4
  br label %901

; <label>:979                                     ; preds = %901
  store i32 0, i32* %i, align 4
  br label %980

; <label>:980                                     ; preds = %1023, %979
  %981 = load i32* %i, align 4
  %982 = icmp slt i32 %981, 91
  br i1 %982, label %983, label %1026

; <label>:983                                     ; preds = %980
  %984 = load i32* %i, align 4
  %985 = sext i32 %984 to i64
  %986 = load float*** %finavalu_temp, align 8
  %987 = getelementptr inbounds float** %986, i64 0
  %988 = load float** %987, align 8
  %989 = getelementptr inbounds float* %988, i64 %985
  %990 = load float* %989, align 4
  %991 = load i32* %i, align 4
  %992 = sext i32 %991 to i64
  %993 = load float*** %finavalu_temp, align 8
  %994 = getelementptr inbounds float** %993, i64 10
  %995 = load float** %994, align 8
  %996 = getelementptr inbounds float* %995, i64 %992
  %997 = load float* %996, align 4
  %998 = fadd float %990, %997
  %999 = load i32* %i, align 4
  %1000 = sext i32 %999 to i64
  %1001 = load float*** %finavalu_temp, align 8
  %1002 = getelementptr inbounds float** %1001, i64 11
  %1003 = load float** %1002, align 8
  %1004 = getelementptr inbounds float* %1003, i64 %1000
  %1005 = load float* %1004, align 4
  %1006 = fsub float %998, %1005
  %1007 = load i32* %i, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = load float*** %finavalu_temp, align 8
  %1010 = getelementptr inbounds float** %1009, i64 12
  %1011 = load float** %1010, align 8
  %1012 = getelementptr inbounds float* %1011, i64 %1008
  %1013 = load float* %1012, align 4
  %1014 = fsub float %1006, %1013
  %1015 = fmul float 0xBFA8FD8FE0000000, %1014
  %1016 = fpext float %1015 to double
  %1017 = call double @fabs(double %1016) #6
  %1018 = fptrunc double %1017 to float
  %1019 = load i32* %i, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = load float** %6, align 8
  %1022 = getelementptr inbounds float* %1021, i64 %1020
  store float %1018, float* %1022, align 4
  br label %1023

; <label>:1023                                    ; preds = %983
  %1024 = load i32* %i, align 4
  %1025 = add nsw i32 %1024, 1
  store i32 %1025, i32* %i, align 4
  br label %980

; <label>:1026                                    ; preds = %980
  %1027 = load float** %initvalu_temp, align 8
  %1028 = bitcast float* %1027 to i8*
  call void @free(i8* %1028) #5
  %1029 = load float*** %finavalu_temp, align 8
  %1030 = bitcast float** %1029 to i8*
  call void @free(i8* %1030) #5
  %1031 = load float* %1
  ret float %1031
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %time0 = alloca i64, align 8
  %time1 = alloca i64, align 8
  %time2 = alloca i64, align 8
  %time3 = alloca i64, align 8
  %time4 = alloca i64, align 8
  %time5 = alloca i64, align 8
  %memory = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %mode = alloca i32, align 4
  %workload = alloca i64, align 8
  %xmin = alloca i64, align 8
  %xmax = alloca i64, align 8
  %h = alloca float, align 4
  %tolerance = alloca float, align 4
  %y = alloca float***, align 8
  %x = alloca float**, align 8
  %params = alloca float**, align 8
  %threads = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = call i64 @get_time()
  store i64 %4, i64* %time0, align 8
  %5 = load i32* %2, align 4
  %6 = icmp ne i32 %5, 5
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([83 x i8]* @.str7, i32 0, i32 0), i32 %9)
  store i32 0, i32* %1
  br label %382

; <label>:11                                      ; preds = %0
  %12 = load i8*** %3, align 8
  %13 = getelementptr inbounds i8** %12, i64 1
  %14 = load i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #7
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %xmax, align 8
  %17 = load i64* %xmax, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %11
  %20 = load i64* %xmax, align 8
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([72 x i8]* @.str8, i32 0, i32 0), i64 %20)
  store i32 0, i32* %1
  br label %382

; <label>:22                                      ; preds = %11
  %23 = load i8*** %3, align 8
  %24 = getelementptr inbounds i8** %23, i64 2
  %25 = load i8** %24, align 8
  %26 = call i32 @atoi(i8* %25) #7
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %workload, align 8
  %28 = load i64* %workload, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

; <label>:30                                      ; preds = %22
  %31 = load i64* %workload, align 8
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([79 x i8]* @.str9, i32 0, i32 0), i64 %31)
  store i32 0, i32* %1
  br label %382

; <label>:33                                      ; preds = %22
  store i32 0, i32* %mode, align 4
  %34 = load i8*** %3, align 8
  %35 = getelementptr inbounds i8** %34, i64 3
  %36 = load i8** %35, align 8
  %37 = call i32 @atoi(i8* %36) #7
  store i32 %37, i32* %mode, align 4
  %38 = load i32* %mode, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %33
  %41 = load i32* %mode, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %40
  %44 = load i32* %mode, align 4
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([74 x i8]* @.str10, i32 0, i32 0), i32 %44)
  store i32 0, i32* %1
  br label %382

; <label>:46                                      ; preds = %40, %33
  %47 = load i8*** %3, align 8
  %48 = getelementptr inbounds i8** %47, i64 4
  %49 = load i8** %48, align 8
  %50 = call i32 @atoi(i8* %49) #7
  store i32 %50, i32* %threads, align 4
  %51 = load i32* %threads, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %46
  %54 = load i32* %threads, align 4
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([63 x i8]* @.str11, i32 0, i32 0), i32 %54)
  store i32 0, i32* %1
  br label %382

; <label>:56                                      ; preds = %46
  br label %57

; <label>:57                                      ; preds = %56
  %58 = call i64 @get_time()
  store i64 %58, i64* %time1, align 8
  %59 = load i64* %workload, align 8
  %60 = load i64* %xmax, align 8
  %61 = add nsw i64 %60, 1
  %62 = mul nsw i64 %59, %61
  %63 = mul nsw i64 %62, 91
  %64 = mul nsw i64 %63, 4
  store i64 %64, i64* %memory, align 8
  %65 = load i64* %memory, align 8
  %66 = icmp sgt i64 %65, 1000000000
  br i1 %66, label %67, label %69

; <label>:67                                      ; preds = %57
  %68 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([119 x i8]* @.str12, i32 0, i32 0))
  store i32 0, i32* %1
  br label %382

; <label>:69                                      ; preds = %57
  %70 = load i64* %workload, align 8
  %71 = mul i64 %70, 8
  %72 = call noalias i8* @malloc(i64 %71) #5
  %73 = bitcast i8* %72 to float***
  store float*** %73, float**** %y, align 8
  store i32 0, i32* %i, align 4
  br label %74

; <label>:74                                      ; preds = %110, %69
  %75 = load i32* %i, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64* %workload, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %113

; <label>:79                                      ; preds = %74
  %80 = load i64* %xmax, align 8
  %81 = add nsw i64 1, %80
  %82 = mul i64 %81, 8
  %83 = call noalias i8* @malloc(i64 %82) #5
  %84 = bitcast i8* %83 to float**
  %85 = load i32* %i, align 4
  %86 = sext i32 %85 to i64
  %87 = load float**** %y, align 8
  %88 = getelementptr inbounds float*** %87, i64 %86
  store float** %84, float*** %88, align 8
  store i32 0, i32* %j, align 4
  br label %89

; <label>:89                                      ; preds = %106, %79
  %90 = load i32* %j, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64* %xmax, align 8
  %93 = add nsw i64 1, %92
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %109

; <label>:95                                      ; preds = %89
  %96 = call noalias i8* @malloc(i64 364) #5
  %97 = bitcast i8* %96 to float*
  %98 = load i32* %j, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32* %i, align 4
  %101 = sext i32 %100 to i64
  %102 = load float**** %y, align 8
  %103 = getelementptr inbounds float*** %102, i64 %101
  %104 = load float*** %103, align 8
  %105 = getelementptr inbounds float** %104, i64 %99
  store float* %97, float** %105, align 8
  br label %106

; <label>:106                                     ; preds = %95
  %107 = load i32* %j, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %j, align 4
  br label %89

; <label>:109                                     ; preds = %89
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32* %i, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4
  br label %74

; <label>:113                                     ; preds = %74
  %114 = load i64* %workload, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #5
  %117 = bitcast i8* %116 to float**
  store float** %117, float*** %x, align 8
  store i32 0, i32* %i, align 4
  br label %118

; <label>:118                                     ; preds = %133, %113
  %119 = load i32* %i, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64* %workload, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %136

; <label>:123                                     ; preds = %118
  %124 = load i64* %xmax, align 8
  %125 = add nsw i64 1, %124
  %126 = mul i64 %125, 4
  %127 = call noalias i8* @malloc(i64 %126) #5
  %128 = bitcast i8* %127 to float*
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = load float*** %x, align 8
  %132 = getelementptr inbounds float** %131, i64 %130
  store float* %128, float** %132, align 8
  br label %133

; <label>:133                                     ; preds = %123
  %134 = load i32* %i, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i, align 4
  br label %118

; <label>:136                                     ; preds = %118
  %137 = load i64* %workload, align 8
  %138 = mul i64 %137, 8
  %139 = call noalias i8* @malloc(i64 %138) #5
  %140 = bitcast i8* %139 to float**
  store float** %140, float*** %params, align 8
  store i32 0, i32* %i, align 4
  br label %141

; <label>:141                                     ; preds = %153, %136
  %142 = load i32* %i, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64* %workload, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %156

; <label>:146                                     ; preds = %141
  %147 = call noalias i8* @malloc(i64 64) #5
  %148 = bitcast i8* %147 to float*
  %149 = load i32* %i, align 4
  %150 = sext i32 %149 to i64
  %151 = load float*** %params, align 8
  %152 = getelementptr inbounds float** %151, i64 %150
  store float* %148, float** %152, align 8
  br label %153

; <label>:153                                     ; preds = %146
  %154 = load i32* %i, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %i, align 4
  br label %141

; <label>:156                                     ; preds = %141
  %157 = call i64 @get_time()
  store i64 %157, i64* %time2, align 8
  store i32 0, i32* %i, align 4
  br label %158

; <label>:158                                     ; preds = %171, %156
  %159 = load i32* %i, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64* %workload, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %174

; <label>:163                                     ; preds = %158
  %164 = load i32* %i, align 4
  %165 = sext i32 %164 to i64
  %166 = load float**** %y, align 8
  %167 = getelementptr inbounds float*** %166, i64 %165
  %168 = load float*** %167, align 8
  %169 = getelementptr inbounds float** %168, i64 0
  %170 = load float** %169, align 8
  call void @read(i8* getelementptr inbounds ([19 x i8]* @.str13, i32 0, i32 0), float* %170, i32 91, i32 1, i32 0)
  br label %171

; <label>:171                                     ; preds = %163
  %172 = load i32* %i, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4
  br label %158

; <label>:174                                     ; preds = %158
  store i32 0, i32* %i, align 4
  br label %175

; <label>:175                                     ; preds = %186, %174
  %176 = load i32* %i, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64* %workload, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %180, label %189

; <label>:180                                     ; preds = %175
  %181 = load i32* %i, align 4
  %182 = sext i32 %181 to i64
  %183 = load float*** %params, align 8
  %184 = getelementptr inbounds float** %183, i64 %182
  %185 = load float** %184, align 8
  call void @read(i8* getelementptr inbounds ([24 x i8]* @.str14, i32 0, i32 0), float* %185, i32 16, i32 1, i32 0)
  br label %186

; <label>:186                                     ; preds = %180
  %187 = load i32* %i, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %i, align 4
  br label %175

; <label>:189                                     ; preds = %175
  %190 = call i64 @get_time()
  store i64 %190, i64* %time3, align 8
  %191 = load i32* %mode, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %223

; <label>:193                                     ; preds = %189
  store i32 0, i32* %i, align 4
  br label %194

; <label>:194                                     ; preds = %219, %193
  %195 = load i32* %i, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64* %workload, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %222

; <label>:199                                     ; preds = %194
  %200 = load i32* %i, align 4
  %201 = sext i32 %200 to i64
  %202 = load float**** %y, align 8
  %203 = getelementptr inbounds float*** %202, i64 %201
  %204 = load float*** %203, align 8
  %205 = load i32* %i, align 4
  %206 = sext i32 %205 to i64
  %207 = load float*** %x, align 8
  %208 = getelementptr inbounds float** %207, i64 %206
  %209 = load float** %208, align 8
  %210 = load i64* %xmax, align 8
  %211 = trunc i64 %210 to i32
  %212 = load i32* %i, align 4
  %213 = sext i32 %212 to i64
  %214 = load float*** %params, align 8
  %215 = getelementptr inbounds float** %214, i64 %213
  %216 = load float** %215, align 8
  %217 = load i32* %mode, align 4
  %218 = call i32 @solver(float** %204, float* %209, i32 %211, float* %216, i32 %217)
  store i32 %218, i32* %status, align 4
  br label %219

; <label>:219                                     ; preds = %199
  %220 = load i32* %i, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %i, align 4
  br label %194

; <label>:222                                     ; preds = %194
  br label %253

; <label>:223                                     ; preds = %189
  store i32 0, i32* %i, align 4
  br label %224

; <label>:224                                     ; preds = %249, %223
  %225 = load i32* %i, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64* %workload, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %252

; <label>:229                                     ; preds = %224
  %230 = load i32* %i, align 4
  %231 = sext i32 %230 to i64
  %232 = load float**** %y, align 8
  %233 = getelementptr inbounds float*** %232, i64 %231
  %234 = load float*** %233, align 8
  %235 = load i32* %i, align 4
  %236 = sext i32 %235 to i64
  %237 = load float*** %x, align 8
  %238 = getelementptr inbounds float** %237, i64 %236
  %239 = load float** %238, align 8
  %240 = load i64* %xmax, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i32* %i, align 4
  %243 = sext i32 %242 to i64
  %244 = load float*** %params, align 8
  %245 = getelementptr inbounds float** %244, i64 %243
  %246 = load float** %245, align 8
  %247 = load i32* %mode, align 4
  %248 = call i32 @solver(float** %234, float* %239, i32 %241, float* %246, i32 %247)
  store i32 %248, i32* %status, align 4
  br label %249

; <label>:249                                     ; preds = %229
  %250 = load i32* %i, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %i, align 4
  br label %224

; <label>:252                                     ; preds = %224
  br label %253

; <label>:253                                     ; preds = %252, %222
  store i32 0, i32* %i, align 4
  br label %254

; <label>:254                                     ; preds = %301, %253
  %255 = load i32* %i, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64* %workload, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %304

; <label>:259                                     ; preds = %254
  %260 = load i32* %i, align 4
  %261 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str15, i32 0, i32 0), i32 %260)
  store i32 0, i32* %j, align 4
  br label %262

; <label>:262                                     ; preds = %297, %259
  %263 = load i32* %j, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64* %xmax, align 8
  %266 = add nsw i64 %265, 1
  %267 = icmp slt i64 %264, %266
  br i1 %267, label %268, label %300

; <label>:268                                     ; preds = %262
  %269 = load i32* %j, align 4
  %270 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i32 %269)
  store i32 0, i32* %k, align 4
  br label %271

; <label>:271                                     ; preds = %293, %268
  %272 = load i32* %k, align 4
  %273 = icmp slt i32 %272, 91
  br i1 %273, label %274, label %296

; <label>:274                                     ; preds = %271
  %275 = load i32* %i, align 4
  %276 = load i32* %j, align 4
  %277 = load i32* %k, align 4
  %278 = load i32* %k, align 4
  %279 = sext i32 %278 to i64
  %280 = load i32* %j, align 4
  %281 = sext i32 %280 to i64
  %282 = load i32* %i, align 4
  %283 = sext i32 %282 to i64
  %284 = load float**** %y, align 8
  %285 = getelementptr inbounds float*** %284, i64 %283
  %286 = load float*** %285, align 8
  %287 = getelementptr inbounds float** %286, i64 %281
  %288 = load float** %287, align 8
  %289 = getelementptr inbounds float* %288, i64 %279
  %290 = load float* %289, align 4
  %291 = fpext float %290 to double
  %292 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i32 %275, i32 %276, i32 %277, double %291)
  br label %293

; <label>:293                                     ; preds = %274
  %294 = load i32* %k, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %k, align 4
  br label %271

; <label>:296                                     ; preds = %271
  br label %297

; <label>:297                                     ; preds = %296
  %298 = load i32* %j, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %j, align 4
  br label %262

; <label>:300                                     ; preds = %262
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load i32* %i, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %i, align 4
  br label %254

; <label>:304                                     ; preds = %254
  %305 = call i64 @get_time()
  store i64 %305, i64* %time4, align 8
  store i32 0, i32* %i, align 4
  br label %306

; <label>:306                                     ; preds = %339, %304
  %307 = load i32* %i, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64* %workload, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %342

; <label>:311                                     ; preds = %306
  store i32 0, i32* %j, align 4
  br label %312

; <label>:312                                     ; preds = %329, %311
  %313 = load i32* %j, align 4
  %314 = sext i32 %313 to i64
  %315 = load i64* %xmax, align 8
  %316 = add nsw i64 1, %315
  %317 = icmp slt i64 %314, %316
  br i1 %317, label %318, label %332

; <label>:318                                     ; preds = %312
  %319 = load i32* %j, align 4
  %320 = sext i32 %319 to i64
  %321 = load i32* %i, align 4
  %322 = sext i32 %321 to i64
  %323 = load float**** %y, align 8
  %324 = getelementptr inbounds float*** %323, i64 %322
  %325 = load float*** %324, align 8
  %326 = getelementptr inbounds float** %325, i64 %320
  %327 = load float** %326, align 8
  %328 = bitcast float* %327 to i8*
  call void @free(i8* %328) #5
  br label %329

; <label>:329                                     ; preds = %318
  %330 = load i32* %j, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %j, align 4
  br label %312

; <label>:332                                     ; preds = %312
  %333 = load i32* %i, align 4
  %334 = sext i32 %333 to i64
  %335 = load float**** %y, align 8
  %336 = getelementptr inbounds float*** %335, i64 %334
  %337 = load float*** %336, align 8
  %338 = bitcast float** %337 to i8*
  call void @free(i8* %338) #5
  br label %339

; <label>:339                                     ; preds = %332
  %340 = load i32* %i, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %i, align 4
  br label %306

; <label>:342                                     ; preds = %306
  %343 = load float**** %y, align 8
  %344 = bitcast float*** %343 to i8*
  call void @free(i8* %344) #5
  store i32 0, i32* %i, align 4
  br label %345

; <label>:345                                     ; preds = %357, %342
  %346 = load i32* %i, align 4
  %347 = sext i32 %346 to i64
  %348 = load i64* %workload, align 8
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %350, label %360

; <label>:350                                     ; preds = %345
  %351 = load i32* %i, align 4
  %352 = sext i32 %351 to i64
  %353 = load float*** %x, align 8
  %354 = getelementptr inbounds float** %353, i64 %352
  %355 = load float** %354, align 8
  %356 = bitcast float* %355 to i8*
  call void @free(i8* %356) #5
  br label %357

; <label>:357                                     ; preds = %350
  %358 = load i32* %i, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %i, align 4
  br label %345

; <label>:360                                     ; preds = %345
  %361 = load float*** %x, align 8
  %362 = bitcast float** %361 to i8*
  call void @free(i8* %362) #5
  store i32 0, i32* %i, align 4
  br label %363

; <label>:363                                     ; preds = %375, %360
  %364 = load i32* %i, align 4
  %365 = sext i32 %364 to i64
  %366 = load i64* %workload, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %378

; <label>:368                                     ; preds = %363
  %369 = load i32* %i, align 4
  %370 = sext i32 %369 to i64
  %371 = load float*** %params, align 8
  %372 = getelementptr inbounds float** %371, i64 %370
  %373 = load float** %372, align 8
  %374 = bitcast float* %373 to i8*
  call void @free(i8* %374) #5
  br label %375

; <label>:375                                     ; preds = %368
  %376 = load i32* %i, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %i, align 4
  br label %363

; <label>:378                                     ; preds = %363
  %379 = load float*** %params, align 8
  %380 = bitcast float** %379 to i8*
  call void @free(i8* %380) #5
  %381 = call i64 @get_time()
  store i64 %381, i64* %time5, align 8
  br label %382

; <label>:382                                     ; preds = %378, %67, %53, %43, %30, %19, %7
  %383 = load i32* %1
  ret i32 %383
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
