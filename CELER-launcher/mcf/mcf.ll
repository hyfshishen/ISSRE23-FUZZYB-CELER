; ModuleID = 'implicit.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.basket = type { %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"implicit.c\00", align 1
@__PRETTY_FUNCTION__.resize_prob = private unnamed_addr constant [30 x i8] c"long resize_prob(network_t *)\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@net = common global %struct.network zeroinitializer, align 8
@.str3 = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str14 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str25 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str36 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"not enough memory, exit(-1)\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str7 = private unnamed_addr constant [32 x i8] c"\0AMCF SPEC CPU2006 version 1.10\0A\00", align 1
@.str8 = private unnamed_addr constant [52 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\0A\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\0A\00", align 1
@.str10 = private unnamed_addr constant [40 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"read error, exit\0A\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str147 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str117 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str218 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str319 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str420 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str128 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str229 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str330 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@perm = internal global [351 x %struct.basket*] zeroinitializer, align 16
@initialize = internal global i64 1, align 8
@basket = internal global [351 x %struct.basket] zeroinitializer, align 16
@nr_group = internal global i64 0, align 8
@group_pos = internal global i64 0, align 8
@basket_size = internal global i64 0, align 8
@.str37 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str138 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str239 = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str340 = private unnamed_addr constant [10 x i8] c"readmin.c\00", align 1
@__PRETTY_FUNCTION__.read_min = private unnamed_addr constant [27 x i8] c"long read_min(network_t *)\00", align 1
@.str441 = private unnamed_addr constant [31 x i8] c"read_min(): not enough memory\0A\00", align 1
@.str542 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1

; Function Attrs: nounwind uwtable
define i64 @resize_prob(%struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %off = alloca i64, align 8
  store %struct.network* %net, %struct.network** %2, align 8
  %3 = load %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network* %3, i32 0, i32 9
  %5 = load i64* %4, align 8
  %6 = icmp sge i64 %5, 3
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i32 39, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.resize_prob, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = load %struct.network** %2, align 8
  %12 = getelementptr inbounds %struct.network* %11, i32 0, i32 9
  %13 = load i64* %12, align 8
  %14 = load %struct.network** %2, align 8
  %15 = getelementptr inbounds %struct.network* %14, i32 0, i32 4
  %16 = load i64* %15, align 8
  %17 = add nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.network** %2, align 8
  %19 = getelementptr inbounds %struct.network* %18, i32 0, i32 9
  %20 = load i64* %19, align 8
  %21 = load %struct.network** %2, align 8
  %22 = getelementptr inbounds %struct.network* %21, i32 0, i32 8
  %23 = load i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.network** %2, align 8
  %26 = getelementptr inbounds %struct.network* %25, i32 0, i32 23
  %27 = load %struct.arc** %26, align 8
  %28 = bitcast %struct.arc* %27 to i8*
  %29 = load %struct.network** %2, align 8
  %30 = getelementptr inbounds %struct.network* %29, i32 0, i32 4
  %31 = load i64* %30, align 8
  %32 = mul i64 %31, 64
  %33 = call i8* @realloc(i8* %28, i64 %32) #4
  %34 = bitcast i8* %33 to %struct.arc*
  store %struct.arc* %34, %struct.arc** %arc, align 8
  %35 = load %struct.arc** %arc, align 8
  %36 = icmp ne %struct.arc* %35, null
  br i1 %36, label %44, label %37

; <label>:37                                      ; preds = %10
  %38 = load %struct.network** %2, align 8
  %39 = getelementptr inbounds %struct.network* %38, i32 0, i32 0
  %40 = getelementptr inbounds [200 x i8]* %39, i32 0, i32 0
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0), i8* %40)
  %42 = load %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* %42)
  store i64 -1, i64* %1
  br label %97

; <label>:44                                      ; preds = %10
  %45 = load %struct.arc** %arc, align 8
  %46 = ptrtoint %struct.arc* %45 to i64
  %47 = load %struct.network** %2, align 8
  %48 = getelementptr inbounds %struct.network* %47, i32 0, i32 23
  %49 = load %struct.arc** %48, align 8
  %50 = ptrtoint %struct.arc* %49 to i64
  %51 = sub i64 %46, %50
  store i64 %51, i64* %off, align 8
  %52 = load %struct.arc** %arc, align 8
  %53 = load %struct.network** %2, align 8
  %54 = getelementptr inbounds %struct.network* %53, i32 0, i32 23
  store %struct.arc* %52, %struct.arc** %54, align 8
  %55 = load %struct.arc** %arc, align 8
  %56 = load %struct.network** %2, align 8
  %57 = getelementptr inbounds %struct.network* %56, i32 0, i32 5
  %58 = load i64* %57, align 8
  %59 = getelementptr inbounds %struct.arc* %55, i64 %58
  %60 = load %struct.network** %2, align 8
  %61 = getelementptr inbounds %struct.network* %60, i32 0, i32 24
  store %struct.arc* %59, %struct.arc** %61, align 8
  %62 = load %struct.network** %2, align 8
  %63 = getelementptr inbounds %struct.network* %62, i32 0, i32 21
  %64 = load %struct.node** %63, align 8
  store %struct.node* %64, %struct.node** %node, align 8
  store %struct.node* %64, %struct.node** %root, align 8
  %65 = load %struct.node** %node, align 8
  %66 = getelementptr inbounds %struct.node* %65, i32 1
  store %struct.node* %66, %struct.node** %node, align 8
  %67 = load %struct.network** %2, align 8
  %68 = getelementptr inbounds %struct.network* %67, i32 0, i32 22
  %69 = load %struct.node** %68, align 8
  %70 = bitcast %struct.node* %69 to i8*
  %71 = bitcast i8* %70 to %struct.node*
  store %struct.node* %71, %struct.node** %stop, align 8
  br label %72

; <label>:72                                      ; preds = %93, %44
  %73 = load %struct.node** %node, align 8
  %74 = load %struct.node** %stop, align 8
  %75 = icmp ult %struct.node* %73, %74
  br i1 %75, label %76, label %96

; <label>:76                                      ; preds = %72
  %77 = load %struct.node** %node, align 8
  %78 = getelementptr inbounds %struct.node* %77, i32 0, i32 3
  %79 = load %struct.node** %78, align 8
  %80 = load %struct.node** %root, align 8
  %81 = icmp ne %struct.node* %79, %80
  br i1 %81, label %82, label %92

; <label>:82                                      ; preds = %76
  %83 = load %struct.node** %node, align 8
  %84 = getelementptr inbounds %struct.node* %83, i32 0, i32 6
  %85 = load %struct.arc** %84, align 8
  %86 = ptrtoint %struct.arc* %85 to i64
  %87 = load i64* %off, align 8
  %88 = add i64 %86, %87
  %89 = inttoptr i64 %88 to %struct.arc*
  %90 = load %struct.node** %node, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 6
  store %struct.arc* %89, %struct.arc** %91, align 8
  br label %92

; <label>:92                                      ; preds = %82, %76
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load %struct.node** %node, align 8
  %95 = getelementptr inbounds %struct.node* %94, i32 1
  store %struct.node* %95, %struct.node** %node, align 8
  br label %72

; <label>:96                                      ; preds = %72
  store i64 0, i64* %1
  br label %97

; <label>:97                                      ; preds = %96, %37
  %98 = load i64* %1
  ret i64 %98
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @printf(i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @insert_new_arc(%struct.arc* %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
  %1 = alloca %struct.arc*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct.arc* %new, %struct.arc** %1, align 8
  store i64 %newpos, i64* %2, align 8
  store %struct.node* %tail, %struct.node** %3, align 8
  store %struct.node* %head, %struct.node** %4, align 8
  store i64 %cost, i64* %5, align 8
  store i64 %red_cost, i64* %6, align 8
  %7 = load %struct.node** %3, align 8
  %8 = load i64* %2, align 8
  %9 = load %struct.arc** %1, align 8
  %10 = getelementptr inbounds %struct.arc* %9, i64 %8
  %11 = getelementptr inbounds %struct.arc* %10, i32 0, i32 1
  store %struct.node* %7, %struct.node** %11, align 8
  %12 = load %struct.node** %4, align 8
  %13 = load i64* %2, align 8
  %14 = load %struct.arc** %1, align 8
  %15 = getelementptr inbounds %struct.arc* %14, i64 %13
  %16 = getelementptr inbounds %struct.arc* %15, i32 0, i32 2
  store %struct.node* %12, %struct.node** %16, align 8
  %17 = load i64* %5, align 8
  %18 = load i64* %2, align 8
  %19 = load %struct.arc** %1, align 8
  %20 = getelementptr inbounds %struct.arc* %19, i64 %18
  %21 = getelementptr inbounds %struct.arc* %20, i32 0, i32 7
  store i64 %17, i64* %21, align 8
  %22 = load i64* %5, align 8
  %23 = load i64* %2, align 8
  %24 = load %struct.arc** %1, align 8
  %25 = getelementptr inbounds %struct.arc* %24, i64 %23
  %26 = getelementptr inbounds %struct.arc* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load i64* %6, align 8
  %28 = load i64* %2, align 8
  %29 = load %struct.arc** %1, align 8
  %30 = getelementptr inbounds %struct.arc* %29, i64 %28
  %31 = getelementptr inbounds %struct.arc* %30, i32 0, i32 6
  store i64 %27, i64* %31, align 8
  %32 = load i64* %2, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %pos, align 8
  br label %34

; <label>:34                                      ; preds = %50, %0
  %35 = load i64* %pos, align 8
  %36 = sub nsw i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

; <label>:38                                      ; preds = %34
  %39 = load i64* %6, align 8
  %40 = load i64* %pos, align 8
  %41 = sdiv i64 %40, 2
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.arc** %1, align 8
  %44 = getelementptr inbounds %struct.arc* %43, i64 %42
  %45 = getelementptr inbounds %struct.arc* %44, i32 0, i32 6
  %46 = load i64* %45, align 8
  %47 = icmp sgt i64 %39, %46
  br label %48

; <label>:48                                      ; preds = %38, %34
  %49 = phi i1 [ false, %34 ], [ %47, %38 ]
  br i1 %49, label %50, label %143

; <label>:50                                      ; preds = %48
  %51 = load i64* %pos, align 8
  %52 = sdiv i64 %51, 2
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.arc** %1, align 8
  %55 = getelementptr inbounds %struct.arc* %54, i64 %53
  %56 = getelementptr inbounds %struct.arc* %55, i32 0, i32 1
  %57 = load %struct.node** %56, align 8
  %58 = load i64* %pos, align 8
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.arc** %1, align 8
  %61 = getelementptr inbounds %struct.arc* %60, i64 %59
  %62 = getelementptr inbounds %struct.arc* %61, i32 0, i32 1
  store %struct.node* %57, %struct.node** %62, align 8
  %63 = load i64* %pos, align 8
  %64 = sdiv i64 %63, 2
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.arc** %1, align 8
  %67 = getelementptr inbounds %struct.arc* %66, i64 %65
  %68 = getelementptr inbounds %struct.arc* %67, i32 0, i32 2
  %69 = load %struct.node** %68, align 8
  %70 = load i64* %pos, align 8
  %71 = sub nsw i64 %70, 1
  %72 = load %struct.arc** %1, align 8
  %73 = getelementptr inbounds %struct.arc* %72, i64 %71
  %74 = getelementptr inbounds %struct.arc* %73, i32 0, i32 2
  store %struct.node* %69, %struct.node** %74, align 8
  %75 = load i64* %pos, align 8
  %76 = sdiv i64 %75, 2
  %77 = sub nsw i64 %76, 1
  %78 = load %struct.arc** %1, align 8
  %79 = getelementptr inbounds %struct.arc* %78, i64 %77
  %80 = getelementptr inbounds %struct.arc* %79, i32 0, i32 0
  %81 = load i64* %80, align 8
  %82 = load i64* %pos, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.arc** %1, align 8
  %85 = getelementptr inbounds %struct.arc* %84, i64 %83
  %86 = getelementptr inbounds %struct.arc* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  %87 = load i64* %pos, align 8
  %88 = sdiv i64 %87, 2
  %89 = sub nsw i64 %88, 1
  %90 = load %struct.arc** %1, align 8
  %91 = getelementptr inbounds %struct.arc* %90, i64 %89
  %92 = getelementptr inbounds %struct.arc* %91, i32 0, i32 0
  %93 = load i64* %92, align 8
  %94 = load i64* %pos, align 8
  %95 = sub nsw i64 %94, 1
  %96 = load %struct.arc** %1, align 8
  %97 = getelementptr inbounds %struct.arc* %96, i64 %95
  %98 = getelementptr inbounds %struct.arc* %97, i32 0, i32 7
  store i64 %93, i64* %98, align 8
  %99 = load i64* %pos, align 8
  %100 = sdiv i64 %99, 2
  %101 = sub nsw i64 %100, 1
  %102 = load %struct.arc** %1, align 8
  %103 = getelementptr inbounds %struct.arc* %102, i64 %101
  %104 = getelementptr inbounds %struct.arc* %103, i32 0, i32 6
  %105 = load i64* %104, align 8
  %106 = load i64* %pos, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.arc** %1, align 8
  %109 = getelementptr inbounds %struct.arc* %108, i64 %107
  %110 = getelementptr inbounds %struct.arc* %109, i32 0, i32 6
  store i64 %105, i64* %110, align 8
  %111 = load i64* %pos, align 8
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %pos, align 8
  %113 = load %struct.node** %3, align 8
  %114 = load i64* %pos, align 8
  %115 = sub nsw i64 %114, 1
  %116 = load %struct.arc** %1, align 8
  %117 = getelementptr inbounds %struct.arc* %116, i64 %115
  %118 = getelementptr inbounds %struct.arc* %117, i32 0, i32 1
  store %struct.node* %113, %struct.node** %118, align 8
  %119 = load %struct.node** %4, align 8
  %120 = load i64* %pos, align 8
  %121 = sub nsw i64 %120, 1
  %122 = load %struct.arc** %1, align 8
  %123 = getelementptr inbounds %struct.arc* %122, i64 %121
  %124 = getelementptr inbounds %struct.arc* %123, i32 0, i32 2
  store %struct.node* %119, %struct.node** %124, align 8
  %125 = load i64* %5, align 8
  %126 = load i64* %pos, align 8
  %127 = sub nsw i64 %126, 1
  %128 = load %struct.arc** %1, align 8
  %129 = getelementptr inbounds %struct.arc* %128, i64 %127
  %130 = getelementptr inbounds %struct.arc* %129, i32 0, i32 0
  store i64 %125, i64* %130, align 8
  %131 = load i64* %5, align 8
  %132 = load i64* %pos, align 8
  %133 = sub nsw i64 %132, 1
  %134 = load %struct.arc** %1, align 8
  %135 = getelementptr inbounds %struct.arc* %134, i64 %133
  %136 = getelementptr inbounds %struct.arc* %135, i32 0, i32 7
  store i64 %131, i64* %136, align 8
  %137 = load i64* %6, align 8
  %138 = load i64* %pos, align 8
  %139 = sub nsw i64 %138, 1
  %140 = load %struct.arc** %1, align 8
  %141 = getelementptr inbounds %struct.arc* %140, i64 %139
  %142 = getelementptr inbounds %struct.arc* %141, i32 0, i32 6
  store i64 %137, i64* %142, align 8
  br label %34

; <label>:143                                     ; preds = %48
  ret void
}

; Function Attrs: nounwind uwtable
define void @replace_weaker_arc(%struct.network* %net, %struct.arc* %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
  %1 = alloca %struct.network*, align 8
  %2 = alloca %struct.arc*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %pos = alloca i64, align 8
  %cmp = alloca i64, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  store %struct.arc* %new, %struct.arc** %2, align 8
  store %struct.node* %tail, %struct.node** %3, align 8
  store %struct.node* %head, %struct.node** %4, align 8
  store i64 %cost, i64* %5, align 8
  store i64 %red_cost, i64* %6, align 8
  %7 = load %struct.node** %3, align 8
  %8 = load %struct.arc** %2, align 8
  %9 = getelementptr inbounds %struct.arc* %8, i64 0
  %10 = getelementptr inbounds %struct.arc* %9, i32 0, i32 1
  store %struct.node* %7, %struct.node** %10, align 8
  %11 = load %struct.node** %4, align 8
  %12 = load %struct.arc** %2, align 8
  %13 = getelementptr inbounds %struct.arc* %12, i64 0
  %14 = getelementptr inbounds %struct.arc* %13, i32 0, i32 2
  store %struct.node* %11, %struct.node** %14, align 8
  %15 = load i64* %5, align 8
  %16 = load %struct.arc** %2, align 8
  %17 = getelementptr inbounds %struct.arc* %16, i64 0
  %18 = getelementptr inbounds %struct.arc* %17, i32 0, i32 7
  store i64 %15, i64* %18, align 8
  %19 = load i64* %5, align 8
  %20 = load %struct.arc** %2, align 8
  %21 = getelementptr inbounds %struct.arc* %20, i64 0
  %22 = getelementptr inbounds %struct.arc* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i64* %6, align 8
  %24 = load %struct.arc** %2, align 8
  %25 = getelementptr inbounds %struct.arc* %24, i64 0
  %26 = getelementptr inbounds %struct.arc* %25, i32 0, i32 6
  store i64 %23, i64* %26, align 8
  store i64 1, i64* %pos, align 8
  %27 = load %struct.arc** %2, align 8
  %28 = getelementptr inbounds %struct.arc* %27, i64 1
  %29 = getelementptr inbounds %struct.arc* %28, i32 0, i32 6
  %30 = load i64* %29, align 8
  %31 = load %struct.arc** %2, align 8
  %32 = getelementptr inbounds %struct.arc* %31, i64 2
  %33 = getelementptr inbounds %struct.arc* %32, i32 0, i32 6
  %34 = load i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  %36 = select i1 %35, i32 2, i32 3
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %cmp, align 8
  br label %38

; <label>:38                                      ; preds = %167, %0
  %39 = load i64* %cmp, align 8
  %40 = load %struct.network** %1, align 8
  %41 = getelementptr inbounds %struct.network* %40, i32 0, i32 8
  %42 = load i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %53

; <label>:44                                      ; preds = %38
  %45 = load i64* %6, align 8
  %46 = load i64* %cmp, align 8
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.arc** %2, align 8
  %49 = getelementptr inbounds %struct.arc* %48, i64 %47
  %50 = getelementptr inbounds %struct.arc* %49, i32 0, i32 6
  %51 = load i64* %50, align 8
  %52 = icmp slt i64 %45, %51
  br label %53

; <label>:53                                      ; preds = %44, %38
  %54 = phi i1 [ false, %38 ], [ %52, %44 ]
  br i1 %54, label %55, label %168

; <label>:55                                      ; preds = %53
  %56 = load i64* %cmp, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.arc** %2, align 8
  %59 = getelementptr inbounds %struct.arc* %58, i64 %57
  %60 = getelementptr inbounds %struct.arc* %59, i32 0, i32 1
  %61 = load %struct.node** %60, align 8
  %62 = load i64* %pos, align 8
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.arc** %2, align 8
  %65 = getelementptr inbounds %struct.arc* %64, i64 %63
  %66 = getelementptr inbounds %struct.arc* %65, i32 0, i32 1
  store %struct.node* %61, %struct.node** %66, align 8
  %67 = load i64* %cmp, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.arc** %2, align 8
  %70 = getelementptr inbounds %struct.arc* %69, i64 %68
  %71 = getelementptr inbounds %struct.arc* %70, i32 0, i32 2
  %72 = load %struct.node** %71, align 8
  %73 = load i64* %pos, align 8
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.arc** %2, align 8
  %76 = getelementptr inbounds %struct.arc* %75, i64 %74
  %77 = getelementptr inbounds %struct.arc* %76, i32 0, i32 2
  store %struct.node* %72, %struct.node** %77, align 8
  %78 = load i64* %cmp, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.arc** %2, align 8
  %81 = getelementptr inbounds %struct.arc* %80, i64 %79
  %82 = getelementptr inbounds %struct.arc* %81, i32 0, i32 0
  %83 = load i64* %82, align 8
  %84 = load i64* %pos, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.arc** %2, align 8
  %87 = getelementptr inbounds %struct.arc* %86, i64 %85
  %88 = getelementptr inbounds %struct.arc* %87, i32 0, i32 0
  store i64 %83, i64* %88, align 8
  %89 = load i64* %cmp, align 8
  %90 = sub nsw i64 %89, 1
  %91 = load %struct.arc** %2, align 8
  %92 = getelementptr inbounds %struct.arc* %91, i64 %90
  %93 = getelementptr inbounds %struct.arc* %92, i32 0, i32 0
  %94 = load i64* %93, align 8
  %95 = load i64* %pos, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.arc** %2, align 8
  %98 = getelementptr inbounds %struct.arc* %97, i64 %96
  %99 = getelementptr inbounds %struct.arc* %98, i32 0, i32 7
  store i64 %94, i64* %99, align 8
  %100 = load i64* %cmp, align 8
  %101 = sub nsw i64 %100, 1
  %102 = load %struct.arc** %2, align 8
  %103 = getelementptr inbounds %struct.arc* %102, i64 %101
  %104 = getelementptr inbounds %struct.arc* %103, i32 0, i32 6
  %105 = load i64* %104, align 8
  %106 = load i64* %pos, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.arc** %2, align 8
  %109 = getelementptr inbounds %struct.arc* %108, i64 %107
  %110 = getelementptr inbounds %struct.arc* %109, i32 0, i32 6
  store i64 %105, i64* %110, align 8
  %111 = load %struct.node** %3, align 8
  %112 = load i64* %cmp, align 8
  %113 = sub nsw i64 %112, 1
  %114 = load %struct.arc** %2, align 8
  %115 = getelementptr inbounds %struct.arc* %114, i64 %113
  %116 = getelementptr inbounds %struct.arc* %115, i32 0, i32 1
  store %struct.node* %111, %struct.node** %116, align 8
  %117 = load %struct.node** %4, align 8
  %118 = load i64* %cmp, align 8
  %119 = sub nsw i64 %118, 1
  %120 = load %struct.arc** %2, align 8
  %121 = getelementptr inbounds %struct.arc* %120, i64 %119
  %122 = getelementptr inbounds %struct.arc* %121, i32 0, i32 2
  store %struct.node* %117, %struct.node** %122, align 8
  %123 = load i64* %5, align 8
  %124 = load i64* %cmp, align 8
  %125 = sub nsw i64 %124, 1
  %126 = load %struct.arc** %2, align 8
  %127 = getelementptr inbounds %struct.arc* %126, i64 %125
  %128 = getelementptr inbounds %struct.arc* %127, i32 0, i32 0
  store i64 %123, i64* %128, align 8
  %129 = load i64* %5, align 8
  %130 = load i64* %cmp, align 8
  %131 = sub nsw i64 %130, 1
  %132 = load %struct.arc** %2, align 8
  %133 = getelementptr inbounds %struct.arc* %132, i64 %131
  %134 = getelementptr inbounds %struct.arc* %133, i32 0, i32 7
  store i64 %129, i64* %134, align 8
  %135 = load i64* %6, align 8
  %136 = load i64* %cmp, align 8
  %137 = sub nsw i64 %136, 1
  %138 = load %struct.arc** %2, align 8
  %139 = getelementptr inbounds %struct.arc* %138, i64 %137
  %140 = getelementptr inbounds %struct.arc* %139, i32 0, i32 6
  store i64 %135, i64* %140, align 8
  %141 = load i64* %cmp, align 8
  store i64 %141, i64* %pos, align 8
  %142 = load i64* %cmp, align 8
  %143 = mul nsw i64 %142, 2
  store i64 %143, i64* %cmp, align 8
  %144 = load i64* %cmp, align 8
  %145 = add nsw i64 %144, 1
  %146 = load %struct.network** %1, align 8
  %147 = getelementptr inbounds %struct.network* %146, i32 0, i32 8
  %148 = load i64* %147, align 8
  %149 = icmp sle i64 %145, %148
  br i1 %149, label %150, label %167

; <label>:150                                     ; preds = %55
  %151 = load i64* %cmp, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load %struct.arc** %2, align 8
  %154 = getelementptr inbounds %struct.arc* %153, i64 %152
  %155 = getelementptr inbounds %struct.arc* %154, i32 0, i32 6
  %156 = load i64* %155, align 8
  %157 = load i64* %cmp, align 8
  %158 = load %struct.arc** %2, align 8
  %159 = getelementptr inbounds %struct.arc* %158, i64 %157
  %160 = getelementptr inbounds %struct.arc* %159, i32 0, i32 6
  %161 = load i64* %160, align 8
  %162 = icmp slt i64 %156, %161
  br i1 %162, label %163, label %166

; <label>:163                                     ; preds = %150
  %164 = load i64* %cmp, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %cmp, align 8
  br label %166

; <label>:166                                     ; preds = %163, %150
  br label %167

; <label>:167                                     ; preds = %166, %55
  br label %38

; <label>:168                                     ; preds = %53
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @price_out_impl(%struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.network*, align 8
  %i = alloca i64, align 8
  %trips = alloca i64, align 8
  %new_arcs = alloca i64, align 8
  %resized = alloca i64, align 8
  %latest = alloca i64, align 8
  %min_impl_duration = alloca i64, align 8
  %bigM = alloca i64, align 8
  %head_potential = alloca i64, align 8
  %arc_cost = alloca i64, align 8
  %red_cost = alloca i64, align 8
  %bigM_minus_min_impl_duration = alloca i64, align 8
  %arcout = alloca %struct.arc*, align 8
  %arcin = alloca %struct.arc*, align 8
  %arcnew = alloca %struct.arc*, align 8
  %stop = alloca %struct.arc*, align 8
  %first_of_sparse_list = alloca %struct.arc*, align 8
  %tail = alloca %struct.node*, align 8
  %head = alloca %struct.node*, align 8
  store %struct.network* %net, %struct.network** %2, align 8
  store i64 0, i64* %new_arcs, align 8
  store i64 0, i64* %resized, align 8
  store i64 15, i64* %min_impl_duration, align 8
  %3 = load %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network* %3, i32 0, i32 18
  %5 = load i64* %4, align 8
  store i64 %5, i64* %bigM, align 8
  store i64 30, i64* %arc_cost, align 8
  %6 = load i64* %bigM, align 8
  %7 = load i64* %min_impl_duration, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %bigM_minus_min_impl_duration, align 8
  %9 = load %struct.network** %2, align 8
  %10 = getelementptr inbounds %struct.network* %9, i32 0, i32 3
  %11 = load i64* %10, align 8
  %12 = icmp sle i64 %11, 15000
  br i1 %12, label %13, label %50

; <label>:13                                      ; preds = %0
  %14 = load %struct.network** %2, align 8
  %15 = getelementptr inbounds %struct.network* %14, i32 0, i32 5
  %16 = load i64* %15, align 8
  %17 = load %struct.network** %2, align 8
  %18 = getelementptr inbounds %struct.network* %17, i32 0, i32 9
  %19 = load i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.network** %2, align 8
  %22 = getelementptr inbounds %struct.network* %21, i32 0, i32 4
  %23 = load i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %49

; <label>:25                                      ; preds = %13
  %26 = load %struct.network** %2, align 8
  %27 = getelementptr inbounds %struct.network* %26, i32 0, i32 3
  %28 = load i64* %27, align 8
  %29 = load %struct.network** %2, align 8
  %30 = getelementptr inbounds %struct.network* %29, i32 0, i32 3
  %31 = load i64* %30, align 8
  %32 = mul nsw i64 %28, %31
  %33 = sdiv i64 %32, 2
  %34 = load %struct.network** %2, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 5
  %36 = load i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.network** %2, align 8
  %39 = getelementptr inbounds %struct.network* %38, i32 0, i32 4
  %40 = load i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %25
  store i64 1, i64* %resized, align 8
  %43 = load %struct.network** %2, align 8
  %44 = call i64 @resize_prob(%struct.network* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %42
  store i64 -1, i64* %1
  br label %290

; <label>:47                                      ; preds = %42
  %48 = load %struct.network** %2, align 8
  call void @refresh_neighbour_lists(%struct.network* %48)
  br label %49

; <label>:49                                      ; preds = %47, %25, %13
  br label %50

; <label>:50                                      ; preds = %49, %0
  %51 = load %struct.network** %2, align 8
  %52 = getelementptr inbounds %struct.network* %51, i32 0, i32 24
  %53 = load %struct.arc** %52, align 8
  store %struct.arc* %53, %struct.arc** %arcnew, align 8
  %54 = load %struct.network** %2, align 8
  %55 = getelementptr inbounds %struct.network* %54, i32 0, i32 3
  %56 = load i64* %55, align 8
  store i64 %56, i64* %trips, align 8
  %57 = load %struct.network** %2, align 8
  %58 = getelementptr inbounds %struct.network* %57, i32 0, i32 23
  %59 = load %struct.arc** %58, align 8
  store %struct.arc* %59, %struct.arc** %arcout, align 8
  store i64 0, i64* %i, align 8
  br label %60

; <label>:60                                      ; preds = %71, %50
  %61 = load i64* %i, align 8
  %62 = load i64* %trips, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %76

; <label>:64                                      ; preds = %60
  %65 = load %struct.arc** %arcout, align 8
  %66 = getelementptr inbounds %struct.arc* %65, i64 1
  %67 = getelementptr inbounds %struct.arc* %66, i32 0, i32 3
  %68 = load i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %76

; <label>:70                                      ; preds = %64
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i64* %i, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %i, align 8
  %74 = load %struct.arc** %arcout, align 8
  %75 = getelementptr inbounds %struct.arc* %74, i64 3
  store %struct.arc* %75, %struct.arc** %arcout, align 8
  br label %60

; <label>:76                                      ; preds = %64, %60
  store %struct.arc* null, %struct.arc** %first_of_sparse_list, align 8
  br label %77

; <label>:77                                      ; preds = %196, %76
  %78 = load i64* %i, align 8
  %79 = load i64* %trips, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %201

; <label>:81                                      ; preds = %77
  %82 = load %struct.arc** %arcout, align 8
  %83 = getelementptr inbounds %struct.arc* %82, i64 1
  %84 = getelementptr inbounds %struct.arc* %83, i32 0, i32 3
  %85 = load i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %99

; <label>:87                                      ; preds = %81
  %88 = load %struct.arc** %first_of_sparse_list, align 8
  %89 = load %struct.arc** %arcout, align 8
  %90 = getelementptr inbounds %struct.arc* %89, i32 0, i32 2
  %91 = load %struct.node** %90, align 8
  %92 = getelementptr inbounds %struct.node* %91, i32 0, i32 7
  %93 = load %struct.arc** %92, align 8
  %94 = getelementptr inbounds %struct.arc* %93, i32 0, i32 2
  %95 = load %struct.node** %94, align 8
  %96 = getelementptr inbounds %struct.node* %95, i32 0, i32 9
  store %struct.arc* %88, %struct.arc** %96, align 8
  %97 = load %struct.arc** %arcout, align 8
  %98 = getelementptr inbounds %struct.arc* %97, i64 1
  store %struct.arc* %98, %struct.arc** %first_of_sparse_list, align 8
  br label %99

; <label>:99                                      ; preds = %87, %81
  %100 = load %struct.arc** %arcout, align 8
  %101 = getelementptr inbounds %struct.arc* %100, i32 0, i32 3
  %102 = load i32* %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %99
  br label %196

; <label>:105                                     ; preds = %99
  %106 = load %struct.arc** %arcout, align 8
  %107 = getelementptr inbounds %struct.arc* %106, i32 0, i32 2
  %108 = load %struct.node** %107, align 8
  store %struct.node* %108, %struct.node** %head, align 8
  %109 = load %struct.node** %head, align 8
  %110 = getelementptr inbounds %struct.node* %109, i32 0, i32 13
  %111 = load i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.arc** %arcout, align 8
  %114 = getelementptr inbounds %struct.arc* %113, i32 0, i32 7
  %115 = load i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load i64* %bigM_minus_min_impl_duration, align 8
  %118 = add nsw i64 %116, %117
  store i64 %118, i64* %latest, align 8
  %119 = load %struct.node** %head, align 8
  %120 = getelementptr inbounds %struct.node* %119, i32 0, i32 0
  %121 = load i64* %120, align 8
  store i64 %121, i64* %head_potential, align 8
  %122 = load %struct.arc** %first_of_sparse_list, align 8
  %123 = getelementptr inbounds %struct.arc* %122, i32 0, i32 1
  %124 = load %struct.node** %123, align 8
  %125 = getelementptr inbounds %struct.node* %124, i32 0, i32 9
  %126 = load %struct.arc** %125, align 8
  store %struct.arc* %126, %struct.arc** %arcin, align 8
  br label %127

; <label>:127                                     ; preds = %191, %144, %105
  %128 = load %struct.arc** %arcin, align 8
  %129 = icmp ne %struct.arc* %128, null
  br i1 %129, label %130, label %195

; <label>:130                                     ; preds = %127
  %131 = load %struct.arc** %arcin, align 8
  %132 = getelementptr inbounds %struct.arc* %131, i32 0, i32 1
  %133 = load %struct.node** %132, align 8
  store %struct.node* %133, %struct.node** %tail, align 8
  %134 = load %struct.node** %tail, align 8
  %135 = getelementptr inbounds %struct.node* %134, i32 0, i32 13
  %136 = load i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.arc** %arcin, align 8
  %139 = getelementptr inbounds %struct.arc* %138, i32 0, i32 7
  %140 = load i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load i64* %latest, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %148

; <label>:144                                     ; preds = %130
  %145 = load %struct.node** %tail, align 8
  %146 = getelementptr inbounds %struct.node* %145, i32 0, i32 9
  %147 = load %struct.arc** %146, align 8
  store %struct.arc* %147, %struct.arc** %arcin, align 8
  br label %127

; <label>:148                                     ; preds = %130
  %149 = load i64* %arc_cost, align 8
  %150 = load %struct.node** %tail, align 8
  %151 = getelementptr inbounds %struct.node* %150, i32 0, i32 0
  %152 = load i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = load %struct.node** %head, align 8
  %155 = getelementptr inbounds %struct.node* %154, i32 0, i32 0
  %156 = load i64* %155, align 8
  %157 = add nsw i64 %153, %156
  store i64 %157, i64* %red_cost, align 8
  %158 = load i64* %red_cost, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %191

; <label>:160                                     ; preds = %148
  %161 = load i64* %new_arcs, align 8
  %162 = load %struct.network** %2, align 8
  %163 = getelementptr inbounds %struct.network* %162, i32 0, i32 8
  %164 = load i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %175

; <label>:166                                     ; preds = %160
  %167 = load %struct.arc** %arcnew, align 8
  %168 = load i64* %new_arcs, align 8
  %169 = load %struct.node** %tail, align 8
  %170 = load %struct.node** %head, align 8
  %171 = load i64* %arc_cost, align 8
  %172 = load i64* %red_cost, align 8
  call void @insert_new_arc(%struct.arc* %167, i64 %168, %struct.node* %169, %struct.node* %170, i64 %171, i64 %172)
  %173 = load i64* %new_arcs, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %new_arcs, align 8
  br label %190

; <label>:175                                     ; preds = %160
  %176 = load %struct.arc** %arcnew, align 8
  %177 = getelementptr inbounds %struct.arc* %176, i64 0
  %178 = getelementptr inbounds %struct.arc* %177, i32 0, i32 6
  %179 = load i64* %178, align 8
  %180 = load i64* %red_cost, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %189

; <label>:182                                     ; preds = %175
  %183 = load %struct.network** %2, align 8
  %184 = load %struct.arc** %arcnew, align 8
  %185 = load %struct.node** %tail, align 8
  %186 = load %struct.node** %head, align 8
  %187 = load i64* %arc_cost, align 8
  %188 = load i64* %red_cost, align 8
  call void @replace_weaker_arc(%struct.network* %183, %struct.arc* %184, %struct.node* %185, %struct.node* %186, i64 %187, i64 %188)
  br label %189

; <label>:189                                     ; preds = %182, %175
  br label %190

; <label>:190                                     ; preds = %189, %166
  br label %191

; <label>:191                                     ; preds = %190, %148
  %192 = load %struct.node** %tail, align 8
  %193 = getelementptr inbounds %struct.node* %192, i32 0, i32 9
  %194 = load %struct.arc** %193, align 8
  store %struct.arc* %194, %struct.arc** %arcin, align 8
  br label %127

; <label>:195                                     ; preds = %127
  br label %196

; <label>:196                                     ; preds = %195, %104
  %197 = load i64* %i, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %i, align 8
  %199 = load %struct.arc** %arcout, align 8
  %200 = getelementptr inbounds %struct.arc* %199, i64 3
  store %struct.arc* %200, %struct.arc** %arcout, align 8
  br label %77

; <label>:201                                     ; preds = %77
  %202 = load i64* %new_arcs, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %288

; <label>:204                                     ; preds = %201
  %205 = load %struct.network** %2, align 8
  %206 = getelementptr inbounds %struct.network* %205, i32 0, i32 24
  %207 = load %struct.arc** %206, align 8
  store %struct.arc* %207, %struct.arc** %arcnew, align 8
  %208 = load i64* %new_arcs, align 8
  %209 = load %struct.network** %2, align 8
  %210 = getelementptr inbounds %struct.network* %209, i32 0, i32 24
  %211 = load %struct.arc** %210, align 8
  %212 = getelementptr inbounds %struct.arc* %211, i64 %208
  store %struct.arc* %212, %struct.arc** %210, align 8
  %213 = load %struct.network** %2, align 8
  %214 = getelementptr inbounds %struct.network* %213, i32 0, i32 24
  %215 = load %struct.arc** %214, align 8
  %216 = bitcast %struct.arc* %215 to i8*
  %217 = bitcast i8* %216 to %struct.arc*
  store %struct.arc* %217, %struct.arc** %stop, align 8
  %218 = load i64* %resized, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %234

; <label>:220                                     ; preds = %204
  br label %221

; <label>:221                                     ; preds = %230, %220
  %222 = load %struct.arc** %arcnew, align 8
  %223 = load %struct.arc** %stop, align 8
  %224 = icmp ne %struct.arc* %222, %223
  br i1 %224, label %225, label %233

; <label>:225                                     ; preds = %221
  %226 = load %struct.arc** %arcnew, align 8
  %227 = getelementptr inbounds %struct.arc* %226, i32 0, i32 6
  store i64 0, i64* %227, align 8
  %228 = load %struct.arc** %arcnew, align 8
  %229 = getelementptr inbounds %struct.arc* %228, i32 0, i32 3
  store i32 1, i32* %229, align 4
  br label %230

; <label>:230                                     ; preds = %225
  %231 = load %struct.arc** %arcnew, align 8
  %232 = getelementptr inbounds %struct.arc* %231, i32 1
  store %struct.arc* %232, %struct.arc** %arcnew, align 8
  br label %221

; <label>:233                                     ; preds = %221
  br label %272

; <label>:234                                     ; preds = %204
  br label %235

; <label>:235                                     ; preds = %268, %234
  %236 = load %struct.arc** %arcnew, align 8
  %237 = load %struct.arc** %stop, align 8
  %238 = icmp ne %struct.arc* %236, %237
  br i1 %238, label %239, label %271

; <label>:239                                     ; preds = %235
  %240 = load %struct.arc** %arcnew, align 8
  %241 = getelementptr inbounds %struct.arc* %240, i32 0, i32 6
  store i64 0, i64* %241, align 8
  %242 = load %struct.arc** %arcnew, align 8
  %243 = getelementptr inbounds %struct.arc* %242, i32 0, i32 3
  store i32 1, i32* %243, align 4
  %244 = load %struct.arc** %arcnew, align 8
  %245 = getelementptr inbounds %struct.arc* %244, i32 0, i32 1
  %246 = load %struct.node** %245, align 8
  %247 = getelementptr inbounds %struct.node* %246, i32 0, i32 7
  %248 = load %struct.arc** %247, align 8
  %249 = load %struct.arc** %arcnew, align 8
  %250 = getelementptr inbounds %struct.arc* %249, i32 0, i32 4
  store %struct.arc* %248, %struct.arc** %250, align 8
  %251 = load %struct.arc** %arcnew, align 8
  %252 = load %struct.arc** %arcnew, align 8
  %253 = getelementptr inbounds %struct.arc* %252, i32 0, i32 1
  %254 = load %struct.node** %253, align 8
  %255 = getelementptr inbounds %struct.node* %254, i32 0, i32 7
  store %struct.arc* %251, %struct.arc** %255, align 8
  %256 = load %struct.arc** %arcnew, align 8
  %257 = getelementptr inbounds %struct.arc* %256, i32 0, i32 2
  %258 = load %struct.node** %257, align 8
  %259 = getelementptr inbounds %struct.node* %258, i32 0, i32 8
  %260 = load %struct.arc** %259, align 8
  %261 = load %struct.arc** %arcnew, align 8
  %262 = getelementptr inbounds %struct.arc* %261, i32 0, i32 5
  store %struct.arc* %260, %struct.arc** %262, align 8
  %263 = load %struct.arc** %arcnew, align 8
  %264 = load %struct.arc** %arcnew, align 8
  %265 = getelementptr inbounds %struct.arc* %264, i32 0, i32 2
  %266 = load %struct.node** %265, align 8
  %267 = getelementptr inbounds %struct.node* %266, i32 0, i32 8
  store %struct.arc* %263, %struct.arc** %267, align 8
  br label %268

; <label>:268                                     ; preds = %239
  %269 = load %struct.arc** %arcnew, align 8
  %270 = getelementptr inbounds %struct.arc* %269, i32 1
  store %struct.arc* %270, %struct.arc** %arcnew, align 8
  br label %235

; <label>:271                                     ; preds = %235
  br label %272

; <label>:272                                     ; preds = %271, %233
  %273 = load i64* %new_arcs, align 8
  %274 = load %struct.network** %2, align 8
  %275 = getelementptr inbounds %struct.network* %274, i32 0, i32 5
  %276 = load i64* %275, align 8
  %277 = add nsw i64 %276, %273
  store i64 %277, i64* %275, align 8
  %278 = load i64* %new_arcs, align 8
  %279 = load %struct.network** %2, align 8
  %280 = getelementptr inbounds %struct.network* %279, i32 0, i32 7
  %281 = load i64* %280, align 8
  %282 = add nsw i64 %281, %278
  store i64 %282, i64* %280, align 8
  %283 = load i64* %new_arcs, align 8
  %284 = load %struct.network** %2, align 8
  %285 = getelementptr inbounds %struct.network* %284, i32 0, i32 8
  %286 = load i64* %285, align 8
  %287 = sub nsw i64 %286, %283
  store i64 %287, i64* %285, align 8
  br label %288

; <label>:288                                     ; preds = %272, %201
  %289 = load i64* %new_arcs, align 8
  store i64 %289, i64* %1
  br label %290

; <label>:290                                     ; preds = %288, %46
  %291 = load i64* %1
  ret i64 %291
}

; Function Attrs: nounwind uwtable
define i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) #0 {
  %1 = alloca %struct.network*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %susp = alloca i64, align 8
  %red_cost = alloca i64, align 8
  %new_arc = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  store i64 %threshold, i64* %2, align 8
  store i64 %all, i64* %3, align 8
  %4 = load i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load %struct.network** %1, align 8
  %8 = getelementptr inbounds %struct.network* %7, i32 0, i32 7
  %9 = load i64* %8, align 8
  store i64 %9, i64* %susp, align 8
  br label %99

; <label>:10                                      ; preds = %0
  %11 = load %struct.network** %1, align 8
  %12 = getelementptr inbounds %struct.network* %11, i32 0, i32 24
  %13 = load %struct.arc** %12, align 8
  %14 = bitcast %struct.arc* %13 to i8*
  store i8* %14, i8** %stop, align 8
  %15 = load %struct.network** %1, align 8
  %16 = getelementptr inbounds %struct.network* %15, i32 0, i32 5
  %17 = load i64* %16, align 8
  %18 = load %struct.network** %1, align 8
  %19 = getelementptr inbounds %struct.network* %18, i32 0, i32 7
  %20 = load i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.network** %1, align 8
  %23 = getelementptr inbounds %struct.network* %22, i32 0, i32 23
  %24 = load %struct.arc** %23, align 8
  %25 = getelementptr inbounds %struct.arc* %24, i64 %21
  store %struct.arc* %25, %struct.arc** %new_arc, align 8
  store i64 0, i64* %susp, align 8
  %26 = load %struct.arc** %new_arc, align 8
  store %struct.arc* %26, %struct.arc** %arc, align 8
  br label %27

; <label>:27                                      ; preds = %95, %10
  %28 = load %struct.arc** %arc, align 8
  %29 = load i8** %stop, align 8
  %30 = bitcast i8* %29 to %struct.arc*
  %31 = icmp ult %struct.arc* %28, %30
  br i1 %31, label %32, label %98

; <label>:32                                      ; preds = %27
  %33 = load %struct.arc** %arc, align 8
  %34 = getelementptr inbounds %struct.arc* %33, i32 0, i32 3
  %35 = load i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %53

; <label>:37                                      ; preds = %32
  %38 = load %struct.arc** %arc, align 8
  %39 = getelementptr inbounds %struct.arc* %38, i32 0, i32 0
  %40 = load i64* %39, align 8
  %41 = load %struct.arc** %arc, align 8
  %42 = getelementptr inbounds %struct.arc* %41, i32 0, i32 1
  %43 = load %struct.node** %42, align 8
  %44 = getelementptr inbounds %struct.node* %43, i32 0, i32 0
  %45 = load i64* %44, align 8
  %46 = sub nsw i64 %40, %45
  %47 = load %struct.arc** %arc, align 8
  %48 = getelementptr inbounds %struct.arc* %47, i32 0, i32 2
  %49 = load %struct.node** %48, align 8
  %50 = getelementptr inbounds %struct.node* %49, i32 0, i32 0
  %51 = load i64* %50, align 8
  %52 = add nsw i64 %46, %51
  store i64 %52, i64* %red_cost, align 8
  br label %80

; <label>:53                                      ; preds = %32
  store i64 -2, i64* %red_cost, align 8
  %54 = load %struct.arc** %arc, align 8
  %55 = getelementptr inbounds %struct.arc* %54, i32 0, i32 3
  %56 = load i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %79

; <label>:58                                      ; preds = %53
  %59 = load %struct.arc** %arc, align 8
  %60 = getelementptr inbounds %struct.arc* %59, i32 0, i32 1
  %61 = load %struct.node** %60, align 8
  %62 = getelementptr inbounds %struct.node* %61, i32 0, i32 6
  %63 = load %struct.arc** %62, align 8
  %64 = load %struct.arc** %arc, align 8
  %65 = icmp eq %struct.arc* %63, %64
  br i1 %65, label %66, label %72

; <label>:66                                      ; preds = %58
  %67 = load %struct.arc** %new_arc, align 8
  %68 = load %struct.arc** %arc, align 8
  %69 = getelementptr inbounds %struct.arc* %68, i32 0, i32 1
  %70 = load %struct.node** %69, align 8
  %71 = getelementptr inbounds %struct.node* %70, i32 0, i32 6
  store %struct.arc* %67, %struct.arc** %71, align 8
  br label %78

; <label>:72                                      ; preds = %58
  %73 = load %struct.arc** %new_arc, align 8
  %74 = load %struct.arc** %arc, align 8
  %75 = getelementptr inbounds %struct.arc* %74, i32 0, i32 2
  %76 = load %struct.node** %75, align 8
  %77 = getelementptr inbounds %struct.node* %76, i32 0, i32 6
  store %struct.arc* %73, %struct.arc** %77, align 8
  br label %78

; <label>:78                                      ; preds = %72, %66
  br label %79

; <label>:79                                      ; preds = %78, %53
  br label %80

; <label>:80                                      ; preds = %79, %37
  %81 = load i64* %red_cost, align 8
  %82 = load i64* %2, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %80
  %85 = load i64* %susp, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %susp, align 8
  br label %94

; <label>:87                                      ; preds = %80
  %88 = load %struct.arc** %new_arc, align 8
  %89 = load %struct.arc** %arc, align 8
  %90 = bitcast %struct.arc* %88 to i8*
  %91 = bitcast %struct.arc* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 64, i32 8, i1 false)
  %92 = load %struct.arc** %new_arc, align 8
  %93 = getelementptr inbounds %struct.arc* %92, i32 1
  store %struct.arc* %93, %struct.arc** %new_arc, align 8
  br label %94

; <label>:94                                      ; preds = %87, %84
  br label %95

; <label>:95                                      ; preds = %94
  %96 = load %struct.arc** %arc, align 8
  %97 = getelementptr inbounds %struct.arc* %96, i32 1
  store %struct.arc* %97, %struct.arc** %arc, align 8
  br label %27

; <label>:98                                      ; preds = %27
  br label %99

; <label>:99                                      ; preds = %98, %6
  %100 = load i64* %susp, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

; <label>:102                                     ; preds = %99
  %103 = load i64* %susp, align 8
  %104 = load %struct.network** %1, align 8
  %105 = getelementptr inbounds %struct.network* %104, i32 0, i32 5
  %106 = load i64* %105, align 8
  %107 = sub nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i64* %susp, align 8
  %109 = load %struct.network** %1, align 8
  %110 = getelementptr inbounds %struct.network* %109, i32 0, i32 7
  %111 = load i64* %110, align 8
  %112 = sub nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load i64* %susp, align 8
  %114 = load %struct.network** %1, align 8
  %115 = getelementptr inbounds %struct.network* %114, i32 0, i32 24
  %116 = load %struct.arc** %115, align 8
  %117 = sub i64 0, %113
  %118 = getelementptr inbounds %struct.arc* %116, i64 %117
  store %struct.arc* %118, %struct.arc** %115, align 8
  %119 = load i64* %susp, align 8
  %120 = load %struct.network** %1, align 8
  %121 = getelementptr inbounds %struct.network* %120, i32 0, i32 8
  %122 = load i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load %struct.network** %1, align 8
  call void @refresh_neighbour_lists(%struct.network* %124)
  br label %125

; <label>:125                                     ; preds = %102, %99
  %126 = load i64* %susp, align 8
  ret i64 %126
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i64 @global_opt() #0 {
  %new_arcs = alloca i64, align 8
  %residual_nb_it = alloca i64, align 8
  store i64 -1, i64* %new_arcs, align 8
  %1 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 3), align 8
  %2 = icmp sle i64 %1, 15000
  %3 = select i1 %2, i32 5, i32 5
  %4 = sext i32 %3 to i64
  store i64 %4, i64* %residual_nb_it, align 8
  br label %5

; <label>:5                                       ; preds = %42, %0
  %6 = load i64* %new_arcs, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %45

; <label>:8                                       ; preds = %5
  %9 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 5), align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i32 0, i32 0), i64 %9)
  %11 = call i64 @primal_net_simplex(%struct.network* @net)
  %12 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 27), align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str14, i32 0, i32 0), i64 %12)
  %14 = call double @flow_cost(%struct.network* @net)
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str25, i32 0, i32 0), double %14)
  %16 = load i64* %residual_nb_it, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %8
  br label %45

; <label>:19                                      ; preds = %8
  %20 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 7), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

; <label>:22                                      ; preds = %19
  %23 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0)
  store i64 %23, i64* %new_arcs, align 8
  %24 = load i64* %new_arcs, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %22
  %27 = load i64* %new_arcs, align 8
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str36, i32 0, i32 0), i64 %27)
  br label %29

; <label>:29                                      ; preds = %26, %22
  br label %30

; <label>:30                                      ; preds = %29, %19
  %31 = call i64 @price_out_impl(%struct.network* @net)
  store i64 %31, i64* %new_arcs, align 8
  %32 = load i64* %new_arcs, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %30
  %35 = load i64* %new_arcs, align 8
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str4, i32 0, i32 0), i64 %35)
  br label %37

; <label>:37                                      ; preds = %34, %30
  %38 = load i64* %new_arcs, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %37
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str5, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

; <label>:42                                      ; preds = %37
  %43 = load i64* %residual_nb_it, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %residual_nb_it, align 8
  br label %5

; <label>:45                                      ; preds = %18, %5
  %46 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 29), align 8
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str6, i32 0, i32 0), i64 %46)
  ret i64 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 -1, i32* %1
  br label %34

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str7, i32 0, i32 0))
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str8, i32 0, i32 0))
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0))
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str10, i32 0, i32 0))
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network* @net, i32 0, i32 0, i32 0), i8 0, i64 624, i32 1, i1 false)
  store i64 10000000, i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 18), align 8
  %13 = load i8*** %3, align 8
  %14 = getelementptr inbounds i8** %13, i64 1
  %15 = load i8** %14, align 8
  %16 = call i8* @strcpy(i8* getelementptr inbounds (%struct.network* @net, i32 0, i32 0, i32 0), i8* %15) #4
  %17 = call i64 @read_min(%struct.network* @net)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %7
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0))
  %21 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %1
  br label %34

; <label>:22                                      ; preds = %7
  %23 = load i64* getelementptr inbounds (%struct.network* @net, i32 0, i32 3), align 8
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i32 0, i32 0), i64 %23)
  %25 = call i64 @primal_start_artificial(%struct.network* @net)
  %26 = call i64 @global_opt()
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str147, i32 0, i32 0))
  %28 = call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8]* @.str15, i32 0, i32 0), %struct.network* @net)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %22
  %31 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %1
  br label %34

; <label>:32                                      ; preds = %22
  %33 = call i64 @getfree(%struct.network* @net)
  store i32 0, i32* %1
  br label %34

; <label>:34                                      ; preds = %32, %30, %19, %6
  %35 = load i32* %1
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @refresh_neighbour_lists(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 21
  %4 = load %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** %node, align 8
  %5 = load %struct.network** %1, align 8
  %6 = getelementptr inbounds %struct.network* %5, i32 0, i32 22
  %7 = load %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  store i8* %8, i8** %stop, align 8
  br label %9

; <label>:9                                       ; preds = %19, %0
  %10 = load %struct.node** %node, align 8
  %11 = load i8** %stop, align 8
  %12 = bitcast i8* %11 to %struct.node*
  %13 = icmp ult %struct.node* %10, %12
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %9
  %15 = load %struct.node** %node, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 8
  store %struct.arc* null, %struct.arc** %16, align 8
  %17 = load %struct.node** %node, align 8
  %18 = getelementptr inbounds %struct.node* %17, i32 0, i32 7
  store %struct.arc* null, %struct.arc** %18, align 8
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load %struct.node** %node, align 8
  %21 = getelementptr inbounds %struct.node* %20, i32 1
  store %struct.node* %21, %struct.node** %node, align 8
  br label %9

; <label>:22                                      ; preds = %9
  %23 = load %struct.network** %1, align 8
  %24 = getelementptr inbounds %struct.network* %23, i32 0, i32 23
  %25 = load %struct.arc** %24, align 8
  store %struct.arc* %25, %struct.arc** %arc, align 8
  %26 = load %struct.network** %1, align 8
  %27 = getelementptr inbounds %struct.network* %26, i32 0, i32 24
  %28 = load %struct.arc** %27, align 8
  %29 = bitcast %struct.arc* %28 to i8*
  store i8* %29, i8** %stop, align 8
  br label %30

; <label>:30                                      ; preds = %60, %22
  %31 = load %struct.arc** %arc, align 8
  %32 = load i8** %stop, align 8
  %33 = bitcast i8* %32 to %struct.arc*
  %34 = icmp ult %struct.arc* %31, %33
  br i1 %34, label %35, label %63

; <label>:35                                      ; preds = %30
  %36 = load %struct.arc** %arc, align 8
  %37 = getelementptr inbounds %struct.arc* %36, i32 0, i32 1
  %38 = load %struct.node** %37, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 7
  %40 = load %struct.arc** %39, align 8
  %41 = load %struct.arc** %arc, align 8
  %42 = getelementptr inbounds %struct.arc* %41, i32 0, i32 4
  store %struct.arc* %40, %struct.arc** %42, align 8
  %43 = load %struct.arc** %arc, align 8
  %44 = load %struct.arc** %arc, align 8
  %45 = getelementptr inbounds %struct.arc* %44, i32 0, i32 1
  %46 = load %struct.node** %45, align 8
  %47 = getelementptr inbounds %struct.node* %46, i32 0, i32 7
  store %struct.arc* %43, %struct.arc** %47, align 8
  %48 = load %struct.arc** %arc, align 8
  %49 = getelementptr inbounds %struct.arc* %48, i32 0, i32 2
  %50 = load %struct.node** %49, align 8
  %51 = getelementptr inbounds %struct.node* %50, i32 0, i32 8
  %52 = load %struct.arc** %51, align 8
  %53 = load %struct.arc** %arc, align 8
  %54 = getelementptr inbounds %struct.arc* %53, i32 0, i32 5
  store %struct.arc* %52, %struct.arc** %54, align 8
  %55 = load %struct.arc** %arc, align 8
  %56 = load %struct.arc** %arc, align 8
  %57 = getelementptr inbounds %struct.arc* %56, i32 0, i32 2
  %58 = load %struct.node** %57, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 8
  store %struct.arc* %55, %struct.arc** %59, align 8
  br label %60

; <label>:60                                      ; preds = %35
  %61 = load %struct.arc** %arc, align 8
  %62 = getelementptr inbounds %struct.arc* %61, i32 1
  store %struct.arc* %62, %struct.arc** %arc, align 8
  br label %30

; <label>:63                                      ; preds = %30
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @refresh_potential(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %tmp = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %checksum = alloca i64, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 21
  %4 = load %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** %root, align 8
  store i64 0, i64* %checksum, align 8
  %5 = load %struct.node** %root, align 8
  %6 = getelementptr inbounds %struct.node* %5, i32 0, i32 0
  store i64 -100000000, i64* %6, align 8
  %7 = load %struct.node** %root, align 8
  %8 = getelementptr inbounds %struct.node* %7, i32 0, i32 2
  %9 = load %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %node, align 8
  store %struct.node* %9, %struct.node** %tmp, align 8
  br label %10

; <label>:10                                      ; preds = %78, %0
  %11 = load %struct.node** %node, align 8
  %12 = load %struct.node** %root, align 8
  %13 = icmp ne %struct.node* %11, %12
  br i1 %13, label %14, label %79

; <label>:14                                      ; preds = %10
  br label %15

; <label>:15                                      ; preds = %53, %14
  %16 = load %struct.node** %node, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %58

; <label>:18                                      ; preds = %15
  %19 = load %struct.node** %node, align 8
  %20 = getelementptr inbounds %struct.node* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %37

; <label>:23                                      ; preds = %18
  %24 = load %struct.node** %node, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 6
  %26 = load %struct.arc** %25, align 8
  %27 = getelementptr inbounds %struct.arc* %26, i32 0, i32 0
  %28 = load i64* %27, align 8
  %29 = load %struct.node** %node, align 8
  %30 = getelementptr inbounds %struct.node* %29, i32 0, i32 3
  %31 = load %struct.node** %30, align 8
  %32 = getelementptr inbounds %struct.node* %31, i32 0, i32 0
  %33 = load i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = load %struct.node** %node, align 8
  %36 = getelementptr inbounds %struct.node* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %53

; <label>:37                                      ; preds = %18
  %38 = load %struct.node** %node, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 3
  %40 = load %struct.node** %39, align 8
  %41 = getelementptr inbounds %struct.node* %40, i32 0, i32 0
  %42 = load i64* %41, align 8
  %43 = load %struct.node** %node, align 8
  %44 = getelementptr inbounds %struct.node* %43, i32 0, i32 6
  %45 = load %struct.arc** %44, align 8
  %46 = getelementptr inbounds %struct.arc* %45, i32 0, i32 0
  %47 = load i64* %46, align 8
  %48 = sub nsw i64 %42, %47
  %49 = load %struct.node** %node, align 8
  %50 = getelementptr inbounds %struct.node* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64* %checksum, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %checksum, align 8
  br label %53

; <label>:53                                      ; preds = %37, %23
  %54 = load %struct.node** %node, align 8
  store %struct.node* %54, %struct.node** %tmp, align 8
  %55 = load %struct.node** %node, align 8
  %56 = getelementptr inbounds %struct.node* %55, i32 0, i32 2
  %57 = load %struct.node** %56, align 8
  store %struct.node* %57, %struct.node** %node, align 8
  br label %15

; <label>:58                                      ; preds = %15
  %59 = load %struct.node** %tmp, align 8
  store %struct.node* %59, %struct.node** %node, align 8
  br label %60

; <label>:60                                      ; preds = %77, %58
  %61 = load %struct.node** %node, align 8
  %62 = getelementptr inbounds %struct.node* %61, i32 0, i32 3
  %63 = load %struct.node** %62, align 8
  %64 = icmp ne %struct.node* %63, null
  br i1 %64, label %65, label %78

; <label>:65                                      ; preds = %60
  %66 = load %struct.node** %node, align 8
  %67 = getelementptr inbounds %struct.node* %66, i32 0, i32 4
  %68 = load %struct.node** %67, align 8
  store %struct.node* %68, %struct.node** %tmp, align 8
  %69 = load %struct.node** %tmp, align 8
  %70 = icmp ne %struct.node* %69, null
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %65
  %72 = load %struct.node** %tmp, align 8
  store %struct.node* %72, %struct.node** %node, align 8
  br label %78

; <label>:73                                      ; preds = %65
  %74 = load %struct.node** %node, align 8
  %75 = getelementptr inbounds %struct.node* %74, i32 0, i32 3
  %76 = load %struct.node** %75, align 8
  store %struct.node* %76, %struct.node** %node, align 8
  br label %77

; <label>:77                                      ; preds = %73
  br label %60

; <label>:78                                      ; preds = %71, %60
  br label %10

; <label>:79                                      ; preds = %10
  %80 = load i64* %checksum, align 8
  ret i64 %80
}

; Function Attrs: nounwind uwtable
define double @flow_cost(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca i8*, align 8
  %fleet = alloca i64, align 8
  %operational_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  store i64 0, i64* %fleet, align 8
  store i64 0, i64* %operational_cost, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 24
  %4 = load %struct.arc** %3, align 8
  %5 = bitcast %struct.arc* %4 to i8*
  store i8* %5, i8** %stop, align 8
  %6 = load %struct.network** %1, align 8
  %7 = getelementptr inbounds %struct.network* %6, i32 0, i32 23
  %8 = load %struct.arc** %7, align 8
  store %struct.arc* %8, %struct.arc** %arc, align 8
  br label %9

; <label>:9                                       ; preds = %26, %0
  %10 = load %struct.arc** %arc, align 8
  %11 = load i8** %stop, align 8
  %12 = bitcast i8* %11 to %struct.arc*
  %13 = icmp ne %struct.arc* %10, %12
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %9
  %15 = load %struct.arc** %arc, align 8
  %16 = getelementptr inbounds %struct.arc* %15, i32 0, i32 3
  %17 = load i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %14
  %20 = load %struct.arc** %arc, align 8
  %21 = getelementptr inbounds %struct.arc* %20, i32 0, i32 6
  store i64 1, i64* %21, align 8
  br label %25

; <label>:22                                      ; preds = %14
  %23 = load %struct.arc** %arc, align 8
  %24 = getelementptr inbounds %struct.arc* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  br label %25

; <label>:25                                      ; preds = %22, %19
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load %struct.arc** %arc, align 8
  %28 = getelementptr inbounds %struct.arc* %27, i32 1
  store %struct.arc* %28, %struct.arc** %arc, align 8
  br label %9

; <label>:29                                      ; preds = %9
  %30 = load %struct.network** %1, align 8
  %31 = getelementptr inbounds %struct.network* %30, i32 0, i32 22
  %32 = load %struct.node** %31, align 8
  %33 = bitcast %struct.node* %32 to i8*
  store i8* %33, i8** %stop, align 8
  %34 = load %struct.network** %1, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 21
  %36 = load %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %node, align 8
  %37 = load %struct.node** %node, align 8
  %38 = getelementptr inbounds %struct.node* %37, i32 1
  store %struct.node* %38, %struct.node** %node, align 8
  br label %39

; <label>:39                                      ; preds = %52, %29
  %40 = load %struct.node** %node, align 8
  %41 = load i8** %stop, align 8
  %42 = bitcast i8* %41 to %struct.node*
  %43 = icmp ne %struct.node* %40, %42
  br i1 %43, label %44, label %55

; <label>:44                                      ; preds = %39
  %45 = load %struct.node** %node, align 8
  %46 = getelementptr inbounds %struct.node* %45, i32 0, i32 10
  %47 = load i64* %46, align 8
  %48 = load %struct.node** %node, align 8
  %49 = getelementptr inbounds %struct.node* %48, i32 0, i32 6
  %50 = load %struct.arc** %49, align 8
  %51 = getelementptr inbounds %struct.arc* %50, i32 0, i32 6
  store i64 %47, i64* %51, align 8
  br label %52

; <label>:52                                      ; preds = %44
  %53 = load %struct.node** %node, align 8
  %54 = getelementptr inbounds %struct.node* %53, i32 1
  store %struct.node* %54, %struct.node** %node, align 8
  br label %39

; <label>:55                                      ; preds = %39
  %56 = load %struct.network** %1, align 8
  %57 = getelementptr inbounds %struct.network* %56, i32 0, i32 24
  %58 = load %struct.arc** %57, align 8
  %59 = bitcast %struct.arc* %58 to i8*
  store i8* %59, i8** %stop, align 8
  %60 = load %struct.network** %1, align 8
  %61 = getelementptr inbounds %struct.network* %60, i32 0, i32 23
  %62 = load %struct.arc** %61, align 8
  store %struct.arc* %62, %struct.arc** %arc, align 8
  br label %63

; <label>:63                                      ; preds = %115, %55
  %64 = load %struct.arc** %arc, align 8
  %65 = load i8** %stop, align 8
  %66 = bitcast i8* %65 to %struct.arc*
  %67 = icmp ne %struct.arc* %64, %66
  br i1 %67, label %68, label %118

; <label>:68                                      ; preds = %63
  %69 = load %struct.arc** %arc, align 8
  %70 = getelementptr inbounds %struct.arc* %69, i32 0, i32 6
  %71 = load i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %114

; <label>:73                                      ; preds = %68
  %74 = load %struct.arc** %arc, align 8
  %75 = getelementptr inbounds %struct.arc* %74, i32 0, i32 1
  %76 = load %struct.node** %75, align 8
  %77 = getelementptr inbounds %struct.node* %76, i32 0, i32 12
  %78 = load i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %73
  %81 = load %struct.arc** %arc, align 8
  %82 = getelementptr inbounds %struct.arc* %81, i32 0, i32 2
  %83 = load %struct.node** %82, align 8
  %84 = getelementptr inbounds %struct.node* %83, i32 0, i32 12
  %85 = load i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %113, label %87

; <label>:87                                      ; preds = %80, %73
  %88 = load %struct.arc** %arc, align 8
  %89 = getelementptr inbounds %struct.arc* %88, i32 0, i32 1
  %90 = load %struct.node** %89, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 12
  %92 = load i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

; <label>:94                                      ; preds = %87
  %95 = load %struct.arc** %arc, align 8
  %96 = getelementptr inbounds %struct.arc* %95, i32 0, i32 0
  %97 = load i64* %96, align 8
  %98 = load %struct.network** %1, align 8
  %99 = getelementptr inbounds %struct.network* %98, i32 0, i32 18
  %100 = load i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load i64* %operational_cost, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %operational_cost, align 8
  %104 = load i64* %fleet, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %fleet, align 8
  br label %112

; <label>:106                                     ; preds = %87
  %107 = load %struct.arc** %arc, align 8
  %108 = getelementptr inbounds %struct.arc* %107, i32 0, i32 0
  %109 = load i64* %108, align 8
  %110 = load i64* %operational_cost, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %operational_cost, align 8
  br label %112

; <label>:112                                     ; preds = %106, %94
  br label %113

; <label>:113                                     ; preds = %112, %80
  br label %114

; <label>:114                                     ; preds = %113, %68
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load %struct.arc** %arc, align 8
  %117 = getelementptr inbounds %struct.arc* %116, i32 1
  store %struct.arc* %117, %struct.arc** %arc, align 8
  br label %63

; <label>:118                                     ; preds = %63
  %119 = load i64* %fleet, align 8
  %120 = sitofp i64 %119 to double
  %121 = load %struct.network** %1, align 8
  %122 = getelementptr inbounds %struct.network* %121, i32 0, i32 18
  %123 = load i64* %122, align 8
  %124 = sitofp i64 %123 to double
  %125 = fmul double %120, %124
  %126 = load i64* %operational_cost, align 8
  %127 = sitofp i64 %126 to double
  %128 = fadd double %125, %127
  ret double %128
}

; Function Attrs: nounwind uwtable
define double @flow_org_cost(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca i8*, align 8
  %fleet = alloca i64, align 8
  %operational_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  store i64 0, i64* %fleet, align 8
  store i64 0, i64* %operational_cost, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 24
  %4 = load %struct.arc** %3, align 8
  %5 = bitcast %struct.arc* %4 to i8*
  store i8* %5, i8** %stop, align 8
  %6 = load %struct.network** %1, align 8
  %7 = getelementptr inbounds %struct.network* %6, i32 0, i32 23
  %8 = load %struct.arc** %7, align 8
  store %struct.arc* %8, %struct.arc** %arc, align 8
  br label %9

; <label>:9                                       ; preds = %26, %0
  %10 = load %struct.arc** %arc, align 8
  %11 = load i8** %stop, align 8
  %12 = bitcast i8* %11 to %struct.arc*
  %13 = icmp ne %struct.arc* %10, %12
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %9
  %15 = load %struct.arc** %arc, align 8
  %16 = getelementptr inbounds %struct.arc* %15, i32 0, i32 3
  %17 = load i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %14
  %20 = load %struct.arc** %arc, align 8
  %21 = getelementptr inbounds %struct.arc* %20, i32 0, i32 6
  store i64 1, i64* %21, align 8
  br label %25

; <label>:22                                      ; preds = %14
  %23 = load %struct.arc** %arc, align 8
  %24 = getelementptr inbounds %struct.arc* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  br label %25

; <label>:25                                      ; preds = %22, %19
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load %struct.arc** %arc, align 8
  %28 = getelementptr inbounds %struct.arc* %27, i32 1
  store %struct.arc* %28, %struct.arc** %arc, align 8
  br label %9

; <label>:29                                      ; preds = %9
  %30 = load %struct.network** %1, align 8
  %31 = getelementptr inbounds %struct.network* %30, i32 0, i32 22
  %32 = load %struct.node** %31, align 8
  %33 = bitcast %struct.node* %32 to i8*
  store i8* %33, i8** %stop, align 8
  %34 = load %struct.network** %1, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 21
  %36 = load %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %node, align 8
  %37 = load %struct.node** %node, align 8
  %38 = getelementptr inbounds %struct.node* %37, i32 1
  store %struct.node* %38, %struct.node** %node, align 8
  br label %39

; <label>:39                                      ; preds = %52, %29
  %40 = load %struct.node** %node, align 8
  %41 = load i8** %stop, align 8
  %42 = bitcast i8* %41 to %struct.node*
  %43 = icmp ne %struct.node* %40, %42
  br i1 %43, label %44, label %55

; <label>:44                                      ; preds = %39
  %45 = load %struct.node** %node, align 8
  %46 = getelementptr inbounds %struct.node* %45, i32 0, i32 10
  %47 = load i64* %46, align 8
  %48 = load %struct.node** %node, align 8
  %49 = getelementptr inbounds %struct.node* %48, i32 0, i32 6
  %50 = load %struct.arc** %49, align 8
  %51 = getelementptr inbounds %struct.arc* %50, i32 0, i32 6
  store i64 %47, i64* %51, align 8
  br label %52

; <label>:52                                      ; preds = %44
  %53 = load %struct.node** %node, align 8
  %54 = getelementptr inbounds %struct.node* %53, i32 1
  store %struct.node* %54, %struct.node** %node, align 8
  br label %39

; <label>:55                                      ; preds = %39
  %56 = load %struct.network** %1, align 8
  %57 = getelementptr inbounds %struct.network* %56, i32 0, i32 24
  %58 = load %struct.arc** %57, align 8
  %59 = bitcast %struct.arc* %58 to i8*
  store i8* %59, i8** %stop, align 8
  %60 = load %struct.network** %1, align 8
  %61 = getelementptr inbounds %struct.network* %60, i32 0, i32 23
  %62 = load %struct.arc** %61, align 8
  store %struct.arc* %62, %struct.arc** %arc, align 8
  br label %63

; <label>:63                                      ; preds = %115, %55
  %64 = load %struct.arc** %arc, align 8
  %65 = load i8** %stop, align 8
  %66 = bitcast i8* %65 to %struct.arc*
  %67 = icmp ne %struct.arc* %64, %66
  br i1 %67, label %68, label %118

; <label>:68                                      ; preds = %63
  %69 = load %struct.arc** %arc, align 8
  %70 = getelementptr inbounds %struct.arc* %69, i32 0, i32 6
  %71 = load i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %114

; <label>:73                                      ; preds = %68
  %74 = load %struct.arc** %arc, align 8
  %75 = getelementptr inbounds %struct.arc* %74, i32 0, i32 1
  %76 = load %struct.node** %75, align 8
  %77 = getelementptr inbounds %struct.node* %76, i32 0, i32 12
  %78 = load i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %73
  %81 = load %struct.arc** %arc, align 8
  %82 = getelementptr inbounds %struct.arc* %81, i32 0, i32 2
  %83 = load %struct.node** %82, align 8
  %84 = getelementptr inbounds %struct.node* %83, i32 0, i32 12
  %85 = load i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %113, label %87

; <label>:87                                      ; preds = %80, %73
  %88 = load %struct.arc** %arc, align 8
  %89 = getelementptr inbounds %struct.arc* %88, i32 0, i32 1
  %90 = load %struct.node** %89, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 12
  %92 = load i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

; <label>:94                                      ; preds = %87
  %95 = load %struct.arc** %arc, align 8
  %96 = getelementptr inbounds %struct.arc* %95, i32 0, i32 7
  %97 = load i64* %96, align 8
  %98 = load %struct.network** %1, align 8
  %99 = getelementptr inbounds %struct.network* %98, i32 0, i32 18
  %100 = load i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load i64* %operational_cost, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %operational_cost, align 8
  %104 = load i64* %fleet, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %fleet, align 8
  br label %112

; <label>:106                                     ; preds = %87
  %107 = load %struct.arc** %arc, align 8
  %108 = getelementptr inbounds %struct.arc* %107, i32 0, i32 7
  %109 = load i64* %108, align 8
  %110 = load i64* %operational_cost, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %operational_cost, align 8
  br label %112

; <label>:112                                     ; preds = %106, %94
  br label %113

; <label>:113                                     ; preds = %112, %80
  br label %114

; <label>:114                                     ; preds = %113, %68
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load %struct.arc** %arc, align 8
  %117 = getelementptr inbounds %struct.arc* %116, i32 1
  store %struct.arc* %117, %struct.arc** %arc, align 8
  br label %63

; <label>:118                                     ; preds = %63
  %119 = load i64* %fleet, align 8
  %120 = sitofp i64 %119 to double
  %121 = load %struct.network** %1, align 8
  %122 = getelementptr inbounds %struct.network* %121, i32 0, i32 18
  %123 = load i64* %122, align 8
  %124 = sitofp i64 %123 to double
  %125 = fmul double %120, %124
  %126 = load i64* %operational_cost, align 8
  %127 = sitofp i64 %126 to double
  %128 = fadd double %125, %127
  ret double %128
}

; Function Attrs: nounwind uwtable
define i64 @primal_feasible(%struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.network*, align 8
  %stop = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %dummy = alloca %struct.arc*, align 8
  %stop_dummy = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %flow = alloca i64, align 8
  store %struct.network* %net, %struct.network** %2, align 8
  %3 = load %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network* %3, i32 0, i32 25
  %5 = load %struct.arc** %4, align 8
  store %struct.arc* %5, %struct.arc** %dummy, align 8
  %6 = load %struct.network** %2, align 8
  %7 = getelementptr inbounds %struct.network* %6, i32 0, i32 26
  %8 = load %struct.arc** %7, align 8
  store %struct.arc* %8, %struct.arc** %stop_dummy, align 8
  %9 = load %struct.network** %2, align 8
  %10 = getelementptr inbounds %struct.network* %9, i32 0, i32 21
  %11 = load %struct.node** %10, align 8
  store %struct.node* %11, %struct.node** %node, align 8
  %12 = load %struct.network** %2, align 8
  %13 = getelementptr inbounds %struct.network* %12, i32 0, i32 22
  %14 = load %struct.node** %13, align 8
  %15 = bitcast %struct.node* %14 to i8*
  store i8* %15, i8** %stop, align 8
  %16 = load %struct.node** %node, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 1
  store %struct.node* %17, %struct.node** %node, align 8
  br label %18

; <label>:18                                      ; preds = %81, %0
  %19 = load %struct.node** %node, align 8
  %20 = load i8** %stop, align 8
  %21 = bitcast i8* %20 to %struct.node*
  %22 = icmp ult %struct.node* %19, %21
  br i1 %22, label %23, label %84

; <label>:23                                      ; preds = %18
  %24 = load %struct.node** %node, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 6
  %26 = load %struct.arc** %25, align 8
  store %struct.arc* %26, %struct.arc** %arc, align 8
  %27 = load %struct.node** %node, align 8
  %28 = getelementptr inbounds %struct.node* %27, i32 0, i32 10
  %29 = load i64* %28, align 8
  store i64 %29, i64* %flow, align 8
  %30 = load %struct.arc** %arc, align 8
  %31 = load %struct.arc** %dummy, align 8
  %32 = icmp uge %struct.arc* %30, %31
  br i1 %32, label %33, label %59

; <label>:33                                      ; preds = %23
  %34 = load %struct.arc** %arc, align 8
  %35 = load %struct.arc** %stop_dummy, align 8
  %36 = icmp ult %struct.arc* %34, %35
  br i1 %36, label %37, label %59

; <label>:37                                      ; preds = %33
  %38 = load i64* %flow, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %37
  %41 = load i64* %flow, align 8
  br label %45

; <label>:42                                      ; preds = %37
  %43 = load i64* %flow, align 8
  %44 = sub nsw i64 0, %43
  br label %45

; <label>:45                                      ; preds = %42, %40
  %46 = phi i64 [ %41, %40 ], [ %44, %42 ]
  %47 = load %struct.network** %2, align 8
  %48 = getelementptr inbounds %struct.network* %47, i32 0, i32 16
  %49 = load i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %45
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0))
  %53 = load %struct.node** %node, align 8
  %54 = getelementptr inbounds %struct.node* %53, i32 0, i32 12
  %55 = load i32* %54, align 4
  %56 = load i64* %flow, align 8
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str117, i32 0, i32 0), i32 %55, i64 %56)
  br label %58

; <label>:58                                      ; preds = %51, %45
  br label %80

; <label>:59                                      ; preds = %33, %23
  %60 = load i64* %flow, align 8
  %61 = load %struct.network** %2, align 8
  %62 = getelementptr inbounds %struct.network* %61, i32 0, i32 16
  %63 = load i64* %62, align 8
  %64 = sub nsw i64 0, %63
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %73, label %66

; <label>:66                                      ; preds = %59
  %67 = load i64* %flow, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.network** %2, align 8
  %70 = getelementptr inbounds %struct.network* %69, i32 0, i32 16
  %71 = load i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %79

; <label>:73                                      ; preds = %66, %59
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str16, i32 0, i32 0))
  %75 = load i64* %flow, align 8
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str218, i32 0, i32 0), i64 %75)
  %77 = load %struct.network** %2, align 8
  %78 = getelementptr inbounds %struct.network* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  store i64 1, i64* %1
  br label %87

; <label>:79                                      ; preds = %66
  br label %80

; <label>:80                                      ; preds = %79, %58
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load %struct.node** %node, align 8
  %83 = getelementptr inbounds %struct.node* %82, i32 1
  store %struct.node* %83, %struct.node** %node, align 8
  br label %18

; <label>:84                                      ; preds = %18
  %85 = load %struct.network** %2, align 8
  %86 = getelementptr inbounds %struct.network* %85, i32 0, i32 13
  store i64 1, i64* %86, align 8
  store i64 0, i64* %1
  br label %87

; <label>:87                                      ; preds = %84, %73
  %88 = load i64* %1
  ret i64 %88
}

; Function Attrs: nounwind uwtable
define i64 @dual_feasible(%struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca %struct.arc*, align 8
  %red_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %2, align 8
  %3 = load %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network* %3, i32 0, i32 24
  %5 = load %struct.arc** %4, align 8
  store %struct.arc* %5, %struct.arc** %stop, align 8
  %6 = load %struct.network** %2, align 8
  %7 = getelementptr inbounds %struct.network* %6, i32 0, i32 23
  %8 = load %struct.arc** %7, align 8
  store %struct.arc* %8, %struct.arc** %arc, align 8
  br label %9

; <label>:9                                       ; preds = %52, %0
  %10 = load %struct.arc** %arc, align 8
  %11 = load %struct.arc** %stop, align 8
  %12 = icmp ult %struct.arc* %10, %11
  br i1 %12, label %13, label %55

; <label>:13                                      ; preds = %9
  %14 = load %struct.arc** %arc, align 8
  %15 = getelementptr inbounds %struct.arc* %14, i32 0, i32 0
  %16 = load i64* %15, align 8
  %17 = load %struct.arc** %arc, align 8
  %18 = getelementptr inbounds %struct.arc* %17, i32 0, i32 1
  %19 = load %struct.node** %18, align 8
  %20 = getelementptr inbounds %struct.node* %19, i32 0, i32 0
  %21 = load i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = load %struct.arc** %arc, align 8
  %24 = getelementptr inbounds %struct.arc* %23, i32 0, i32 2
  %25 = load %struct.node** %24, align 8
  %26 = getelementptr inbounds %struct.node* %25, i32 0, i32 0
  %27 = load i64* %26, align 8
  %28 = add nsw i64 %22, %27
  store i64 %28, i64* %red_cost, align 8
  %29 = load %struct.arc** %arc, align 8
  %30 = getelementptr inbounds %struct.arc* %29, i32 0, i32 3
  %31 = load i32* %30, align 4
  switch i32 %31, label %50 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %41
    i32 -1, label %49
  ]

; <label>:32                                      ; preds = %13, %13
  %33 = load i64* %red_cost, align 8
  %34 = load %struct.network** %2, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 16
  %36 = load i64* %35, align 8
  %37 = sub nsw i64 0, %36
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %32
  br label %56

; <label>:40                                      ; preds = %32
  br label %51

; <label>:41                                      ; preds = %13
  %42 = load i64* %red_cost, align 8
  %43 = load %struct.network** %2, align 8
  %44 = getelementptr inbounds %struct.network* %43, i32 0, i32 16
  %45 = load i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %41
  br label %56

; <label>:48                                      ; preds = %41
  br label %51

; <label>:49                                      ; preds = %13
  br label %50

; <label>:50                                      ; preds = %49, %13
  br label %51

; <label>:51                                      ; preds = %50, %48, %40
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load %struct.arc** %arc, align 8
  %54 = getelementptr inbounds %struct.arc* %53, i32 1
  store %struct.arc* %54, %struct.arc** %arc, align 8
  br label %9

; <label>:55                                      ; preds = %9
  store i64 0, i64* %1
  br label %61

; <label>:56                                      ; preds = %47, %39
  %57 = load %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([23 x i8]* @.str319, i32 0, i32 0))
  %59 = load %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([23 x i8]* @.str420, i32 0, i32 0))
  store i64 1, i64* %1
  br label %61

; <label>:61                                      ; preds = %56, %55
  %62 = load i64* %1
  ret i64 %62
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i64 @getfree(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 21
  %4 = load %struct.node** %3, align 8
  %5 = icmp ne %struct.node* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load %struct.network** %1, align 8
  %8 = getelementptr inbounds %struct.network* %7, i32 0, i32 21
  %9 = load %struct.node** %8, align 8
  %10 = bitcast %struct.node* %9 to i8*
  call void @free(i8* %10) #4
  br label %11

; <label>:11                                      ; preds = %6, %0
  %12 = load %struct.network** %1, align 8
  %13 = getelementptr inbounds %struct.network* %12, i32 0, i32 23
  %14 = load %struct.arc** %13, align 8
  %15 = icmp ne %struct.arc* %14, null
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = load %struct.network** %1, align 8
  %18 = getelementptr inbounds %struct.network* %17, i32 0, i32 23
  %19 = load %struct.arc** %18, align 8
  %20 = bitcast %struct.arc* %19 to i8*
  call void @free(i8* %20) #4
  br label %21

; <label>:21                                      ; preds = %16, %11
  %22 = load %struct.network** %1, align 8
  %23 = getelementptr inbounds %struct.network* %22, i32 0, i32 25
  %24 = load %struct.arc** %23, align 8
  %25 = icmp ne %struct.arc* %24, null
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %21
  %27 = load %struct.network** %1, align 8
  %28 = getelementptr inbounds %struct.network* %27, i32 0, i32 25
  %29 = load %struct.arc** %28, align 8
  %30 = bitcast %struct.arc* %29 to i8*
  call void @free(i8* %30) #4
  br label %31

; <label>:31                                      ; preds = %26, %21
  %32 = load %struct.network** %1, align 8
  %33 = getelementptr inbounds %struct.network* %32, i32 0, i32 22
  store %struct.node* null, %struct.node** %33, align 8
  %34 = load %struct.network** %1, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 21
  store %struct.node* null, %struct.node** %35, align 8
  %36 = load %struct.network** %1, align 8
  %37 = getelementptr inbounds %struct.network* %36, i32 0, i32 24
  store %struct.arc* null, %struct.arc** %37, align 8
  %38 = load %struct.network** %1, align 8
  %39 = getelementptr inbounds %struct.network* %38, i32 0, i32 23
  store %struct.arc* null, %struct.arc** %39, align 8
  %40 = load %struct.network** %1, align 8
  %41 = getelementptr inbounds %struct.network* %40, i32 0, i32 26
  store %struct.arc* null, %struct.arc** %41, align 8
  %42 = load %struct.network** %1, align 8
  %43 = getelementptr inbounds %struct.network* %42, i32 0, i32 25
  store %struct.arc* null, %struct.arc** %43, align 8
  ret i64 0
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @write_circulations(i8* %outfile, %struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.network*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %block = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %arc2 = alloca %struct.arc*, align 8
  %first_impl = alloca %struct.arc*, align 8
  store i8* %outfile, i8** %2, align 8
  store %struct.network* %net, %struct.network** %3, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %4 = load %struct.network** %3, align 8
  %5 = getelementptr inbounds %struct.network* %4, i32 0, i32 24
  %6 = load %struct.arc** %5, align 8
  %7 = load %struct.network** %3, align 8
  %8 = getelementptr inbounds %struct.network* %7, i32 0, i32 7
  %9 = load i64* %8, align 8
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds %struct.arc* %6, i64 %10
  store %struct.arc* %11, %struct.arc** %first_impl, align 8
  %12 = load i8** %2, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str27, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %out, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  store i64 -1, i64* %1
  br label %107

; <label>:16                                      ; preds = %0
  %17 = load %struct.network** %3, align 8
  call void @refresh_neighbour_lists(%struct.network* %17)
  %18 = load %struct.network** %3, align 8
  %19 = getelementptr inbounds %struct.network* %18, i32 0, i32 2
  %20 = load i64* %19, align 8
  %21 = load %struct.network** %3, align 8
  %22 = getelementptr inbounds %struct.network* %21, i32 0, i32 21
  %23 = load %struct.node** %22, align 8
  %24 = getelementptr inbounds %struct.node* %23, i64 %20
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 7
  %26 = load %struct.arc** %25, align 8
  store %struct.arc* %26, %struct.arc** %block, align 8
  br label %27

; <label>:27                                      ; preds = %100, %16
  %28 = load %struct.arc** %block, align 8
  %29 = icmp ne %struct.arc* %28, null
  br i1 %29, label %30, label %104

; <label>:30                                      ; preds = %27
  %31 = load %struct.arc** %block, align 8
  %32 = getelementptr inbounds %struct.arc* %31, i32 0, i32 6
  %33 = load i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %99

; <label>:35                                      ; preds = %30
  %36 = load %struct._IO_FILE** %out, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0))
  %38 = load %struct.arc** %block, align 8
  store %struct.arc* %38, %struct.arc** %arc, align 8
  br label %39

; <label>:39                                      ; preds = %97, %35
  %40 = load %struct.arc** %arc, align 8
  %41 = icmp ne %struct.arc* %40, null
  br i1 %41, label %42, label %98

; <label>:42                                      ; preds = %39
  %43 = load %struct.arc** %arc, align 8
  %44 = load %struct.arc** %first_impl, align 8
  %45 = icmp uge %struct.arc* %43, %44
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %42
  %47 = load %struct._IO_FILE** %out, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8]* @.str229, i32 0, i32 0))
  br label %49

; <label>:49                                      ; preds = %46, %42
  %50 = load %struct._IO_FILE** %out, align 8
  %51 = load %struct.arc** %arc, align 8
  %52 = getelementptr inbounds %struct.arc* %51, i32 0, i32 2
  %53 = load %struct.node** %52, align 8
  %54 = getelementptr inbounds %struct.node* %53, i32 0, i32 12
  %55 = load i32* %54, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8]* @.str330, i32 0, i32 0), i32 %56)
  %58 = load %struct.network** %3, align 8
  %59 = getelementptr inbounds %struct.network* %58, i32 0, i32 3
  %60 = load i64* %59, align 8
  %61 = load %struct.arc** %arc, align 8
  %62 = getelementptr inbounds %struct.arc* %61, i32 0, i32 2
  %63 = load %struct.node** %62, align 8
  %64 = getelementptr inbounds %struct.node* %63, i64 %60
  %65 = getelementptr inbounds %struct.node* %64, i32 0, i32 7
  %66 = load %struct.arc** %65, align 8
  store %struct.arc* %66, %struct.arc** %arc2, align 8
  br label %67

; <label>:67                                      ; preds = %77, %49
  %68 = load %struct.arc** %arc2, align 8
  %69 = icmp ne %struct.arc* %68, null
  br i1 %69, label %70, label %81

; <label>:70                                      ; preds = %67
  %71 = load %struct.arc** %arc2, align 8
  %72 = getelementptr inbounds %struct.arc* %71, i32 0, i32 6
  %73 = load i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %70
  br label %81

; <label>:76                                      ; preds = %70
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load %struct.arc** %arc2, align 8
  %79 = getelementptr inbounds %struct.arc* %78, i32 0, i32 4
  %80 = load %struct.arc** %79, align 8
  store %struct.arc* %80, %struct.arc** %arc2, align 8
  br label %67

; <label>:81                                      ; preds = %75, %67
  %82 = load %struct.arc** %arc2, align 8
  %83 = icmp ne %struct.arc* %82, null
  br i1 %83, label %87, label %84

; <label>:84                                      ; preds = %81
  %85 = load %struct._IO_FILE** %out, align 8
  %86 = call i32 @fclose(%struct._IO_FILE* %85)
  store i64 -1, i64* %1
  br label %107

; <label>:87                                      ; preds = %81
  %88 = load %struct.arc** %arc2, align 8
  %89 = getelementptr inbounds %struct.arc* %88, i32 0, i32 2
  %90 = load %struct.node** %89, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 12
  %92 = load i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

; <label>:94                                      ; preds = %87
  %95 = load %struct.arc** %arc2, align 8
  store %struct.arc* %95, %struct.arc** %arc, align 8
  br label %97

; <label>:96                                      ; preds = %87
  store %struct.arc* null, %struct.arc** %arc, align 8
  br label %97

; <label>:97                                      ; preds = %96, %94
  br label %39

; <label>:98                                      ; preds = %39
  br label %99

; <label>:99                                      ; preds = %98, %30
  br label %100

; <label>:100                                     ; preds = %99
  %101 = load %struct.arc** %block, align 8
  %102 = getelementptr inbounds %struct.arc* %101, i32 0, i32 4
  %103 = load %struct.arc** %102, align 8
  store %struct.arc* %103, %struct.arc** %block, align 8
  br label %27

; <label>:104                                     ; preds = %27
  %105 = load %struct._IO_FILE** %out, align 8
  %106 = call i32 @fclose(%struct._IO_FILE* %105)
  store i64 0, i64* %1
  br label %107

; <label>:107                                     ; preds = %104, %84, %15
  %108 = load i64* %1
  ret i64 %108
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @bea_is_dual_infeasible(%struct.arc* %arc, i64 %red_cost) #0 {
  %1 = alloca %struct.arc*, align 8
  %2 = alloca i64, align 8
  store %struct.arc* %arc, %struct.arc** %1, align 8
  store i64 %red_cost, i64* %2, align 8
  %3 = load i64* %2, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.arc** %1, align 8
  %7 = getelementptr inbounds %struct.arc* %6, i32 0, i32 3
  %8 = load i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %20, label %10

; <label>:10                                      ; preds = %5, %0
  %11 = load i64* %2, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %10
  %14 = load %struct.arc** %1, align 8
  %15 = getelementptr inbounds %struct.arc* %14, i32 0, i32 3
  %16 = load i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br label %18

; <label>:18                                      ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br label %20

; <label>:20                                      ; preds = %18, %5
  %21 = phi i1 [ true, %5 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @sort_basket(i64 %min, i64 %max) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %cut = alloca i64, align 8
  %xchange = alloca %struct.basket*, align 8
  store i64 %min, i64* %1, align 8
  store i64 %max, i64* %2, align 8
  %3 = load i64* %1, align 8
  store i64 %3, i64* %l, align 8
  %4 = load i64* %2, align 8
  store i64 %4, i64* %r, align 8
  %5 = load i64* %l, align 8
  %6 = load i64* %r, align 8
  %7 = add nsw i64 %5, %6
  %8 = sdiv i64 %7, 2
  %9 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %8
  %10 = load %struct.basket** %9, align 8
  %11 = getelementptr inbounds %struct.basket* %10, i32 0, i32 2
  %12 = load i64* %11, align 8
  store i64 %12, i64* %cut, align 8
  br label %13

; <label>:13                                      ; preds = %63, %0
  br label %14

; <label>:14                                      ; preds = %22, %13
  %15 = load i64* %l, align 8
  %16 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %15
  %17 = load %struct.basket** %16, align 8
  %18 = getelementptr inbounds %struct.basket* %17, i32 0, i32 2
  %19 = load i64* %18, align 8
  %20 = load i64* %cut, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14
  %23 = load i64* %l, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %l, align 8
  br label %14

; <label>:25                                      ; preds = %14
  br label %26

; <label>:26                                      ; preds = %34, %25
  %27 = load i64* %cut, align 8
  %28 = load i64* %r, align 8
  %29 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %28
  %30 = load %struct.basket** %29, align 8
  %31 = getelementptr inbounds %struct.basket* %30, i32 0, i32 2
  %32 = load i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %26
  %35 = load i64* %r, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %r, align 8
  br label %26

; <label>:37                                      ; preds = %26
  %38 = load i64* %l, align 8
  %39 = load i64* %r, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %53

; <label>:41                                      ; preds = %37
  %42 = load i64* %l, align 8
  %43 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %42
  %44 = load %struct.basket** %43, align 8
  store %struct.basket* %44, %struct.basket** %xchange, align 8
  %45 = load i64* %r, align 8
  %46 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %45
  %47 = load %struct.basket** %46, align 8
  %48 = load i64* %l, align 8
  %49 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %48
  store %struct.basket* %47, %struct.basket** %49, align 8
  %50 = load %struct.basket** %xchange, align 8
  %51 = load i64* %r, align 8
  %52 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %51
  store %struct.basket* %50, %struct.basket** %52, align 8
  br label %53

; <label>:53                                      ; preds = %41, %37
  %54 = load i64* %l, align 8
  %55 = load i64* %r, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %53
  %58 = load i64* %l, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %l, align 8
  %60 = load i64* %r, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %r, align 8
  br label %62

; <label>:62                                      ; preds = %57, %53
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i64* %l, align 8
  %65 = load i64* %r, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %13, label %67

; <label>:67                                      ; preds = %63
  %68 = load i64* %1, align 8
  %69 = load i64* %r, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %67
  %72 = load i64* %1, align 8
  %73 = load i64* %r, align 8
  call void @sort_basket(i64 %72, i64 %73)
  br label %74

; <label>:74                                      ; preds = %71, %67
  %75 = load i64* %l, align 8
  %76 = load i64* %2, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %84

; <label>:78                                      ; preds = %74
  %79 = load i64* %l, align 8
  %80 = icmp sle i64 %79, 50
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %78
  %82 = load i64* %l, align 8
  %83 = load i64* %2, align 8
  call void @sort_basket(i64 %82, i64 %83)
  br label %84

; <label>:84                                      ; preds = %81, %78, %74
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* %red_cost_of_bea) #0 {
  %1 = alloca %struct.arc*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.arc*, align 8
  %4 = alloca %struct.arc*, align 8
  %5 = alloca i64*, align 8
  %i = alloca i64, align 8
  %next = alloca i64, align 8
  %old_group_pos = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %red_cost = alloca i64, align 8
  store i64 %m, i64* %2, align 8
  store %struct.arc* %arcs, %struct.arc** %3, align 8
  store %struct.arc* %stop_arcs, %struct.arc** %4, align 8
  store i64* %red_cost_of_bea, i64** %5, align 8
  %6 = load i64* @initialize, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

; <label>:8                                       ; preds = %0
  store i64 1, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %17, %8
  %10 = load i64* %i, align 8
  %11 = icmp slt i64 %10, 351
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %9
  %13 = load i64* %i, align 8
  %14 = getelementptr inbounds [351 x %struct.basket]* @basket, i32 0, i64 %13
  %15 = load i64* %i, align 8
  %16 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %15
  store %struct.basket* %14, %struct.basket** %16, align 8
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i64* %i, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %i, align 8
  br label %9

; <label>:20                                      ; preds = %9
  %21 = load i64* %2, align 8
  %22 = sub nsw i64 %21, 1
  %23 = sdiv i64 %22, 300
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @nr_group, align 8
  store i64 0, i64* @group_pos, align 8
  store i64 0, i64* @basket_size, align 8
  store i64 0, i64* @initialize, align 8
  br label %101

; <label>:25                                      ; preds = %0
  store i64 2, i64* %i, align 8
  store i64 0, i64* %next, align 8
  br label %26

; <label>:26                                      ; preds = %96, %25
  %27 = load i64* %i, align 8
  %28 = icmp sle i64 %27, 50
  br i1 %28, label %29, label %99

; <label>:29                                      ; preds = %26
  %30 = load i64* %i, align 8
  %31 = load i64* @basket_size, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %99

; <label>:33                                      ; preds = %29
  %34 = load i64* %i, align 8
  %35 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %34
  %36 = load %struct.basket** %35, align 8
  %37 = getelementptr inbounds %struct.basket* %36, i32 0, i32 0
  %38 = load %struct.arc** %37, align 8
  store %struct.arc* %38, %struct.arc** %arc, align 8
  %39 = load %struct.arc** %arc, align 8
  %40 = getelementptr inbounds %struct.arc* %39, i32 0, i32 0
  %41 = load i64* %40, align 8
  %42 = load %struct.arc** %arc, align 8
  %43 = getelementptr inbounds %struct.arc* %42, i32 0, i32 1
  %44 = load %struct.node** %43, align 8
  %45 = getelementptr inbounds %struct.node* %44, i32 0, i32 0
  %46 = load i64* %45, align 8
  %47 = sub nsw i64 %41, %46
  %48 = load %struct.arc** %arc, align 8
  %49 = getelementptr inbounds %struct.arc* %48, i32 0, i32 2
  %50 = load %struct.node** %49, align 8
  %51 = getelementptr inbounds %struct.node* %50, i32 0, i32 0
  %52 = load i64* %51, align 8
  %53 = add nsw i64 %47, %52
  store i64 %53, i64* %red_cost, align 8
  %54 = load i64* %red_cost, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

; <label>:56                                      ; preds = %33
  %57 = load %struct.arc** %arc, align 8
  %58 = getelementptr inbounds %struct.arc* %57, i32 0, i32 3
  %59 = load i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %69, label %61

; <label>:61                                      ; preds = %56, %33
  %62 = load i64* %red_cost, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %95

; <label>:64                                      ; preds = %61
  %65 = load %struct.arc** %arc, align 8
  %66 = getelementptr inbounds %struct.arc* %65, i32 0, i32 3
  %67 = load i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %95

; <label>:69                                      ; preds = %64, %56
  %70 = load i64* %next, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %next, align 8
  %72 = load %struct.arc** %arc, align 8
  %73 = load i64* %next, align 8
  %74 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %73
  %75 = load %struct.basket** %74, align 8
  %76 = getelementptr inbounds %struct.basket* %75, i32 0, i32 0
  store %struct.arc* %72, %struct.arc** %76, align 8
  %77 = load i64* %red_cost, align 8
  %78 = load i64* %next, align 8
  %79 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %78
  %80 = load %struct.basket** %79, align 8
  %81 = getelementptr inbounds %struct.basket* %80, i32 0, i32 1
  store i64 %77, i64* %81, align 8
  %82 = load i64* %red_cost, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %69
  %85 = load i64* %red_cost, align 8
  br label %89

; <label>:86                                      ; preds = %69
  %87 = load i64* %red_cost, align 8
  %88 = sub nsw i64 0, %87
  br label %89

; <label>:89                                      ; preds = %86, %84
  %90 = phi i64 [ %85, %84 ], [ %88, %86 ]
  %91 = load i64* %next, align 8
  %92 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %91
  %93 = load %struct.basket** %92, align 8
  %94 = getelementptr inbounds %struct.basket* %93, i32 0, i32 2
  store i64 %90, i64* %94, align 8
  br label %95

; <label>:95                                      ; preds = %89, %64, %61
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load i64* %i, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %i, align 8
  br label %26

; <label>:99                                      ; preds = %29, %26
  %100 = load i64* %next, align 8
  store i64 %100, i64* @basket_size, align 8
  br label %101

; <label>:101                                     ; preds = %99, %20
  %102 = load i64* @group_pos, align 8
  store i64 %102, i64* %old_group_pos, align 8
  br label %103

; <label>:103                                     ; preds = %181, %101
  %104 = load %struct.arc** %3, align 8
  %105 = load i64* @group_pos, align 8
  %106 = getelementptr inbounds %struct.arc* %104, i64 %105
  store %struct.arc* %106, %struct.arc** %arc, align 8
  br label %107

; <label>:107                                     ; preds = %164, %103
  %108 = load %struct.arc** %arc, align 8
  %109 = load %struct.arc** %4, align 8
  %110 = icmp ult %struct.arc* %108, %109
  br i1 %110, label %111, label %168

; <label>:111                                     ; preds = %107
  %112 = load %struct.arc** %arc, align 8
  %113 = getelementptr inbounds %struct.arc* %112, i32 0, i32 3
  %114 = load i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %163

; <label>:116                                     ; preds = %111
  %117 = load %struct.arc** %arc, align 8
  %118 = getelementptr inbounds %struct.arc* %117, i32 0, i32 0
  %119 = load i64* %118, align 8
  %120 = load %struct.arc** %arc, align 8
  %121 = getelementptr inbounds %struct.arc* %120, i32 0, i32 1
  %122 = load %struct.node** %121, align 8
  %123 = getelementptr inbounds %struct.node* %122, i32 0, i32 0
  %124 = load i64* %123, align 8
  %125 = sub nsw i64 %119, %124
  %126 = load %struct.arc** %arc, align 8
  %127 = getelementptr inbounds %struct.arc* %126, i32 0, i32 2
  %128 = load %struct.node** %127, align 8
  %129 = getelementptr inbounds %struct.node* %128, i32 0, i32 0
  %130 = load i64* %129, align 8
  %131 = add nsw i64 %125, %130
  store i64 %131, i64* %red_cost, align 8
  %132 = load %struct.arc** %arc, align 8
  %133 = load i64* %red_cost, align 8
  %134 = call i32 @bea_is_dual_infeasible(%struct.arc* %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %162

; <label>:136                                     ; preds = %116
  %137 = load i64* @basket_size, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* @basket_size, align 8
  %139 = load %struct.arc** %arc, align 8
  %140 = load i64* @basket_size, align 8
  %141 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %140
  %142 = load %struct.basket** %141, align 8
  %143 = getelementptr inbounds %struct.basket* %142, i32 0, i32 0
  store %struct.arc* %139, %struct.arc** %143, align 8
  %144 = load i64* %red_cost, align 8
  %145 = load i64* @basket_size, align 8
  %146 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %145
  %147 = load %struct.basket** %146, align 8
  %148 = getelementptr inbounds %struct.basket* %147, i32 0, i32 1
  store i64 %144, i64* %148, align 8
  %149 = load i64* %red_cost, align 8
  %150 = icmp sge i64 %149, 0
  br i1 %150, label %151, label %153

; <label>:151                                     ; preds = %136
  %152 = load i64* %red_cost, align 8
  br label %156

; <label>:153                                     ; preds = %136
  %154 = load i64* %red_cost, align 8
  %155 = sub nsw i64 0, %154
  br label %156

; <label>:156                                     ; preds = %153, %151
  %157 = phi i64 [ %152, %151 ], [ %155, %153 ]
  %158 = load i64* @basket_size, align 8
  %159 = getelementptr inbounds [351 x %struct.basket*]* @perm, i32 0, i64 %158
  %160 = load %struct.basket** %159, align 8
  %161 = getelementptr inbounds %struct.basket* %160, i32 0, i32 2
  store i64 %157, i64* %161, align 8
  br label %162

; <label>:162                                     ; preds = %156, %116
  br label %163

; <label>:163                                     ; preds = %162, %111
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i64* @nr_group, align 8
  %166 = load %struct.arc** %arc, align 8
  %167 = getelementptr inbounds %struct.arc* %166, i64 %165
  store %struct.arc* %167, %struct.arc** %arc, align 8
  br label %107

; <label>:168                                     ; preds = %107
  %169 = load i64* @group_pos, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* @group_pos, align 8
  %171 = load i64* @nr_group, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

; <label>:173                                     ; preds = %168
  store i64 0, i64* @group_pos, align 8
  br label %174

; <label>:174                                     ; preds = %173, %168
  %175 = load i64* @basket_size, align 8
  %176 = icmp slt i64 %175, 50
  br i1 %176, label %177, label %182

; <label>:177                                     ; preds = %174
  %178 = load i64* @group_pos, align 8
  %179 = load i64* %old_group_pos, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %177
  br label %103

; <label>:182                                     ; preds = %177, %174
  %183 = load i64* @basket_size, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %187

; <label>:185                                     ; preds = %182
  store i64 1, i64* @initialize, align 8
  %186 = load i64** %5, align 8
  store i64 0, i64* %186, align 8
  store %struct.arc* null, %struct.arc** %1
  br label %196

; <label>:187                                     ; preds = %182
  %188 = load i64* @basket_size, align 8
  call void @sort_basket(i64 1, i64 %188)
  %189 = load %struct.basket** getelementptr inbounds ([351 x %struct.basket*]* @perm, i32 0, i64 1), align 8
  %190 = getelementptr inbounds %struct.basket* %189, i32 0, i32 1
  %191 = load i64* %190, align 8
  %192 = load i64** %5, align 8
  store i64 %191, i64* %192, align 8
  %193 = load %struct.basket** getelementptr inbounds ([351 x %struct.basket*]* @perm, i32 0, i64 1), align 8
  %194 = getelementptr inbounds %struct.basket* %193, i32 0, i32 0
  %195 = load %struct.arc** %194, align 8
  store %struct.arc* %195, %struct.arc** %1
  br label %196

; <label>:196                                     ; preds = %187, %185
  %197 = load %struct.arc** %1
  ret %struct.arc* %197
}

; Function Attrs: nounwind uwtable
define %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node**, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %1, align 8
  store i64* %xchange, i64** %2, align 8
  store %struct.node* %iplus, %struct.node** %3, align 8
  store %struct.node* %jplus, %struct.node** %4, align 8
  store %struct.node** %w, %struct.node*** %5, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %6

; <label>:6                                       ; preds = %116, %0
  %7 = load %struct.node** %3, align 8
  %8 = load %struct.node** %4, align 8
  %9 = icmp ne %struct.node* %7, %8
  br i1 %9, label %10, label %117

; <label>:10                                      ; preds = %6
  %11 = load %struct.node** %3, align 8
  %12 = getelementptr inbounds %struct.node* %11, i32 0, i32 11
  %13 = load i64* %12, align 8
  %14 = load %struct.node** %4, align 8
  %15 = getelementptr inbounds %struct.node* %14, i32 0, i32 11
  %16 = load i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %67

; <label>:18                                      ; preds = %10
  %19 = load %struct.node** %3, align 8
  %20 = getelementptr inbounds %struct.node* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

; <label>:23                                      ; preds = %18
  %24 = load i64** %1, align 8
  %25 = load i64* %24, align 8
  %26 = load %struct.node** %3, align 8
  %27 = getelementptr inbounds %struct.node* %26, i32 0, i32 10
  %28 = load i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %23
  %31 = load %struct.node** %3, align 8
  store %struct.node* %31, %struct.node** %iminus, align 8
  %32 = load %struct.node** %3, align 8
  %33 = getelementptr inbounds %struct.node* %32, i32 0, i32 10
  %34 = load i64* %33, align 8
  %35 = load i64** %1, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64** %2, align 8
  store i64 0, i64* %36, align 8
  br label %37

; <label>:37                                      ; preds = %30, %23
  br label %63

; <label>:38                                      ; preds = %18
  %39 = load %struct.node** %3, align 8
  %40 = getelementptr inbounds %struct.node* %39, i32 0, i32 3
  %41 = load %struct.node** %40, align 8
  %42 = getelementptr inbounds %struct.node* %41, i32 0, i32 3
  %43 = load %struct.node** %42, align 8
  %44 = icmp ne %struct.node* %43, null
  br i1 %44, label %45, label %62

; <label>:45                                      ; preds = %38
  %46 = load i64** %1, align 8
  %47 = load i64* %46, align 8
  %48 = load %struct.node** %3, align 8
  %49 = getelementptr inbounds %struct.node* %48, i32 0, i32 10
  %50 = load i64* %49, align 8
  %51 = sub nsw i64 1, %50
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %45
  %54 = load %struct.node** %3, align 8
  store %struct.node* %54, %struct.node** %iminus, align 8
  %55 = load %struct.node** %3, align 8
  %56 = getelementptr inbounds %struct.node* %55, i32 0, i32 10
  %57 = load i64* %56, align 8
  %58 = sub nsw i64 1, %57
  %59 = load i64** %1, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64** %2, align 8
  store i64 0, i64* %60, align 8
  br label %61

; <label>:61                                      ; preds = %53, %45
  br label %62

; <label>:62                                      ; preds = %61, %38
  br label %63

; <label>:63                                      ; preds = %62, %37
  %64 = load %struct.node** %3, align 8
  %65 = getelementptr inbounds %struct.node* %64, i32 0, i32 3
  %66 = load %struct.node** %65, align 8
  store %struct.node* %66, %struct.node** %3, align 8
  br label %116

; <label>:67                                      ; preds = %10
  %68 = load %struct.node** %4, align 8
  %69 = getelementptr inbounds %struct.node* %68, i32 0, i32 1
  %70 = load i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

; <label>:72                                      ; preds = %67
  %73 = load i64** %1, align 8
  %74 = load i64* %73, align 8
  %75 = load %struct.node** %4, align 8
  %76 = getelementptr inbounds %struct.node* %75, i32 0, i32 10
  %77 = load i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %86

; <label>:79                                      ; preds = %72
  %80 = load %struct.node** %4, align 8
  store %struct.node* %80, %struct.node** %iminus, align 8
  %81 = load %struct.node** %4, align 8
  %82 = getelementptr inbounds %struct.node* %81, i32 0, i32 10
  %83 = load i64* %82, align 8
  %84 = load i64** %1, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64** %2, align 8
  store i64 1, i64* %85, align 8
  br label %86

; <label>:86                                      ; preds = %79, %72
  br label %112

; <label>:87                                      ; preds = %67
  %88 = load %struct.node** %4, align 8
  %89 = getelementptr inbounds %struct.node* %88, i32 0, i32 3
  %90 = load %struct.node** %89, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 3
  %92 = load %struct.node** %91, align 8
  %93 = icmp ne %struct.node* %92, null
  br i1 %93, label %94, label %111

; <label>:94                                      ; preds = %87
  %95 = load i64** %1, align 8
  %96 = load i64* %95, align 8
  %97 = load %struct.node** %4, align 8
  %98 = getelementptr inbounds %struct.node* %97, i32 0, i32 10
  %99 = load i64* %98, align 8
  %100 = sub nsw i64 1, %99
  %101 = icmp sge i64 %96, %100
  br i1 %101, label %102, label %110

; <label>:102                                     ; preds = %94
  %103 = load %struct.node** %4, align 8
  store %struct.node* %103, %struct.node** %iminus, align 8
  %104 = load %struct.node** %4, align 8
  %105 = getelementptr inbounds %struct.node* %104, i32 0, i32 10
  %106 = load i64* %105, align 8
  %107 = sub nsw i64 1, %106
  %108 = load i64** %1, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i64** %2, align 8
  store i64 1, i64* %109, align 8
  br label %110

; <label>:110                                     ; preds = %102, %94
  br label %111

; <label>:111                                     ; preds = %110, %87
  br label %112

; <label>:112                                     ; preds = %111, %86
  %113 = load %struct.node** %4, align 8
  %114 = getelementptr inbounds %struct.node* %113, i32 0, i32 3
  %115 = load %struct.node** %114, align 8
  store %struct.node* %115, %struct.node** %4, align 8
  br label %116

; <label>:116                                     ; preds = %112, %63
  br label %6

; <label>:117                                     ; preds = %6
  %118 = load %struct.node** %3, align 8
  %119 = load %struct.node*** %5, align 8
  store %struct.node* %118, %struct.node** %119, align 8
  %120 = load %struct.node** %iminus, align 8
  ret %struct.node* %120
}

; Function Attrs: nounwind uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  store %struct.node* %iplus, %struct.node** %1, align 8
  store %struct.node* %jplus, %struct.node** %2, align 8
  store %struct.node* %w, %struct.node** %3, align 8
  br label %4

; <label>:4                                       ; preds = %20, %0
  %5 = load %struct.node** %1, align 8
  %6 = load %struct.node** %3, align 8
  %7 = icmp ne %struct.node* %5, %6
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %4
  %9 = load %struct.node** %1, align 8
  %10 = getelementptr inbounds %struct.node* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %8
  %14 = load %struct.node** %1, align 8
  %15 = getelementptr inbounds %struct.node* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load %struct.node** %1, align 8
  %18 = getelementptr inbounds %struct.node* %17, i32 0, i32 10
  store i64 1, i64* %18, align 8
  br label %19

; <label>:19                                      ; preds = %16, %13
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load %struct.node** %1, align 8
  %22 = getelementptr inbounds %struct.node* %21, i32 0, i32 3
  %23 = load %struct.node** %22, align 8
  store %struct.node* %23, %struct.node** %1, align 8
  br label %4

; <label>:24                                      ; preds = %4
  br label %25

; <label>:25                                      ; preds = %41, %24
  %26 = load %struct.node** %2, align 8
  %27 = load %struct.node** %3, align 8
  %28 = icmp ne %struct.node* %26, %27
  br i1 %28, label %29, label %45

; <label>:29                                      ; preds = %25
  %30 = load %struct.node** %2, align 8
  %31 = getelementptr inbounds %struct.node* %30, i32 0, i32 1
  %32 = load i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %29
  %35 = load %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node* %35, i32 0, i32 10
  store i64 1, i64* %36, align 8
  br label %40

; <label>:37                                      ; preds = %29
  %38 = load %struct.node** %2, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  br label %40

; <label>:40                                      ; preds = %37, %34
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load %struct.node** %2, align 8
  %43 = getelementptr inbounds %struct.node* %42, i32 0, i32 3
  %44 = load %struct.node** %43, align 8
  store %struct.node* %44, %struct.node** %2, align 8
  br label %25

; <label>:45                                      ; preds = %25
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %delta = alloca i64, align 8
  %new_flow = alloca i64, align 8
  %opt = alloca i64, align 8
  %xchange = alloca i64, align 8
  %new_orientation = alloca i64, align 8
  %iplus = alloca %struct.node*, align 8
  %jplus = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %jminus = alloca %struct.node*, align 8
  %w = alloca %struct.node*, align 8
  %bea = alloca %struct.arc*, align 8
  %bla = alloca %struct.arc*, align 8
  %arcs = alloca %struct.arc*, align 8
  %stop_arcs = alloca %struct.arc*, align 8
  %temp = alloca %struct.node*, align 8
  %m = alloca i64, align 8
  %new_set = alloca i64, align 8
  %red_cost_of_bea = alloca i64, align 8
  %iterations = alloca i64*, align 8
  %bound_exchanges = alloca i64*, align 8
  %checksum = alloca i64*, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  store i64 0, i64* %opt, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 23
  %4 = load %struct.arc** %3, align 8
  store %struct.arc* %4, %struct.arc** %arcs, align 8
  %5 = load %struct.network** %1, align 8
  %6 = getelementptr inbounds %struct.network* %5, i32 0, i32 24
  %7 = load %struct.arc** %6, align 8
  store %struct.arc* %7, %struct.arc** %stop_arcs, align 8
  %8 = load %struct.network** %1, align 8
  %9 = getelementptr inbounds %struct.network* %8, i32 0, i32 5
  %10 = load i64* %9, align 8
  store i64 %10, i64* %m, align 8
  %11 = load %struct.network** %1, align 8
  %12 = getelementptr inbounds %struct.network* %11, i32 0, i32 27
  store i64* %12, i64** %iterations, align 8
  %13 = load %struct.network** %1, align 8
  %14 = getelementptr inbounds %struct.network* %13, i32 0, i32 28
  store i64* %14, i64** %bound_exchanges, align 8
  %15 = load %struct.network** %1, align 8
  %16 = getelementptr inbounds %struct.network* %15, i32 0, i32 29
  store i64* %16, i64** %checksum, align 8
  br label %17

; <label>:17                                      ; preds = %152, %0
  %18 = load i64* %opt, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %153

; <label>:21                                      ; preds = %17
  %22 = load i64* %m, align 8
  %23 = load %struct.arc** %arcs, align 8
  %24 = load %struct.arc** %stop_arcs, align 8
  %25 = call %struct.arc* @primal_bea_mpp(i64 %22, %struct.arc* %23, %struct.arc* %24, i64* %red_cost_of_bea)
  store %struct.arc* %25, %struct.arc** %bea, align 8
  %26 = icmp ne %struct.arc* %25, null
  br i1 %26, label %27, label %151

; <label>:27                                      ; preds = %21
  %28 = load i64** %iterations, align 8
  %29 = load i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load i64* %red_cost_of_bea, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %27
  %34 = load %struct.arc** %bea, align 8
  %35 = getelementptr inbounds %struct.arc* %34, i32 0, i32 2
  %36 = load %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %iplus, align 8
  %37 = load %struct.arc** %bea, align 8
  %38 = getelementptr inbounds %struct.arc* %37, i32 0, i32 1
  %39 = load %struct.node** %38, align 8
  store %struct.node* %39, %struct.node** %jplus, align 8
  br label %47

; <label>:40                                      ; preds = %27
  %41 = load %struct.arc** %bea, align 8
  %42 = getelementptr inbounds %struct.arc* %41, i32 0, i32 1
  %43 = load %struct.node** %42, align 8
  store %struct.node* %43, %struct.node** %iplus, align 8
  %44 = load %struct.arc** %bea, align 8
  %45 = getelementptr inbounds %struct.arc* %44, i32 0, i32 2
  %46 = load %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %jplus, align 8
  br label %47

; <label>:47                                      ; preds = %40, %33
  store i64 1, i64* %delta, align 8
  %48 = load %struct.node** %iplus, align 8
  %49 = load %struct.node** %jplus, align 8
  %50 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %48, %struct.node* %49, %struct.node** %w)
  store %struct.node* %50, %struct.node** %iminus, align 8
  %51 = load %struct.node** %iminus, align 8
  %52 = icmp ne %struct.node* %51, null
  br i1 %52, label %75, label %53

; <label>:53                                      ; preds = %47
  %54 = load i64** %bound_exchanges, align 8
  %55 = load i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.arc** %bea, align 8
  %58 = getelementptr inbounds %struct.arc* %57, i32 0, i32 3
  %59 = load i32* %58, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %53
  %62 = load %struct.arc** %bea, align 8
  %63 = getelementptr inbounds %struct.arc* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  br label %67

; <label>:64                                      ; preds = %53
  %65 = load %struct.arc** %bea, align 8
  %66 = getelementptr inbounds %struct.arc* %65, i32 0, i32 3
  store i32 2, i32* %66, align 4
  br label %67

; <label>:67                                      ; preds = %64, %61
  %68 = load i64* %delta, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

; <label>:70                                      ; preds = %67
  %71 = load %struct.node** %iplus, align 8
  %72 = load %struct.node** %jplus, align 8
  %73 = load %struct.node** %w, align 8
  call void @primal_update_flow(%struct.node* %71, %struct.node* %72, %struct.node* %73)
  br label %74

; <label>:74                                      ; preds = %70, %67
  br label %150

; <label>:75                                      ; preds = %47
  %76 = load i64* %xchange, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %75
  %79 = load %struct.node** %jplus, align 8
  store %struct.node* %79, %struct.node** %temp, align 8
  %80 = load %struct.node** %iplus, align 8
  store %struct.node* %80, %struct.node** %jplus, align 8
  %81 = load %struct.node** %temp, align 8
  store %struct.node* %81, %struct.node** %iplus, align 8
  br label %82

; <label>:82                                      ; preds = %78, %75
  %83 = load %struct.node** %iminus, align 8
  %84 = getelementptr inbounds %struct.node* %83, i32 0, i32 3
  %85 = load %struct.node** %84, align 8
  store %struct.node* %85, %struct.node** %jminus, align 8
  %86 = load %struct.node** %iminus, align 8
  %87 = getelementptr inbounds %struct.node* %86, i32 0, i32 6
  %88 = load %struct.arc** %87, align 8
  store %struct.arc* %88, %struct.arc** %bla, align 8
  %89 = load i64* %xchange, align 8
  %90 = load %struct.node** %iminus, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 1
  %92 = load i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ne i64 %89, %93
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %82
  store i64 1, i64* %new_set, align 8
  br label %97

; <label>:96                                      ; preds = %82
  store i64 2, i64* %new_set, align 8
  br label %97

; <label>:97                                      ; preds = %96, %95
  %98 = load i64* %red_cost_of_bea, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %97
  %101 = load i64* %delta, align 8
  %102 = sub nsw i64 1, %101
  store i64 %102, i64* %new_flow, align 8
  br label %105

; <label>:103                                     ; preds = %97
  %104 = load i64* %delta, align 8
  store i64 %104, i64* %new_flow, align 8
  br label %105

; <label>:105                                     ; preds = %103, %100
  %106 = load %struct.arc** %bea, align 8
  %107 = getelementptr inbounds %struct.arc* %106, i32 0, i32 1
  %108 = load %struct.node** %107, align 8
  %109 = load %struct.node** %iplus, align 8
  %110 = icmp eq %struct.node* %108, %109
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %105
  store i64 1, i64* %new_orientation, align 8
  br label %113

; <label>:112                                     ; preds = %105
  store i64 0, i64* %new_orientation, align 8
  br label %113

; <label>:113                                     ; preds = %112, %111
  %114 = load i64* %xchange, align 8
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = load i64* %new_orientation, align 8
  %120 = load i64* %delta, align 8
  %121 = load i64* %new_flow, align 8
  %122 = load %struct.node** %iplus, align 8
  %123 = load %struct.node** %jplus, align 8
  %124 = load %struct.node** %iminus, align 8
  %125 = load %struct.node** %jminus, align 8
  %126 = load %struct.node** %w, align 8
  %127 = load %struct.arc** %bea, align 8
  %128 = load i64* %red_cost_of_bea, align 8
  %129 = load %struct.network** %1, align 8
  %130 = getelementptr inbounds %struct.network* %129, i32 0, i32 16
  %131 = load i64* %130, align 8
  call void @update_tree(i64 %118, i64 %119, i64 %120, i64 %121, %struct.node* %122, %struct.node* %123, %struct.node* %124, %struct.node* %125, %struct.node* %126, %struct.arc* %127, i64 %128, i64 %131)
  %132 = load %struct.arc** %bea, align 8
  %133 = getelementptr inbounds %struct.arc* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load i64* %new_set, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.arc** %bla, align 8
  %137 = getelementptr inbounds %struct.arc* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i64** %iterations, align 8
  %139 = load i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = srem i64 %140, 200
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %149, label %143

; <label>:143                                     ; preds = %113
  %144 = load %struct.network** %1, align 8
  %145 = call i64 @refresh_potential(%struct.network* %144)
  %146 = load i64** %checksum, align 8
  %147 = load i64* %146, align 8
  %148 = add nsw i64 %147, %145
  store i64 %148, i64* %146, align 8
  br label %149

; <label>:149                                     ; preds = %143, %113
  br label %150

; <label>:150                                     ; preds = %149, %74
  br label %152

; <label>:151                                     ; preds = %21
  store i64 1, i64* %opt, align 8
  br label %152

; <label>:152                                     ; preds = %151, %150
  br label %17

; <label>:153                                     ; preds = %17
  %154 = load %struct.network** %1, align 8
  %155 = call i64 @refresh_potential(%struct.network* %154)
  %156 = load i64** %checksum, align 8
  %157 = load i64* %156, align 8
  %158 = add nsw i64 %157, %155
  store i64 %158, i64* %156, align 8
  %159 = load %struct.network** %1, align 8
  %160 = call i64 @primal_feasible(%struct.network* %159)
  %161 = load %struct.network** %1, align 8
  %162 = call i64 @dual_feasible(%struct.network* %161)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @primal_start_artificial(%struct.network* %net) #0 {
  %1 = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %1, align 8
  %2 = load %struct.network** %1, align 8
  %3 = getelementptr inbounds %struct.network* %2, i32 0, i32 21
  %4 = load %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** %node, align 8
  store %struct.node* %4, %struct.node** %root, align 8
  %5 = load %struct.node** %node, align 8
  %6 = getelementptr inbounds %struct.node* %5, i32 1
  store %struct.node* %6, %struct.node** %node, align 8
  %7 = load %struct.node** %root, align 8
  %8 = getelementptr inbounds %struct.node* %7, i32 0, i32 6
  store %struct.arc* null, %struct.arc** %8, align 8
  %9 = load %struct.node** %root, align 8
  %10 = getelementptr inbounds %struct.node* %9, i32 0, i32 3
  store %struct.node* null, %struct.node** %10, align 8
  %11 = load %struct.node** %node, align 8
  %12 = load %struct.node** %root, align 8
  %13 = getelementptr inbounds %struct.node* %12, i32 0, i32 2
  store %struct.node* %11, %struct.node** %13, align 8
  %14 = load %struct.node** %root, align 8
  %15 = getelementptr inbounds %struct.node* %14, i32 0, i32 4
  store %struct.node* null, %struct.node** %15, align 8
  %16 = load %struct.node** %root, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 0, i32 5
  store %struct.node* null, %struct.node** %17, align 8
  %18 = load %struct.network** %1, align 8
  %19 = getelementptr inbounds %struct.network* %18, i32 0, i32 2
  %20 = load i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.node** %root, align 8
  %23 = getelementptr inbounds %struct.node* %22, i32 0, i32 11
  store i64 %21, i64* %23, align 8
  %24 = load %struct.node** %root, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.node** %root, align 8
  %27 = getelementptr inbounds %struct.node* %26, i32 0, i32 0
  store i64 -100000000, i64* %27, align 8
  %28 = load %struct.node** %root, align 8
  %29 = getelementptr inbounds %struct.node* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load %struct.network** %1, align 8
  %31 = getelementptr inbounds %struct.network* %30, i32 0, i32 24
  %32 = load %struct.arc** %31, align 8
  %33 = bitcast %struct.arc* %32 to i8*
  store i8* %33, i8** %stop, align 8
  %34 = load %struct.network** %1, align 8
  %35 = getelementptr inbounds %struct.network* %34, i32 0, i32 23
  %36 = load %struct.arc** %35, align 8
  store %struct.arc* %36, %struct.arc** %arc, align 8
  br label %37

; <label>:37                                      ; preds = %51, %0
  %38 = load %struct.arc** %arc, align 8
  %39 = load i8** %stop, align 8
  %40 = bitcast i8* %39 to %struct.arc*
  %41 = icmp ne %struct.arc* %38, %40
  br i1 %41, label %42, label %54

; <label>:42                                      ; preds = %37
  %43 = load %struct.arc** %arc, align 8
  %44 = getelementptr inbounds %struct.arc* %43, i32 0, i32 3
  %45 = load i32* %44, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %42
  %48 = load %struct.arc** %arc, align 8
  %49 = getelementptr inbounds %struct.arc* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  br label %50

; <label>:50                                      ; preds = %47, %42
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load %struct.arc** %arc, align 8
  %53 = getelementptr inbounds %struct.arc* %52, i32 1
  store %struct.arc* %53, %struct.arc** %arc, align 8
  br label %37

; <label>:54                                      ; preds = %37
  %55 = load %struct.network** %1, align 8
  %56 = getelementptr inbounds %struct.network* %55, i32 0, i32 25
  %57 = load %struct.arc** %56, align 8
  store %struct.arc* %57, %struct.arc** %arc, align 8
  %58 = load %struct.network** %1, align 8
  %59 = getelementptr inbounds %struct.network* %58, i32 0, i32 22
  %60 = load %struct.node** %59, align 8
  %61 = bitcast %struct.node* %60 to i8*
  store i8* %61, i8** %stop, align 8
  br label %62

; <label>:62                                      ; preds = %102, %54
  %63 = load %struct.node** %node, align 8
  %64 = load i8** %stop, align 8
  %65 = bitcast i8* %64 to %struct.node*
  %66 = icmp ne %struct.node* %63, %65
  br i1 %66, label %67, label %107

; <label>:67                                      ; preds = %62
  %68 = load %struct.arc** %arc, align 8
  %69 = load %struct.node** %node, align 8
  %70 = getelementptr inbounds %struct.node* %69, i32 0, i32 6
  store %struct.arc* %68, %struct.arc** %70, align 8
  %71 = load %struct.node** %root, align 8
  %72 = load %struct.node** %node, align 8
  %73 = getelementptr inbounds %struct.node* %72, i32 0, i32 3
  store %struct.node* %71, %struct.node** %73, align 8
  %74 = load %struct.node** %node, align 8
  %75 = getelementptr inbounds %struct.node* %74, i32 0, i32 2
  store %struct.node* null, %struct.node** %75, align 8
  %76 = load %struct.node** %node, align 8
  %77 = getelementptr inbounds %struct.node* %76, i64 1
  %78 = load %struct.node** %node, align 8
  %79 = getelementptr inbounds %struct.node* %78, i32 0, i32 4
  store %struct.node* %77, %struct.node** %79, align 8
  %80 = load %struct.node** %node, align 8
  %81 = getelementptr inbounds %struct.node* %80, i64 -1
  %82 = load %struct.node** %node, align 8
  %83 = getelementptr inbounds %struct.node* %82, i32 0, i32 5
  store %struct.node* %81, %struct.node** %83, align 8
  %84 = load %struct.node** %node, align 8
  %85 = getelementptr inbounds %struct.node* %84, i32 0, i32 11
  store i64 1, i64* %85, align 8
  %86 = load %struct.arc** %arc, align 8
  %87 = getelementptr inbounds %struct.arc* %86, i32 0, i32 0
  store i64 100000000, i64* %87, align 8
  %88 = load %struct.arc** %arc, align 8
  %89 = getelementptr inbounds %struct.arc* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  %90 = load %struct.node** %node, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.node** %node, align 8
  %93 = getelementptr inbounds %struct.node* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.node** %node, align 8
  %95 = load %struct.arc** %arc, align 8
  %96 = getelementptr inbounds %struct.arc* %95, i32 0, i32 1
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.node** %root, align 8
  %98 = load %struct.arc** %arc, align 8
  %99 = getelementptr inbounds %struct.arc* %98, i32 0, i32 2
  store %struct.node* %97, %struct.node** %99, align 8
  %100 = load %struct.node** %node, align 8
  %101 = getelementptr inbounds %struct.node* %100, i32 0, i32 10
  store i64 0, i64* %101, align 8
  br label %102

; <label>:102                                     ; preds = %67
  %103 = load %struct.arc** %arc, align 8
  %104 = getelementptr inbounds %struct.arc* %103, i32 1
  store %struct.arc* %104, %struct.arc** %arc, align 8
  %105 = load %struct.node** %node, align 8
  %106 = getelementptr inbounds %struct.node* %105, i32 1
  store %struct.node* %106, %struct.node** %node, align 8
  br label %62

; <label>:107                                     ; preds = %62
  %108 = load %struct.node** %node, align 8
  %109 = getelementptr inbounds %struct.node* %108, i32 -1
  store %struct.node* %109, %struct.node** %node, align 8
  %110 = load %struct.node** %root, align 8
  %111 = getelementptr inbounds %struct.node* %110, i32 1
  store %struct.node* %111, %struct.node** %root, align 8
  %112 = load %struct.node** %node, align 8
  %113 = getelementptr inbounds %struct.node* %112, i32 0, i32 4
  store %struct.node* null, %struct.node** %113, align 8
  %114 = load %struct.node** %root, align 8
  %115 = getelementptr inbounds %struct.node* %114, i32 0, i32 5
  store %struct.node* null, %struct.node** %115, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @read_min(%struct.network* %net) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.network*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  %i = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.network* %net, %struct.network** %2, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  %3 = load %struct.network** %2, align 8
  %4 = getelementptr inbounds %struct.network* %3, i32 0, i32 0
  %5 = getelementptr inbounds [200 x i8]* %4, i32 0, i32 0
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str37, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %in, align 8
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i64 -1, i64* %1
  br label %529

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %11 = load %struct._IO_FILE** %in, align 8
  %12 = call i8* @fgets(i8* %10, i32 200, %struct._IO_FILE* %11)
  %13 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str138, i32 0, i32 0), i64* %t, i64* %h) #4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %9
  store i64 -1, i64* %1
  br label %529

; <label>:17                                      ; preds = %9
  %18 = load i64* %t, align 8
  %19 = load %struct.network** %2, align 8
  %20 = getelementptr inbounds %struct.network* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load i64* %h, align 8
  %22 = load %struct.network** %2, align 8
  %23 = getelementptr inbounds %struct.network* %22, i32 0, i32 6
  store i64 %21, i64* %23, align 8
  %24 = load i64* %t, align 8
  %25 = load i64* %t, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 1
  %28 = load %struct.network** %2, align 8
  %29 = getelementptr inbounds %struct.network* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i64* %t, align 8
  %31 = load i64* %t, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64* %t, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64* %h, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.network** %2, align 8
  %38 = getelementptr inbounds %struct.network* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.network** %2, align 8
  %40 = getelementptr inbounds %struct.network* %39, i32 0, i32 3
  %41 = load i64* %40, align 8
  %42 = icmp sle i64 %41, 15000
  br i1 %42, label %43, label %51

; <label>:43                                      ; preds = %17
  %44 = load %struct.network** %2, align 8
  %45 = getelementptr inbounds %struct.network* %44, i32 0, i32 5
  %46 = load i64* %45, align 8
  %47 = load %struct.network** %2, align 8
  %48 = getelementptr inbounds %struct.network* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.network** %2, align 8
  %50 = getelementptr inbounds %struct.network* %49, i32 0, i32 9
  store i64 3000000, i64* %50, align 8
  br label %56

; <label>:51                                      ; preds = %17
  %52 = load %struct.network** %2, align 8
  %53 = getelementptr inbounds %struct.network* %52, i32 0, i32 4
  store i64 27328512, i64* %53, align 8
  %54 = load %struct.network** %2, align 8
  %55 = getelementptr inbounds %struct.network* %54, i32 0, i32 9
  store i64 28900000, i64* %55, align 8
  br label %56

; <label>:56                                      ; preds = %51, %43
  %57 = load %struct.network** %2, align 8
  %58 = getelementptr inbounds %struct.network* %57, i32 0, i32 4
  %59 = load i64* %58, align 8
  %60 = load %struct.network** %2, align 8
  %61 = getelementptr inbounds %struct.network* %60, i32 0, i32 5
  %62 = load i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.network** %2, align 8
  %65 = getelementptr inbounds %struct.network* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load %struct.network** %2, align 8
  %67 = getelementptr inbounds %struct.network* %66, i32 0, i32 9
  %68 = load i64* %67, align 8
  %69 = icmp sge i64 %68, 3
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %56
  br label %73

; <label>:71                                      ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str340, i32 0, i32 0), i32 77, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.read_min, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  %74 = load %struct.network** %2, align 8
  %75 = getelementptr inbounds %struct.network* %74, i32 0, i32 2
  %76 = load i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = call noalias i8* @calloc(i64 %77, i64 104) #4
  %79 = bitcast i8* %78 to %struct.node*
  %80 = load %struct.network** %2, align 8
  %81 = getelementptr inbounds %struct.network* %80, i32 0, i32 21
  store %struct.node* %79, %struct.node** %81, align 8
  %82 = load %struct.network** %2, align 8
  %83 = getelementptr inbounds %struct.network* %82, i32 0, i32 2
  %84 = load i64* %83, align 8
  %85 = call noalias i8* @calloc(i64 %84, i64 64) #4
  %86 = bitcast i8* %85 to %struct.arc*
  %87 = load %struct.network** %2, align 8
  %88 = getelementptr inbounds %struct.network* %87, i32 0, i32 25
  store %struct.arc* %86, %struct.arc** %88, align 8
  %89 = load %struct.network** %2, align 8
  %90 = getelementptr inbounds %struct.network* %89, i32 0, i32 4
  %91 = load i64* %90, align 8
  %92 = call noalias i8* @calloc(i64 %91, i64 64) #4
  %93 = bitcast i8* %92 to %struct.arc*
  %94 = load %struct.network** %2, align 8
  %95 = getelementptr inbounds %struct.network* %94, i32 0, i32 23
  store %struct.arc* %93, %struct.arc** %95, align 8
  %96 = load %struct.network** %2, align 8
  %97 = getelementptr inbounds %struct.network* %96, i32 0, i32 21
  %98 = load %struct.node** %97, align 8
  %99 = icmp ne %struct.node* %98, null
  br i1 %99, label %100, label %110

; <label>:100                                     ; preds = %73
  %101 = load %struct.network** %2, align 8
  %102 = getelementptr inbounds %struct.network* %101, i32 0, i32 23
  %103 = load %struct.arc** %102, align 8
  %104 = icmp ne %struct.arc* %103, null
  br i1 %104, label %105, label %110

; <label>:105                                     ; preds = %100
  %106 = load %struct.network** %2, align 8
  %107 = getelementptr inbounds %struct.network* %106, i32 0, i32 25
  %108 = load %struct.arc** %107, align 8
  %109 = icmp ne %struct.arc* %108, null
  br i1 %109, label %114, label %110

; <label>:110                                     ; preds = %105, %100, %73
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str441, i32 0, i32 0))
  %112 = load %struct.network** %2, align 8
  %113 = call i64 @getfree(%struct.network* %112)
  store i64 -1, i64* %1
  br label %529

; <label>:114                                     ; preds = %105
  %115 = load %struct.network** %2, align 8
  %116 = getelementptr inbounds %struct.network* %115, i32 0, i32 21
  %117 = load %struct.node** %116, align 8
  %118 = load %struct.network** %2, align 8
  %119 = getelementptr inbounds %struct.network* %118, i32 0, i32 2
  %120 = load i64* %119, align 8
  %121 = getelementptr inbounds %struct.node* %117, i64 %120
  %122 = getelementptr inbounds %struct.node* %121, i64 1
  %123 = load %struct.network** %2, align 8
  %124 = getelementptr inbounds %struct.network* %123, i32 0, i32 22
  store %struct.node* %122, %struct.node** %124, align 8
  %125 = load %struct.network** %2, align 8
  %126 = getelementptr inbounds %struct.network* %125, i32 0, i32 23
  %127 = load %struct.arc** %126, align 8
  %128 = load %struct.network** %2, align 8
  %129 = getelementptr inbounds %struct.network* %128, i32 0, i32 5
  %130 = load i64* %129, align 8
  %131 = getelementptr inbounds %struct.arc* %127, i64 %130
  %132 = load %struct.network** %2, align 8
  %133 = getelementptr inbounds %struct.network* %132, i32 0, i32 24
  store %struct.arc* %131, %struct.arc** %133, align 8
  %134 = load %struct.network** %2, align 8
  %135 = getelementptr inbounds %struct.network* %134, i32 0, i32 25
  %136 = load %struct.arc** %135, align 8
  %137 = load %struct.network** %2, align 8
  %138 = getelementptr inbounds %struct.network* %137, i32 0, i32 2
  %139 = load i64* %138, align 8
  %140 = getelementptr inbounds %struct.arc* %136, i64 %139
  %141 = load %struct.network** %2, align 8
  %142 = getelementptr inbounds %struct.network* %141, i32 0, i32 26
  store %struct.arc* %140, %struct.arc** %142, align 8
  %143 = load %struct.network** %2, align 8
  %144 = getelementptr inbounds %struct.network* %143, i32 0, i32 21
  %145 = load %struct.node** %144, align 8
  store %struct.node* %145, %struct.node** %node, align 8
  %146 = load %struct.network** %2, align 8
  %147 = getelementptr inbounds %struct.network* %146, i32 0, i32 23
  %148 = load %struct.arc** %147, align 8
  store %struct.arc* %148, %struct.arc** %arc, align 8
  store i64 1, i64* %i, align 8
  br label %149

; <label>:149                                     ; preds = %361, %114
  %150 = load i64* %i, align 8
  %151 = load %struct.network** %2, align 8
  %152 = getelementptr inbounds %struct.network* %151, i32 0, i32 3
  %153 = load i64* %152, align 8
  %154 = icmp sle i64 %150, %153
  br i1 %154, label %155, label %364

; <label>:155                                     ; preds = %149
  %156 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %157 = load %struct._IO_FILE** %in, align 8
  %158 = call i8* @fgets(i8* %156, i32 200, %struct._IO_FILE* %157)
  %159 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %160 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %159, i8* getelementptr inbounds ([8 x i8]* @.str138, i32 0, i32 0), i64* %t, i64* %h) #4
  %161 = icmp ne i32 %160, 2
  br i1 %161, label %166, label %162

; <label>:162                                     ; preds = %155
  %163 = load i64* %t, align 8
  %164 = load i64* %h, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %162, %155
  store i64 -1, i64* %1
  br label %529

; <label>:167                                     ; preds = %162
  %168 = load i64* %i, align 8
  %169 = sub nsw i64 0, %168
  %170 = trunc i64 %169 to i32
  %171 = load i64* %i, align 8
  %172 = load %struct.node** %node, align 8
  %173 = getelementptr inbounds %struct.node* %172, i64 %171
  %174 = getelementptr inbounds %struct.node* %173, i32 0, i32 12
  store i32 %170, i32* %174, align 4
  %175 = load i64* %i, align 8
  %176 = load %struct.node** %node, align 8
  %177 = getelementptr inbounds %struct.node* %176, i64 %175
  %178 = getelementptr inbounds %struct.node* %177, i32 0, i32 10
  store i64 -1, i64* %178, align 8
  %179 = load i64* %i, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i64* %i, align 8
  %182 = load %struct.network** %2, align 8
  %183 = getelementptr inbounds %struct.network* %182, i32 0, i32 3
  %184 = load i64* %183, align 8
  %185 = add nsw i64 %181, %184
  %186 = load %struct.node** %node, align 8
  %187 = getelementptr inbounds %struct.node* %186, i64 %185
  %188 = getelementptr inbounds %struct.node* %187, i32 0, i32 12
  store i32 %180, i32* %188, align 4
  %189 = load i64* %i, align 8
  %190 = load %struct.network** %2, align 8
  %191 = getelementptr inbounds %struct.network* %190, i32 0, i32 3
  %192 = load i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = load %struct.node** %node, align 8
  %195 = getelementptr inbounds %struct.node* %194, i64 %193
  %196 = getelementptr inbounds %struct.node* %195, i32 0, i32 10
  store i64 1, i64* %196, align 8
  %197 = load i64* %t, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i64* %i, align 8
  %200 = load %struct.node** %node, align 8
  %201 = getelementptr inbounds %struct.node* %200, i64 %199
  %202 = getelementptr inbounds %struct.node* %201, i32 0, i32 13
  store i32 %198, i32* %202, align 4
  %203 = load i64* %h, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i64* %i, align 8
  %206 = load %struct.network** %2, align 8
  %207 = getelementptr inbounds %struct.network* %206, i32 0, i32 3
  %208 = load i64* %207, align 8
  %209 = add nsw i64 %205, %208
  %210 = load %struct.node** %node, align 8
  %211 = getelementptr inbounds %struct.node* %210, i64 %209
  %212 = getelementptr inbounds %struct.node* %211, i32 0, i32 13
  store i32 %204, i32* %212, align 4
  %213 = load %struct.network** %2, align 8
  %214 = getelementptr inbounds %struct.network* %213, i32 0, i32 2
  %215 = load i64* %214, align 8
  %216 = load %struct.node** %node, align 8
  %217 = getelementptr inbounds %struct.node* %216, i64 %215
  %218 = load %struct.arc** %arc, align 8
  %219 = getelementptr inbounds %struct.arc* %218, i32 0, i32 1
  store %struct.node* %217, %struct.node** %219, align 8
  %220 = load i64* %i, align 8
  %221 = load %struct.node** %node, align 8
  %222 = getelementptr inbounds %struct.node* %221, i64 %220
  %223 = load %struct.arc** %arc, align 8
  %224 = getelementptr inbounds %struct.arc* %223, i32 0, i32 2
  store %struct.node* %222, %struct.node** %224, align 8
  %225 = load %struct.network** %2, align 8
  %226 = getelementptr inbounds %struct.network* %225, i32 0, i32 18
  %227 = load i64* %226, align 8
  %228 = add nsw i64 %227, 15
  %229 = load %struct.arc** %arc, align 8
  %230 = getelementptr inbounds %struct.arc* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.arc** %arc, align 8
  %232 = getelementptr inbounds %struct.arc* %231, i32 0, i32 7
  store i64 %228, i64* %232, align 8
  %233 = load %struct.arc** %arc, align 8
  %234 = getelementptr inbounds %struct.arc* %233, i32 0, i32 1
  %235 = load %struct.node** %234, align 8
  %236 = getelementptr inbounds %struct.node* %235, i32 0, i32 7
  %237 = load %struct.arc** %236, align 8
  %238 = load %struct.arc** %arc, align 8
  %239 = getelementptr inbounds %struct.arc* %238, i32 0, i32 4
  store %struct.arc* %237, %struct.arc** %239, align 8
  %240 = load %struct.arc** %arc, align 8
  %241 = load %struct.arc** %arc, align 8
  %242 = getelementptr inbounds %struct.arc* %241, i32 0, i32 1
  %243 = load %struct.node** %242, align 8
  %244 = getelementptr inbounds %struct.node* %243, i32 0, i32 7
  store %struct.arc* %240, %struct.arc** %244, align 8
  %245 = load %struct.arc** %arc, align 8
  %246 = getelementptr inbounds %struct.arc* %245, i32 0, i32 2
  %247 = load %struct.node** %246, align 8
  %248 = getelementptr inbounds %struct.node* %247, i32 0, i32 8
  %249 = load %struct.arc** %248, align 8
  %250 = load %struct.arc** %arc, align 8
  %251 = getelementptr inbounds %struct.arc* %250, i32 0, i32 5
  store %struct.arc* %249, %struct.arc** %251, align 8
  %252 = load %struct.arc** %arc, align 8
  %253 = load %struct.arc** %arc, align 8
  %254 = getelementptr inbounds %struct.arc* %253, i32 0, i32 2
  %255 = load %struct.node** %254, align 8
  %256 = getelementptr inbounds %struct.node* %255, i32 0, i32 8
  store %struct.arc* %252, %struct.arc** %256, align 8
  %257 = load %struct.arc** %arc, align 8
  %258 = getelementptr inbounds %struct.arc* %257, i32 1
  store %struct.arc* %258, %struct.arc** %arc, align 8
  %259 = load i64* %i, align 8
  %260 = load %struct.network** %2, align 8
  %261 = getelementptr inbounds %struct.network* %260, i32 0, i32 3
  %262 = load i64* %261, align 8
  %263 = add nsw i64 %259, %262
  %264 = load %struct.node** %node, align 8
  %265 = getelementptr inbounds %struct.node* %264, i64 %263
  %266 = load %struct.arc** %arc, align 8
  %267 = getelementptr inbounds %struct.arc* %266, i32 0, i32 1
  store %struct.node* %265, %struct.node** %267, align 8
  %268 = load %struct.network** %2, align 8
  %269 = getelementptr inbounds %struct.network* %268, i32 0, i32 2
  %270 = load i64* %269, align 8
  %271 = load %struct.node** %node, align 8
  %272 = getelementptr inbounds %struct.node* %271, i64 %270
  %273 = load %struct.arc** %arc, align 8
  %274 = getelementptr inbounds %struct.arc* %273, i32 0, i32 2
  store %struct.node* %272, %struct.node** %274, align 8
  %275 = load %struct.arc** %arc, align 8
  %276 = getelementptr inbounds %struct.arc* %275, i32 0, i32 0
  store i64 15, i64* %276, align 8
  %277 = load %struct.arc** %arc, align 8
  %278 = getelementptr inbounds %struct.arc* %277, i32 0, i32 7
  store i64 15, i64* %278, align 8
  %279 = load %struct.arc** %arc, align 8
  %280 = getelementptr inbounds %struct.arc* %279, i32 0, i32 1
  %281 = load %struct.node** %280, align 8
  %282 = getelementptr inbounds %struct.node* %281, i32 0, i32 7
  %283 = load %struct.arc** %282, align 8
  %284 = load %struct.arc** %arc, align 8
  %285 = getelementptr inbounds %struct.arc* %284, i32 0, i32 4
  store %struct.arc* %283, %struct.arc** %285, align 8
  %286 = load %struct.arc** %arc, align 8
  %287 = load %struct.arc** %arc, align 8
  %288 = getelementptr inbounds %struct.arc* %287, i32 0, i32 1
  %289 = load %struct.node** %288, align 8
  %290 = getelementptr inbounds %struct.node* %289, i32 0, i32 7
  store %struct.arc* %286, %struct.arc** %290, align 8
  %291 = load %struct.arc** %arc, align 8
  %292 = getelementptr inbounds %struct.arc* %291, i32 0, i32 2
  %293 = load %struct.node** %292, align 8
  %294 = getelementptr inbounds %struct.node* %293, i32 0, i32 8
  %295 = load %struct.arc** %294, align 8
  %296 = load %struct.arc** %arc, align 8
  %297 = getelementptr inbounds %struct.arc* %296, i32 0, i32 5
  store %struct.arc* %295, %struct.arc** %297, align 8
  %298 = load %struct.arc** %arc, align 8
  %299 = load %struct.arc** %arc, align 8
  %300 = getelementptr inbounds %struct.arc* %299, i32 0, i32 2
  %301 = load %struct.node** %300, align 8
  %302 = getelementptr inbounds %struct.node* %301, i32 0, i32 8
  store %struct.arc* %298, %struct.arc** %302, align 8
  %303 = load %struct.arc** %arc, align 8
  %304 = getelementptr inbounds %struct.arc* %303, i32 1
  store %struct.arc* %304, %struct.arc** %arc, align 8
  %305 = load i64* %i, align 8
  %306 = load %struct.node** %node, align 8
  %307 = getelementptr inbounds %struct.node* %306, i64 %305
  %308 = load %struct.arc** %arc, align 8
  %309 = getelementptr inbounds %struct.arc* %308, i32 0, i32 1
  store %struct.node* %307, %struct.node** %309, align 8
  %310 = load i64* %i, align 8
  %311 = load %struct.network** %2, align 8
  %312 = getelementptr inbounds %struct.network* %311, i32 0, i32 3
  %313 = load i64* %312, align 8
  %314 = add nsw i64 %310, %313
  %315 = load %struct.node** %node, align 8
  %316 = getelementptr inbounds %struct.node* %315, i64 %314
  %317 = load %struct.arc** %arc, align 8
  %318 = getelementptr inbounds %struct.arc* %317, i32 0, i32 2
  store %struct.node* %316, %struct.node** %318, align 8
  %319 = load %struct.network** %2, align 8
  %320 = getelementptr inbounds %struct.network* %319, i32 0, i32 18
  %321 = load i64* %320, align 8
  %322 = icmp sgt i64 %321, 10000000
  br i1 %322, label %323, label %327

; <label>:323                                     ; preds = %167
  %324 = load %struct.network** %2, align 8
  %325 = getelementptr inbounds %struct.network* %324, i32 0, i32 18
  %326 = load i64* %325, align 8
  br label %328

; <label>:327                                     ; preds = %167
  br label %328

; <label>:328                                     ; preds = %327, %323
  %329 = phi i64 [ %326, %323 ], [ 10000000, %327 ]
  %330 = mul nsw i64 2, %329
  %331 = load %struct.arc** %arc, align 8
  %332 = getelementptr inbounds %struct.arc* %331, i32 0, i32 0
  store i64 %330, i64* %332, align 8
  %333 = load %struct.arc** %arc, align 8
  %334 = getelementptr inbounds %struct.arc* %333, i32 0, i32 7
  store i64 %330, i64* %334, align 8
  %335 = load %struct.arc** %arc, align 8
  %336 = getelementptr inbounds %struct.arc* %335, i32 0, i32 1
  %337 = load %struct.node** %336, align 8
  %338 = getelementptr inbounds %struct.node* %337, i32 0, i32 7
  %339 = load %struct.arc** %338, align 8
  %340 = load %struct.arc** %arc, align 8
  %341 = getelementptr inbounds %struct.arc* %340, i32 0, i32 4
  store %struct.arc* %339, %struct.arc** %341, align 8
  %342 = load %struct.arc** %arc, align 8
  %343 = load %struct.arc** %arc, align 8
  %344 = getelementptr inbounds %struct.arc* %343, i32 0, i32 1
  %345 = load %struct.node** %344, align 8
  %346 = getelementptr inbounds %struct.node* %345, i32 0, i32 7
  store %struct.arc* %342, %struct.arc** %346, align 8
  %347 = load %struct.arc** %arc, align 8
  %348 = getelementptr inbounds %struct.arc* %347, i32 0, i32 2
  %349 = load %struct.node** %348, align 8
  %350 = getelementptr inbounds %struct.node* %349, i32 0, i32 8
  %351 = load %struct.arc** %350, align 8
  %352 = load %struct.arc** %arc, align 8
  %353 = getelementptr inbounds %struct.arc* %352, i32 0, i32 5
  store %struct.arc* %351, %struct.arc** %353, align 8
  %354 = load %struct.arc** %arc, align 8
  %355 = load %struct.arc** %arc, align 8
  %356 = getelementptr inbounds %struct.arc* %355, i32 0, i32 2
  %357 = load %struct.node** %356, align 8
  %358 = getelementptr inbounds %struct.node* %357, i32 0, i32 8
  store %struct.arc* %354, %struct.arc** %358, align 8
  %359 = load %struct.arc** %arc, align 8
  %360 = getelementptr inbounds %struct.arc* %359, i32 1
  store %struct.arc* %360, %struct.arc** %arc, align 8
  br label %361

; <label>:361                                     ; preds = %328
  %362 = load i64* %i, align 8
  %363 = add nsw i64 %362, 1
  store i64 %363, i64* %i, align 8
  br label %149

; <label>:364                                     ; preds = %149
  %365 = load i64* %i, align 8
  %366 = load %struct.network** %2, align 8
  %367 = getelementptr inbounds %struct.network* %366, i32 0, i32 3
  %368 = load i64* %367, align 8
  %369 = add nsw i64 %368, 1
  %370 = icmp ne i64 %365, %369
  br i1 %370, label %371, label %372

; <label>:371                                     ; preds = %364
  store i64 -1, i64* %1
  br label %529

; <label>:372                                     ; preds = %364
  store i64 0, i64* %i, align 8
  br label %373

; <label>:373                                     ; preds = %432, %372
  %374 = load i64* %i, align 8
  %375 = load %struct.network** %2, align 8
  %376 = getelementptr inbounds %struct.network* %375, i32 0, i32 6
  %377 = load i64* %376, align 8
  %378 = icmp slt i64 %374, %377
  br i1 %378, label %379, label %437

; <label>:379                                     ; preds = %373
  %380 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %381 = load %struct._IO_FILE** %in, align 8
  %382 = call i8* @fgets(i8* %380, i32 200, %struct._IO_FILE* %381)
  %383 = getelementptr inbounds [201 x i8]* %instring, i32 0, i32 0
  %384 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %383, i8* getelementptr inbounds ([12 x i8]* @.str542, i32 0, i32 0), i64* %t, i64* %h, i64* %c) #4
  %385 = icmp ne i32 %384, 3
  br i1 %385, label %386, label %387

; <label>:386                                     ; preds = %379
  store i64 -1, i64* %1
  br label %529

; <label>:387                                     ; preds = %379
  %388 = load i64* %t, align 8
  %389 = load %struct.network** %2, align 8
  %390 = getelementptr inbounds %struct.network* %389, i32 0, i32 3
  %391 = load i64* %390, align 8
  %392 = add nsw i64 %388, %391
  %393 = load %struct.node** %node, align 8
  %394 = getelementptr inbounds %struct.node* %393, i64 %392
  %395 = load %struct.arc** %arc, align 8
  %396 = getelementptr inbounds %struct.arc* %395, i32 0, i32 1
  store %struct.node* %394, %struct.node** %396, align 8
  %397 = load i64* %h, align 8
  %398 = load %struct.node** %node, align 8
  %399 = getelementptr inbounds %struct.node* %398, i64 %397
  %400 = load %struct.arc** %arc, align 8
  %401 = getelementptr inbounds %struct.arc* %400, i32 0, i32 2
  store %struct.node* %399, %struct.node** %401, align 8
  %402 = load i64* %c, align 8
  %403 = load %struct.arc** %arc, align 8
  %404 = getelementptr inbounds %struct.arc* %403, i32 0, i32 7
  store i64 %402, i64* %404, align 8
  %405 = load i64* %c, align 8
  %406 = load %struct.arc** %arc, align 8
  %407 = getelementptr inbounds %struct.arc* %406, i32 0, i32 0
  store i64 %405, i64* %407, align 8
  %408 = load %struct.arc** %arc, align 8
  %409 = getelementptr inbounds %struct.arc* %408, i32 0, i32 1
  %410 = load %struct.node** %409, align 8
  %411 = getelementptr inbounds %struct.node* %410, i32 0, i32 7
  %412 = load %struct.arc** %411, align 8
  %413 = load %struct.arc** %arc, align 8
  %414 = getelementptr inbounds %struct.arc* %413, i32 0, i32 4
  store %struct.arc* %412, %struct.arc** %414, align 8
  %415 = load %struct.arc** %arc, align 8
  %416 = load %struct.arc** %arc, align 8
  %417 = getelementptr inbounds %struct.arc* %416, i32 0, i32 1
  %418 = load %struct.node** %417, align 8
  %419 = getelementptr inbounds %struct.node* %418, i32 0, i32 7
  store %struct.arc* %415, %struct.arc** %419, align 8
  %420 = load %struct.arc** %arc, align 8
  %421 = getelementptr inbounds %struct.arc* %420, i32 0, i32 2
  %422 = load %struct.node** %421, align 8
  %423 = getelementptr inbounds %struct.node* %422, i32 0, i32 8
  %424 = load %struct.arc** %423, align 8
  %425 = load %struct.arc** %arc, align 8
  %426 = getelementptr inbounds %struct.arc* %425, i32 0, i32 5
  store %struct.arc* %424, %struct.arc** %426, align 8
  %427 = load %struct.arc** %arc, align 8
  %428 = load %struct.arc** %arc, align 8
  %429 = getelementptr inbounds %struct.arc* %428, i32 0, i32 2
  %430 = load %struct.node** %429, align 8
  %431 = getelementptr inbounds %struct.node* %430, i32 0, i32 8
  store %struct.arc* %427, %struct.arc** %431, align 8
  br label %432

; <label>:432                                     ; preds = %387
  %433 = load i64* %i, align 8
  %434 = add nsw i64 %433, 1
  store i64 %434, i64* %i, align 8
  %435 = load %struct.arc** %arc, align 8
  %436 = getelementptr inbounds %struct.arc* %435, i32 1
  store %struct.arc* %436, %struct.arc** %arc, align 8
  br label %373

; <label>:437                                     ; preds = %373
  %438 = load %struct.network** %2, align 8
  %439 = getelementptr inbounds %struct.network* %438, i32 0, i32 24
  %440 = load %struct.arc** %439, align 8
  %441 = load %struct.arc** %arc, align 8
  %442 = icmp ne %struct.arc* %440, %441
  br i1 %442, label %443, label %472

; <label>:443                                     ; preds = %437
  %444 = load %struct.arc** %arc, align 8
  %445 = load %struct.network** %2, align 8
  %446 = getelementptr inbounds %struct.network* %445, i32 0, i32 24
  store %struct.arc* %444, %struct.arc** %446, align 8
  %447 = load %struct.network** %2, align 8
  %448 = getelementptr inbounds %struct.network* %447, i32 0, i32 23
  %449 = load %struct.arc** %448, align 8
  store %struct.arc* %449, %struct.arc** %arc, align 8
  %450 = load %struct.network** %2, align 8
  %451 = getelementptr inbounds %struct.network* %450, i32 0, i32 5
  store i64 0, i64* %451, align 8
  br label %452

; <label>:452                                     ; preds = %463, %443
  %453 = load %struct.arc** %arc, align 8
  %454 = load %struct.network** %2, align 8
  %455 = getelementptr inbounds %struct.network* %454, i32 0, i32 24
  %456 = load %struct.arc** %455, align 8
  %457 = icmp ult %struct.arc* %453, %456
  br i1 %457, label %458, label %466

; <label>:458                                     ; preds = %452
  %459 = load %struct.network** %2, align 8
  %460 = getelementptr inbounds %struct.network* %459, i32 0, i32 5
  %461 = load i64* %460, align 8
  %462 = add nsw i64 %461, 1
  store i64 %462, i64* %460, align 8
  br label %463

; <label>:463                                     ; preds = %458
  %464 = load %struct.arc** %arc, align 8
  %465 = getelementptr inbounds %struct.arc* %464, i32 1
  store %struct.arc* %465, %struct.arc** %arc, align 8
  br label %452

; <label>:466                                     ; preds = %452
  %467 = load %struct.network** %2, align 8
  %468 = getelementptr inbounds %struct.network* %467, i32 0, i32 5
  %469 = load i64* %468, align 8
  %470 = load %struct.network** %2, align 8
  %471 = getelementptr inbounds %struct.network* %470, i32 0, i32 6
  store i64 %469, i64* %471, align 8
  br label %472

; <label>:472                                     ; preds = %466, %437
  %473 = load %struct._IO_FILE** %in, align 8
  %474 = call i32 @fclose(%struct._IO_FILE* %473)
  %475 = load %struct.network** %2, align 8
  %476 = getelementptr inbounds %struct.network* %475, i32 0, i32 1
  %477 = getelementptr inbounds [200 x i8]* %476, i32 0, i64 0
  store i8 0, i8* %477, align 1
  store i64 1, i64* %i, align 8
  br label %478

; <label>:478                                     ; preds = %525, %472
  %479 = load i64* %i, align 8
  %480 = load %struct.network** %2, align 8
  %481 = getelementptr inbounds %struct.network* %480, i32 0, i32 3
  %482 = load i64* %481, align 8
  %483 = icmp sle i64 %479, %482
  br i1 %483, label %484, label %528

; <label>:484                                     ; preds = %478
  %485 = load %struct.network** %2, align 8
  %486 = getelementptr inbounds %struct.network* %485, i32 0, i32 18
  %487 = load i64* %486, align 8
  %488 = icmp sgt i64 %487, 10000000
  br i1 %488, label %489, label %493

; <label>:489                                     ; preds = %484
  %490 = load %struct.network** %2, align 8
  %491 = getelementptr inbounds %struct.network* %490, i32 0, i32 18
  %492 = load i64* %491, align 8
  br label %494

; <label>:493                                     ; preds = %484
  br label %494

; <label>:494                                     ; preds = %493, %489
  %495 = phi i64 [ %492, %489 ], [ 10000000, %493 ]
  %496 = mul nsw i64 -2, %495
  %497 = load i64* %i, align 8
  %498 = mul nsw i64 3, %497
  %499 = sub nsw i64 %498, 1
  %500 = load %struct.network** %2, align 8
  %501 = getelementptr inbounds %struct.network* %500, i32 0, i32 23
  %502 = load %struct.arc** %501, align 8
  %503 = getelementptr inbounds %struct.arc* %502, i64 %499
  %504 = getelementptr inbounds %struct.arc* %503, i32 0, i32 0
  store i64 %496, i64* %504, align 8
  %505 = load %struct.network** %2, align 8
  %506 = getelementptr inbounds %struct.network* %505, i32 0, i32 18
  %507 = load i64* %506, align 8
  %508 = icmp sgt i64 %507, 10000000
  br i1 %508, label %509, label %513

; <label>:509                                     ; preds = %494
  %510 = load %struct.network** %2, align 8
  %511 = getelementptr inbounds %struct.network* %510, i32 0, i32 18
  %512 = load i64* %511, align 8
  br label %514

; <label>:513                                     ; preds = %494
  br label %514

; <label>:514                                     ; preds = %513, %509
  %515 = phi i64 [ %512, %509 ], [ 10000000, %513 ]
  %516 = mul nsw i64 -2, %515
  %517 = load i64* %i, align 8
  %518 = mul nsw i64 3, %517
  %519 = sub nsw i64 %518, 1
  %520 = load %struct.network** %2, align 8
  %521 = getelementptr inbounds %struct.network* %520, i32 0, i32 23
  %522 = load %struct.arc** %521, align 8
  %523 = getelementptr inbounds %struct.arc* %522, i64 %519
  %524 = getelementptr inbounds %struct.arc* %523, i32 0, i32 7
  store i64 %516, i64* %524, align 8
  br label %525

; <label>:525                                     ; preds = %514
  %526 = load i64* %i, align 8
  %527 = add nsw i64 %526, 1
  store i64 %527, i64* %i, align 8
  br label %478

; <label>:528                                     ; preds = %478
  store i64 0, i64* %1
  br label %529

; <label>:529                                     ; preds = %528, %386, %371, %166, %110, %16, %8
  %530 = load i64* %1
  ret i64 %530
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.arc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %basic_arc_temp = alloca %struct.arc*, align 8
  %new_basic_arc = alloca %struct.arc*, align 8
  %father = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  %new_pred = alloca %struct.node*, align 8
  %orientation_temp = alloca i64, align 8
  %depth_temp = alloca i64, align 8
  %depth_iminus = alloca i64, align 8
  %new_depth = alloca i64, align 8
  %flow_temp = alloca i64, align 8
  store i64 %cycle_ori, i64* %1, align 8
  store i64 %new_orientation, i64* %2, align 8
  store i64 %delta, i64* %3, align 8
  store i64 %new_flow, i64* %4, align 8
  store %struct.node* %iplus, %struct.node** %5, align 8
  store %struct.node* %jplus, %struct.node** %6, align 8
  store %struct.node* %iminus, %struct.node** %7, align 8
  store %struct.node* %jminus, %struct.node** %8, align 8
  store %struct.node* %w, %struct.node** %9, align 8
  store %struct.arc* %bea, %struct.arc** %10, align 8
  store i64 %sigma, i64* %11, align 8
  store i64 %feas_tol, i64* %12, align 8
  %13 = load %struct.arc** %10, align 8
  %14 = getelementptr inbounds %struct.arc* %13, i32 0, i32 1
  %15 = load %struct.node** %14, align 8
  %16 = load %struct.node** %6, align 8
  %17 = icmp eq %struct.node* %15, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %0
  %19 = load i64* %11, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %30, label %21

; <label>:21                                      ; preds = %18, %0
  %22 = load %struct.arc** %10, align 8
  %23 = getelementptr inbounds %struct.arc* %22, i32 0, i32 1
  %24 = load %struct.node** %23, align 8
  %25 = load %struct.node** %5, align 8
  %26 = icmp eq %struct.node* %24, %25
  br i1 %26, label %27, label %40

; <label>:27                                      ; preds = %21
  %28 = load i64* %11, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %40

; <label>:30                                      ; preds = %27, %18
  %31 = load i64* %11, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = load i64* %11, align 8
  br label %38

; <label>:35                                      ; preds = %30
  %36 = load i64* %11, align 8
  %37 = sub nsw i64 0, %36
  br label %38

; <label>:38                                      ; preds = %35, %33
  %39 = phi i64 [ %34, %33 ], [ %37, %35 ]
  store i64 %39, i64* %11, align 8
  br label %51

; <label>:40                                      ; preds = %27, %21
  %41 = load i64* %11, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %40
  %44 = load i64* %11, align 8
  br label %48

; <label>:45                                      ; preds = %40
  %46 = load i64* %11, align 8
  %47 = sub nsw i64 0, %46
  br label %48

; <label>:48                                      ; preds = %45, %43
  %49 = phi i64 [ %44, %43 ], [ %47, %45 ]
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %11, align 8
  br label %51

; <label>:51                                      ; preds = %48, %38
  %52 = load %struct.node** %7, align 8
  store %struct.node* %52, %struct.node** %father, align 8
  %53 = load i64* %11, align 8
  %54 = load %struct.node** %father, align 8
  %55 = getelementptr inbounds %struct.node* %54, i32 0, i32 0
  %56 = load i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

; <label>:58                                      ; preds = %65, %51
  %59 = load %struct.node** %father, align 8
  %60 = getelementptr inbounds %struct.node* %59, i32 0, i32 2
  %61 = load %struct.node** %60, align 8
  store %struct.node* %61, %struct.node** %temp, align 8
  %62 = load %struct.node** %temp, align 8
  %63 = icmp ne %struct.node* %62, null
  br i1 %63, label %64, label %72

; <label>:64                                      ; preds = %58
  br label %65

; <label>:65                                      ; preds = %84, %64
  %66 = load i64* %11, align 8
  %67 = load %struct.node** %temp, align 8
  %68 = getelementptr inbounds %struct.node* %67, i32 0, i32 0
  %69 = load i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.node** %temp, align 8
  store %struct.node* %71, %struct.node** %father, align 8
  br label %58

; <label>:72                                      ; preds = %58
  br label %73

; <label>:73                                      ; preds = %85, %72
  %74 = load %struct.node** %father, align 8
  %75 = load %struct.node** %7, align 8
  %76 = icmp eq %struct.node* %74, %75
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %73
  br label %89

; <label>:78                                      ; preds = %73
  %79 = load %struct.node** %father, align 8
  %80 = getelementptr inbounds %struct.node* %79, i32 0, i32 4
  %81 = load %struct.node** %80, align 8
  store %struct.node* %81, %struct.node** %temp, align 8
  %82 = load %struct.node** %temp, align 8
  %83 = icmp ne %struct.node* %82, null
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %78
  br label %65

; <label>:85                                      ; preds = %78
  %86 = load %struct.node** %father, align 8
  %87 = getelementptr inbounds %struct.node* %86, i32 0, i32 3
  %88 = load %struct.node** %87, align 8
  store %struct.node* %88, %struct.node** %father, align 8
  br label %73

; <label>:89                                      ; preds = %77
  %90 = load %struct.node** %5, align 8
  store %struct.node* %90, %struct.node** %temp, align 8
  %91 = load %struct.node** %temp, align 8
  %92 = getelementptr inbounds %struct.node* %91, i32 0, i32 3
  %93 = load %struct.node** %92, align 8
  store %struct.node* %93, %struct.node** %father, align 8
  %94 = load %struct.node** %7, align 8
  %95 = getelementptr inbounds %struct.node* %94, i32 0, i32 11
  %96 = load i64* %95, align 8
  store i64 %96, i64* %depth_iminus, align 8
  store i64 %96, i64* %new_depth, align 8
  %97 = load %struct.node** %6, align 8
  store %struct.node* %97, %struct.node** %new_pred, align 8
  %98 = load %struct.arc** %10, align 8
  store %struct.arc* %98, %struct.arc** %new_basic_arc, align 8
  br label %99

; <label>:99                                      ; preds = %182, %89
  %100 = load %struct.node** %temp, align 8
  %101 = load %struct.node** %8, align 8
  %102 = icmp ne %struct.node* %100, %101
  br i1 %102, label %103, label %213

; <label>:103                                     ; preds = %99
  %104 = load %struct.node** %temp, align 8
  %105 = getelementptr inbounds %struct.node* %104, i32 0, i32 4
  %106 = load %struct.node** %105, align 8
  %107 = icmp ne %struct.node* %106, null
  br i1 %107, label %108, label %116

; <label>:108                                     ; preds = %103
  %109 = load %struct.node** %temp, align 8
  %110 = getelementptr inbounds %struct.node* %109, i32 0, i32 5
  %111 = load %struct.node** %110, align 8
  %112 = load %struct.node** %temp, align 8
  %113 = getelementptr inbounds %struct.node* %112, i32 0, i32 4
  %114 = load %struct.node** %113, align 8
  %115 = getelementptr inbounds %struct.node* %114, i32 0, i32 5
  store %struct.node* %111, %struct.node** %115, align 8
  br label %116

; <label>:116                                     ; preds = %108, %103
  %117 = load %struct.node** %temp, align 8
  %118 = getelementptr inbounds %struct.node* %117, i32 0, i32 5
  %119 = load %struct.node** %118, align 8
  %120 = icmp ne %struct.node* %119, null
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %116
  %122 = load %struct.node** %temp, align 8
  %123 = getelementptr inbounds %struct.node* %122, i32 0, i32 4
  %124 = load %struct.node** %123, align 8
  %125 = load %struct.node** %temp, align 8
  %126 = getelementptr inbounds %struct.node* %125, i32 0, i32 5
  %127 = load %struct.node** %126, align 8
  %128 = getelementptr inbounds %struct.node* %127, i32 0, i32 4
  store %struct.node* %124, %struct.node** %128, align 8
  br label %135

; <label>:129                                     ; preds = %116
  %130 = load %struct.node** %temp, align 8
  %131 = getelementptr inbounds %struct.node* %130, i32 0, i32 4
  %132 = load %struct.node** %131, align 8
  %133 = load %struct.node** %father, align 8
  %134 = getelementptr inbounds %struct.node* %133, i32 0, i32 2
  store %struct.node* %132, %struct.node** %134, align 8
  br label %135

; <label>:135                                     ; preds = %129, %121
  %136 = load %struct.node** %new_pred, align 8
  %137 = load %struct.node** %temp, align 8
  %138 = getelementptr inbounds %struct.node* %137, i32 0, i32 3
  store %struct.node* %136, %struct.node** %138, align 8
  %139 = load %struct.node** %new_pred, align 8
  %140 = getelementptr inbounds %struct.node* %139, i32 0, i32 2
  %141 = load %struct.node** %140, align 8
  %142 = load %struct.node** %temp, align 8
  %143 = getelementptr inbounds %struct.node* %142, i32 0, i32 4
  store %struct.node* %141, %struct.node** %143, align 8
  %144 = load %struct.node** %temp, align 8
  %145 = getelementptr inbounds %struct.node* %144, i32 0, i32 4
  %146 = load %struct.node** %145, align 8
  %147 = icmp ne %struct.node* %146, null
  br i1 %147, label %148, label %154

; <label>:148                                     ; preds = %135
  %149 = load %struct.node** %temp, align 8
  %150 = load %struct.node** %temp, align 8
  %151 = getelementptr inbounds %struct.node* %150, i32 0, i32 4
  %152 = load %struct.node** %151, align 8
  %153 = getelementptr inbounds %struct.node* %152, i32 0, i32 5
  store %struct.node* %149, %struct.node** %153, align 8
  br label %154

; <label>:154                                     ; preds = %148, %135
  %155 = load %struct.node** %temp, align 8
  %156 = load %struct.node** %new_pred, align 8
  %157 = getelementptr inbounds %struct.node* %156, i32 0, i32 2
  store %struct.node* %155, %struct.node** %157, align 8
  %158 = load %struct.node** %temp, align 8
  %159 = getelementptr inbounds %struct.node* %158, i32 0, i32 5
  store %struct.node* null, %struct.node** %159, align 8
  %160 = load %struct.node** %temp, align 8
  %161 = getelementptr inbounds %struct.node* %160, i32 0, i32 1
  %162 = load i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %orientation_temp, align 8
  %167 = load i64* %orientation_temp, align 8
  %168 = load i64* %1, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %176

; <label>:170                                     ; preds = %154
  %171 = load %struct.node** %temp, align 8
  %172 = getelementptr inbounds %struct.node* %171, i32 0, i32 10
  %173 = load i64* %172, align 8
  %174 = load i64* %3, align 8
  %175 = add nsw i64 %173, %174
  store i64 %175, i64* %flow_temp, align 8
  br label %182

; <label>:176                                     ; preds = %154
  %177 = load %struct.node** %temp, align 8
  %178 = getelementptr inbounds %struct.node* %177, i32 0, i32 10
  %179 = load i64* %178, align 8
  %180 = load i64* %3, align 8
  %181 = sub nsw i64 %179, %180
  store i64 %181, i64* %flow_temp, align 8
  br label %182

; <label>:182                                     ; preds = %176, %170
  %183 = load %struct.node** %temp, align 8
  %184 = getelementptr inbounds %struct.node* %183, i32 0, i32 6
  %185 = load %struct.arc** %184, align 8
  store %struct.arc* %185, %struct.arc** %basic_arc_temp, align 8
  %186 = load %struct.node** %temp, align 8
  %187 = getelementptr inbounds %struct.node* %186, i32 0, i32 11
  %188 = load i64* %187, align 8
  store i64 %188, i64* %depth_temp, align 8
  %189 = load i64* %2, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.node** %temp, align 8
  %192 = getelementptr inbounds %struct.node* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i64* %4, align 8
  %194 = load %struct.node** %temp, align 8
  %195 = getelementptr inbounds %struct.node* %194, i32 0, i32 10
  store i64 %193, i64* %195, align 8
  %196 = load %struct.arc** %new_basic_arc, align 8
  %197 = load %struct.node** %temp, align 8
  %198 = getelementptr inbounds %struct.node* %197, i32 0, i32 6
  store %struct.arc* %196, %struct.arc** %198, align 8
  %199 = load i64* %new_depth, align 8
  %200 = load %struct.node** %temp, align 8
  %201 = getelementptr inbounds %struct.node* %200, i32 0, i32 11
  store i64 %199, i64* %201, align 8
  %202 = load %struct.node** %temp, align 8
  store %struct.node* %202, %struct.node** %new_pred, align 8
  %203 = load i64* %orientation_temp, align 8
  store i64 %203, i64* %2, align 8
  %204 = load i64* %flow_temp, align 8
  store i64 %204, i64* %4, align 8
  %205 = load %struct.arc** %basic_arc_temp, align 8
  store %struct.arc* %205, %struct.arc** %new_basic_arc, align 8
  %206 = load i64* %depth_iminus, align 8
  %207 = load i64* %depth_temp, align 8
  %208 = sub nsw i64 %206, %207
  store i64 %208, i64* %new_depth, align 8
  %209 = load %struct.node** %father, align 8
  store %struct.node* %209, %struct.node** %temp, align 8
  %210 = load %struct.node** %temp, align 8
  %211 = getelementptr inbounds %struct.node* %210, i32 0, i32 3
  %212 = load %struct.node** %211, align 8
  store %struct.node* %212, %struct.node** %father, align 8
  br label %99

; <label>:213                                     ; preds = %99
  %214 = load i64* %3, align 8
  %215 = load i64* %12, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %288

; <label>:217                                     ; preds = %213
  %218 = load %struct.node** %8, align 8
  store %struct.node* %218, %struct.node** %temp, align 8
  br label %219

; <label>:219                                     ; preds = %248, %217
  %220 = load %struct.node** %temp, align 8
  %221 = load %struct.node** %9, align 8
  %222 = icmp ne %struct.node* %220, %221
  br i1 %222, label %223, label %252

; <label>:223                                     ; preds = %219
  %224 = load i64* %depth_iminus, align 8
  %225 = load %struct.node** %temp, align 8
  %226 = getelementptr inbounds %struct.node* %225, i32 0, i32 11
  %227 = load i64* %226, align 8
  %228 = sub nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.node** %temp, align 8
  %230 = getelementptr inbounds %struct.node* %229, i32 0, i32 1
  %231 = load i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64* %1, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %241

; <label>:235                                     ; preds = %223
  %236 = load i64* %3, align 8
  %237 = load %struct.node** %temp, align 8
  %238 = getelementptr inbounds %struct.node* %237, i32 0, i32 10
  %239 = load i64* %238, align 8
  %240 = add nsw i64 %239, %236
  store i64 %240, i64* %238, align 8
  br label %247

; <label>:241                                     ; preds = %223
  %242 = load i64* %3, align 8
  %243 = load %struct.node** %temp, align 8
  %244 = getelementptr inbounds %struct.node* %243, i32 0, i32 10
  %245 = load i64* %244, align 8
  %246 = sub nsw i64 %245, %242
  store i64 %246, i64* %244, align 8
  br label %247

; <label>:247                                     ; preds = %241, %235
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load %struct.node** %temp, align 8
  %250 = getelementptr inbounds %struct.node* %249, i32 0, i32 3
  %251 = load %struct.node** %250, align 8
  store %struct.node* %251, %struct.node** %temp, align 8
  br label %219

; <label>:252                                     ; preds = %219
  %253 = load %struct.node** %6, align 8
  store %struct.node* %253, %struct.node** %temp, align 8
  br label %254

; <label>:254                                     ; preds = %283, %252
  %255 = load %struct.node** %temp, align 8
  %256 = load %struct.node** %9, align 8
  %257 = icmp ne %struct.node* %255, %256
  br i1 %257, label %258, label %287

; <label>:258                                     ; preds = %254
  %259 = load i64* %depth_iminus, align 8
  %260 = load %struct.node** %temp, align 8
  %261 = getelementptr inbounds %struct.node* %260, i32 0, i32 11
  %262 = load i64* %261, align 8
  %263 = add nsw i64 %262, %259
  store i64 %263, i64* %261, align 8
  %264 = load %struct.node** %temp, align 8
  %265 = getelementptr inbounds %struct.node* %264, i32 0, i32 1
  %266 = load i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64* %1, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %276

; <label>:270                                     ; preds = %258
  %271 = load i64* %3, align 8
  %272 = load %struct.node** %temp, align 8
  %273 = getelementptr inbounds %struct.node* %272, i32 0, i32 10
  %274 = load i64* %273, align 8
  %275 = add nsw i64 %274, %271
  store i64 %275, i64* %273, align 8
  br label %282

; <label>:276                                     ; preds = %258
  %277 = load i64* %3, align 8
  %278 = load %struct.node** %temp, align 8
  %279 = getelementptr inbounds %struct.node* %278, i32 0, i32 10
  %280 = load i64* %279, align 8
  %281 = sub nsw i64 %280, %277
  store i64 %281, i64* %279, align 8
  br label %282

; <label>:282                                     ; preds = %276, %270
  br label %283

; <label>:283                                     ; preds = %282
  %284 = load %struct.node** %temp, align 8
  %285 = getelementptr inbounds %struct.node* %284, i32 0, i32 3
  %286 = load %struct.node** %285, align 8
  store %struct.node* %286, %struct.node** %temp, align 8
  br label %254

; <label>:287                                     ; preds = %254
  br label %321

; <label>:288                                     ; preds = %213
  %289 = load %struct.node** %8, align 8
  store %struct.node* %289, %struct.node** %temp, align 8
  br label %290

; <label>:290                                     ; preds = %300, %288
  %291 = load %struct.node** %temp, align 8
  %292 = load %struct.node** %9, align 8
  %293 = icmp ne %struct.node* %291, %292
  br i1 %293, label %294, label %304

; <label>:294                                     ; preds = %290
  %295 = load i64* %depth_iminus, align 8
  %296 = load %struct.node** %temp, align 8
  %297 = getelementptr inbounds %struct.node* %296, i32 0, i32 11
  %298 = load i64* %297, align 8
  %299 = sub nsw i64 %298, %295
  store i64 %299, i64* %297, align 8
  br label %300

; <label>:300                                     ; preds = %294
  %301 = load %struct.node** %temp, align 8
  %302 = getelementptr inbounds %struct.node* %301, i32 0, i32 3
  %303 = load %struct.node** %302, align 8
  store %struct.node* %303, %struct.node** %temp, align 8
  br label %290

; <label>:304                                     ; preds = %290
  %305 = load %struct.node** %6, align 8
  store %struct.node* %305, %struct.node** %temp, align 8
  br label %306

; <label>:306                                     ; preds = %316, %304
  %307 = load %struct.node** %temp, align 8
  %308 = load %struct.node** %9, align 8
  %309 = icmp ne %struct.node* %307, %308
  br i1 %309, label %310, label %320

; <label>:310                                     ; preds = %306
  %311 = load i64* %depth_iminus, align 8
  %312 = load %struct.node** %temp, align 8
  %313 = getelementptr inbounds %struct.node* %312, i32 0, i32 11
  %314 = load i64* %313, align 8
  %315 = add nsw i64 %314, %311
  store i64 %315, i64* %313, align 8
  br label %316

; <label>:316                                     ; preds = %310
  %317 = load %struct.node** %temp, align 8
  %318 = getelementptr inbounds %struct.node* %317, i32 0, i32 3
  %319 = load %struct.node** %318, align 8
  store %struct.node* %319, %struct.node** %temp, align 8
  br label %306

; <label>:320                                     ; preds = %306
  br label %321

; <label>:321                                     ; preds = %320, %287
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
