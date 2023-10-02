; ModuleID = 'b+tree.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i8**, i32*, %struct.node*, i8, i32, %struct.node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.record = type { i32 }
%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.list_t = type { %struct.list_item*, %struct.list_item*, i32, i32 (i8*, i8*)*, void (i8*)* }
%struct.list_item = type { %struct.list_item*, %struct.list_item*, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@order = global i32 256, align 4
@queue = global %struct.node* null, align 8
@verbose_output = global i8 0, align 1
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [29 x i8] c"Allocation failed at %s:%d!\0A\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"b+tree.c\00", align 1
@freeptr = common global i64 0, align 8
@malloc_size = common global i64 0, align 8
@mem = common global i8* null, align 8
@.str2 = private unnamed_addr constant [17 x i8] c"Memory Overflow\0A\00", align 1
@size = common global i64 0, align 8
@.str3 = private unnamed_addr constant [22 x i8] c"Initial malloc error\0A\00", align 1
@krecords = common global %struct.record* null, align 8
@knodes = common global %struct.knode* null, align 8
@.str4 = private unnamed_addr constant [42 x i8] c"Successfully created knode with index %d\0A\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"Is Leaf: %d, Num Keys: %d\0A\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"Pointers: \00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"\0AKeys: \00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str11 = private unnamed_addr constant [54 x i8] c"\0ANumber of records = %d, sizeof(record)=%d, total=%d\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"Number of knodes = %d, sizeof(knode)=%d, total=%d\0A\00", align 1
@.str13 = private unnamed_addr constant [36 x i8] c"\0ADone Transformation. Mem used: %d\0A\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"Tree transformation took %f\0A\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"B+ Tree of Order %d.\0A\00", align 1
@.str16 = private unnamed_addr constant [56 x i8] c"\09Amittai Aviram -- amittai.aviram@yale.edu  Version %s\0A\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str18 = private unnamed_addr constant [72 x i8] c"\09following Silberschatz, Korth, Sidarshan, Database Concepts, 5th ed.\0A\0A\00", align 1
@.str19 = private unnamed_addr constant [74 x i8] c"To build a B+ tree of a different order, start again and enter the order\0A\00", align 1
@.str20 = private unnamed_addr constant [40 x i8] c"as an integer argument:  bpt <order>.  \00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"3 <= order <=20\0A\00", align 1
@.str22 = private unnamed_addr constant [86 x i8] c"To start with input from a file of newline-delimited integers, start again and enter\0A\00", align 1
@.str23 = private unnamed_addr constant [63 x i8] c"the order followed by the filename:  bpt <order> <inputfile>.\0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"Enter any of the following commands after the prompt > :\0A\00", align 1
@.str25 = private unnamed_addr constant [60 x i8] c"\09i <k>  -- Insert <k> (an integer) as both key and value).\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"\09f <k>  -- Find the value under key <k>.\0A\00", align 1
@.str27 = private unnamed_addr constant [75 x i8] c"\09p <k> -- Print the path from the root to key k and its associated value.\0A\00", align 1
@.str28 = private unnamed_addr constant [53 x i8] c"\09d <k>  -- Delete key <k> and its associated value.\0A\00", align 1
@.str29 = private unnamed_addr constant [82 x i8] c"\09x -- Destroy the whole tree.  Start again with an empty tree of the same order.\0A\00", align 1
@.str30 = private unnamed_addr constant [26 x i8] c"\09t -- Print the B+ tree.\0A\00", align 1
@.str31 = private unnamed_addr constant [62 x i8] c"\09l -- Print the keys of the leaves (bottom row of the tree).\0A\00", align 1
@.str32 = private unnamed_addr constant [74 x i8] c"\09v -- Toggle output of pointer addresses (\22verbose\22) in tree and leaves.\0A\00", align 1
@.str33 = private unnamed_addr constant [29 x i8] c"\09q -- Quit. (Or use Ctl-D.)\0A\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c"\09? -- Print this help message.\0A\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"Empty tree.\0A\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"%d] \00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"%d ->\0A\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"Leaf [\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"%d] ->\0A\00", align 1
@.str48 = private unnamed_addr constant [17 x i8] c"Record creation.\00", align 1
@.str49 = private unnamed_addr constant [15 x i8] c"Node creation.\00", align 1
@.str50 = private unnamed_addr constant [21 x i8] c"New node keys array.\00", align 1
@.str51 = private unnamed_addr constant [25 x i8] c"New node pointers array.\00", align 1
@.str52 = private unnamed_addr constant [22 x i8] c"Temporary keys array.\00", align 1
@.str53 = private unnamed_addr constant [26 x i8] c"Temporary pointers array.\00", align 1
@.str54 = private unnamed_addr constant [46 x i8] c"Temporary pointers array for splitting nodes.\00", align 1
@.str55 = private unnamed_addr constant [42 x i8] c"Temporary keys array for splitting nodes.\00", align 1
@.str56 = private unnamed_addr constant [51 x i8] c"Search for nonexistent pointer to node in parent.\0A\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str58 = private unnamed_addr constant [41 x i8] c"ERROR: Missing value to -file parameter\0A\00", align 1
@.str59 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str60 = private unnamed_addr constant [43 x i8] c"ERROR: Missing value to command parameter\0A\00", align 1
@.str61 = private unnamed_addr constant [54 x i8] c"Usage: ./b+tree file input_file command command_list\0A\00", align 1
@.str62 = private unnamed_addr constant [17 x i8] c"Input File: %s \0A\00", align 1
@.str63 = private unnamed_addr constant [19 x i8] c"Command File: %s \0A\00", align 1
@.str64 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str65 = private unnamed_addr constant [19 x i8] c"Command File error\00", align 1
@.str66 = private unnamed_addr constant [28 x i8] c"Command Buffer memory error\00", align 1
@.str67 = private unnamed_addr constant [27 x i8] c"Command file reading error\00", align 1
@.str68 = private unnamed_addr constant [18 x i8] c"Command Buffer: \0A\00", align 1
@.str69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str70 = private unnamed_addr constant [19 x i8] c"Fail to open %s !\0A\00", align 1
@.str71 = private unnamed_addr constant [22 x i8] c"******starting******\0A\00", align 1
@.str72 = private unnamed_addr constant [31 x i8] c"Getting input from file %s...\0A\00", align 1
@.str73 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str74 = private unnamed_addr constant [28 x i8] c"Failure to open input file.\00", align 1
@.str75 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str76 = private unnamed_addr constant [31 x i8] c"ERROR: Argument -file missing\0A\00", align 1
@.str77 = private unnamed_addr constant [50 x i8] c"Transforming data to a GPU suitable structure...\0A\00", align 1
@maxheight = common global i64 0, align 8
@.str78 = private unnamed_addr constant [21 x i8] c"Waiting for command\0A\00", align 1
@.str79 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str80 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str81 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str82 = private unnamed_addr constant [32 x i8] c"Record not found under key %d.\0A\00", align 1
@.str83 = private unnamed_addr constant [18 x i8] c"Record found: %d\0A\00", align 1
@.str84 = private unnamed_addr constant [30 x i8] c"\0A ******command: k count=%d \0A\00", align 1
@.str85 = private unnamed_addr constant [93 x i8] c"ERROR: Number of requested querries should be 65,535 at most. (limited by # of CUDA blocks)\0A\00", align 1
@.str86 = private unnamed_addr constant [54 x i8] c"records_elem=%d, records_unit_mem=%d, records_mem=%d\0A\00", align 1
@.str87 = private unnamed_addr constant [51 x i8] c"knodes_elem=%d, knodes_unit_mem=%d, knodes_mem=%d\0A\00", align 1
@.str88 = private unnamed_addr constant [4 x i8] c"aw+\00", align 1
@.str89 = private unnamed_addr constant [10 x i8] c"%d    %d\0A\00", align 1
@.str90 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str91 = private unnamed_addr constant [21 x i8] c"For range %d to %d, \00", align 1
@.str92 = private unnamed_addr constant [18 x i8] c"%d records found\0A\00", align 1
@.str93 = private unnamed_addr constant [39 x i8] c"\0A******command: j count=%d, rSize=%d \0A\00", align 1
@.str94 = private unnamed_addr constant [52 x i8] c"Search range size is larger than data set size %d.\0A\00", align 1
@.str95 = private unnamed_addr constant [16 x i8] c"%d    %d    %d\0A\00", align 1
@.str96 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str97 = private unnamed_addr constant [52 x i8] c"Time spent in different stages of CPU/MCPU KERNEL:\0A\00", align 1
@.str198 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : MCPU: SET DEVICE\0A\00", align 1
@.str299 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: KERNEL\0A\00", align 1
@.str3100 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str4101 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@.str104 = private unnamed_addr constant [52 x i8] c"Time spent in different stages of CPU/MCPU KERNEL:\0A\00", align 1
@.str1105 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : MCPU: SET DEVICE\0A\00", align 1
@.str2106 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: KERNEL\0A\00", align 1
@.str3107 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str4108 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @list_init(%struct.list_t* %l, i32 (i8*, i8*)* %compare, void (i8*)* %datum_delete) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i32 (i8*, i8*)*, align 8
  %3 = alloca void (i8*)*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %2, align 8
  store void (i8*)* %datum_delete, void (i8*)** %3, align 8
  %4 = load %struct.list_t** %1, align 8
  %5 = getelementptr inbounds %struct.list_t* %4, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %5, align 8
  %6 = load %struct.list_t** %1, align 8
  %7 = getelementptr inbounds %struct.list_t* %6, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %7, align 8
  %8 = load %struct.list_t** %1, align 8
  %9 = getelementptr inbounds %struct.list_t* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load i32 (i8*, i8*)** %2, align 8
  %11 = load %struct.list_t** %1, align 8
  %12 = getelementptr inbounds %struct.list_t* %11, i32 0, i32 3
  store i32 (i8*, i8*)* %10, i32 (i8*, i8*)** %12, align 8
  %13 = load void (i8*)** %3, align 8
  %14 = load %struct.list_t** %1, align 8
  %15 = getelementptr inbounds %struct.list_t* %14, i32 0, i32 4
  store void (i8*)* %13, void (i8*)** %15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_delete(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  %li = alloca %struct.list_item*, align 8
  %del = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 0
  %4 = load %struct.list_item** %3, align 8
  store %struct.list_item* %4, %struct.list_item** %li, align 8
  br label %5

; <label>:5                                       ; preds = %8, %0
  %6 = load %struct.list_item** %li, align 8
  %7 = icmp ne %struct.list_item* %6, null
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %5
  %9 = load %struct.list_item** %li, align 8
  store %struct.list_item* %9, %struct.list_item** %del, align 8
  %10 = load %struct.list_item** %li, align 8
  %11 = getelementptr inbounds %struct.list_item* %10, i32 0, i32 1
  %12 = load %struct.list_item** %11, align 8
  store %struct.list_item* %12, %struct.list_item** %li, align 8
  %13 = load %struct.list_item** %del, align 8
  %14 = load %struct.list_t** %1, align 8
  %15 = getelementptr inbounds %struct.list_t* %14, i32 0, i32 4
  %16 = load void (i8*)** %15, align 8
  call void @list_item_delete(%struct.list_item* %13, void (i8*)* %16)
  br label %5

; <label>:17                                      ; preds = %5
  %18 = load %struct.list_t** %1, align 8
  %19 = getelementptr inbounds %struct.list_t* %18, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %19, align 8
  %20 = load %struct.list_t** %1, align 8
  %21 = getelementptr inbounds %struct.list_t* %20, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %21, align 8
  %22 = load %struct.list_t** %1, align 8
  %23 = getelementptr inbounds %struct.list_t* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_item_delete(%struct.list_item* %li, void (i8*)* %datum_delete) #0 {
  %1 = alloca %struct.list_item*, align 8
  %2 = alloca void (i8*)*, align 8
  store %struct.list_item* %li, %struct.list_item** %1, align 8
  store void (i8*)* %datum_delete, void (i8*)** %2, align 8
  %3 = load void (i8*)** %2, align 8
  %4 = icmp ne void (i8*)* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load void (i8*)** %2, align 8
  %7 = load %struct.list_item** %1, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 2
  %9 = load i8** %8, align 8
  call void %6(i8* %9)
  br label %10

; <label>:10                                      ; preds = %5, %0
  %11 = load %struct.list_item** %1, align 8
  %12 = bitcast %struct.list_item* %11 to i8*
  call void @free(i8* %12) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_reset(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  call void @list_delete(%struct.list_t* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_item_head(%struct.list_t* %l, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %i, %struct.list_item** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %25

; <label>:7                                       ; preds = %0
  %8 = load %struct.list_t** %1, align 8
  %9 = getelementptr inbounds %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item** %9, align 8
  %11 = load %struct.list_item** %2, align 8
  %12 = getelementptr inbounds %struct.list_item* %11, i32 0, i32 1
  store %struct.list_item* %10, %struct.list_item** %12, align 8
  %13 = load %struct.list_item** %2, align 8
  %14 = load %struct.list_t** %1, align 8
  %15 = getelementptr inbounds %struct.list_t* %14, i32 0, i32 0
  %16 = load %struct.list_item** %15, align 8
  %17 = getelementptr inbounds %struct.list_item* %16, i32 0, i32 0
  store %struct.list_item* %13, %struct.list_item** %17, align 8
  %18 = load %struct.list_item** %2, align 8
  %19 = load %struct.list_t** %1, align 8
  %20 = getelementptr inbounds %struct.list_t* %19, i32 0, i32 0
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  %21 = load %struct.list_t** %1, align 8
  %22 = getelementptr inbounds %struct.list_t* %21, i32 0, i32 0
  %23 = load %struct.list_item** %22, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %24, align 8
  br label %35

; <label>:25                                      ; preds = %0
  %26 = load %struct.list_item** %2, align 8
  %27 = load %struct.list_t** %1, align 8
  %28 = getelementptr inbounds %struct.list_t* %27, i32 0, i32 1
  store %struct.list_item* %26, %struct.list_item** %28, align 8
  %29 = load %struct.list_t** %1, align 8
  %30 = getelementptr inbounds %struct.list_t* %29, i32 0, i32 0
  store %struct.list_item* %26, %struct.list_item** %30, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %32, align 8
  %33 = load %struct.list_item** %2, align 8
  %34 = getelementptr inbounds %struct.list_item* %33, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %34, align 8
  br label %35

; <label>:35                                      ; preds = %25, %7
  %36 = load %struct.list_t** %1, align 8
  %37 = getelementptr inbounds %struct.list_t* %36, i32 0, i32 2
  %38 = load i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_item_tail(%struct.list_t* %l, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %i, %struct.list_item** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %0
  %8 = load %struct.list_item** %2, align 8
  %9 = load %struct.list_t** %1, align 8
  %10 = getelementptr inbounds %struct.list_t* %9, i32 0, i32 1
  %11 = load %struct.list_item** %10, align 8
  %12 = getelementptr inbounds %struct.list_item* %11, i32 0, i32 1
  store %struct.list_item* %8, %struct.list_item** %12, align 8
  %13 = load %struct.list_t** %1, align 8
  %14 = getelementptr inbounds %struct.list_t* %13, i32 0, i32 1
  %15 = load %struct.list_item** %14, align 8
  %16 = load %struct.list_item** %2, align 8
  %17 = getelementptr inbounds %struct.list_item* %16, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %17, align 8
  %18 = load %struct.list_item** %2, align 8
  %19 = getelementptr inbounds %struct.list_item* %18, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %19, align 8
  %20 = load %struct.list_item** %2, align 8
  %21 = load %struct.list_t** %1, align 8
  %22 = getelementptr inbounds %struct.list_t* %21, i32 0, i32 1
  store %struct.list_item* %20, %struct.list_item** %22, align 8
  br label %33

; <label>:23                                      ; preds = %0
  %24 = load %struct.list_item** %2, align 8
  %25 = load %struct.list_t** %1, align 8
  %26 = getelementptr inbounds %struct.list_t* %25, i32 0, i32 1
  store %struct.list_item* %24, %struct.list_item** %26, align 8
  %27 = load %struct.list_t** %1, align 8
  %28 = getelementptr inbounds %struct.list_t* %27, i32 0, i32 0
  store %struct.list_item* %24, %struct.list_item** %28, align 8
  %29 = load %struct.list_item** %2, align 8
  %30 = getelementptr inbounds %struct.list_item* %29, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %30, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %32, align 8
  br label %33

; <label>:33                                      ; preds = %23, %7
  %34 = load %struct.list_t** %1, align 8
  %35 = getelementptr inbounds %struct.list_t* %34, i32 0, i32 2
  %36 = load i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_item_before(%struct.list_t* %l, %struct.list_item* %next, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  %3 = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %next, %struct.list_item** %2, align 8
  store %struct.list_item* %i, %struct.list_item** %3, align 8
  %4 = load %struct.list_t** %1, align 8
  %5 = getelementptr inbounds %struct.list_t* %4, i32 0, i32 0
  %6 = load %struct.list_item** %5, align 8
  %7 = load %struct.list_item** %2, align 8
  %8 = icmp eq %struct.list_item* %6, %7
  br i1 %8, label %9, label %21

; <label>:9                                       ; preds = %0
  %10 = load %struct.list_item** %2, align 8
  %11 = load %struct.list_item** %3, align 8
  %12 = getelementptr inbounds %struct.list_item* %11, i32 0, i32 1
  store %struct.list_item* %10, %struct.list_item** %12, align 8
  %13 = load %struct.list_item** %3, align 8
  %14 = getelementptr inbounds %struct.list_item* %13, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %14, align 8
  %15 = load %struct.list_item** %3, align 8
  %16 = load %struct.list_t** %1, align 8
  %17 = getelementptr inbounds %struct.list_t* %16, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %17, align 8
  %18 = load %struct.list_item** %3, align 8
  %19 = load %struct.list_item** %2, align 8
  %20 = getelementptr inbounds %struct.list_item* %19, i32 0, i32 0
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  br label %38

; <label>:21                                      ; preds = %0
  %22 = load %struct.list_item** %2, align 8
  %23 = load %struct.list_item** %3, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 1
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  %25 = load %struct.list_item** %2, align 8
  %26 = getelementptr inbounds %struct.list_item* %25, i32 0, i32 0
  %27 = load %struct.list_item** %26, align 8
  %28 = load %struct.list_item** %3, align 8
  %29 = getelementptr inbounds %struct.list_item* %28, i32 0, i32 0
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %3, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 0
  %33 = load %struct.list_item** %32, align 8
  %34 = getelementptr inbounds %struct.list_item* %33, i32 0, i32 1
  store %struct.list_item* %30, %struct.list_item** %34, align 8
  %35 = load %struct.list_item** %3, align 8
  %36 = load %struct.list_item** %2, align 8
  %37 = getelementptr inbounds %struct.list_item* %36, i32 0, i32 0
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %38

; <label>:38                                      ; preds = %21, %9
  %39 = load %struct.list_t** %1, align 8
  %40 = getelementptr inbounds %struct.list_t* %39, i32 0, i32 2
  %41 = load i32* %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_item_after(%struct.list_t* %l, %struct.list_item* %pred, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  %3 = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %pred, %struct.list_item** %2, align 8
  store %struct.list_item* %i, %struct.list_item** %3, align 8
  %4 = load %struct.list_t** %1, align 8
  %5 = getelementptr inbounds %struct.list_t* %4, i32 0, i32 1
  %6 = load %struct.list_item** %5, align 8
  %7 = load %struct.list_item** %2, align 8
  %8 = icmp eq %struct.list_item* %6, %7
  br i1 %8, label %9, label %21

; <label>:9                                       ; preds = %0
  %10 = load %struct.list_item** %2, align 8
  %11 = load %struct.list_item** %3, align 8
  %12 = getelementptr inbounds %struct.list_item* %11, i32 0, i32 0
  store %struct.list_item* %10, %struct.list_item** %12, align 8
  %13 = load %struct.list_item** %3, align 8
  %14 = getelementptr inbounds %struct.list_item* %13, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %14, align 8
  %15 = load %struct.list_item** %3, align 8
  %16 = load %struct.list_t** %1, align 8
  %17 = getelementptr inbounds %struct.list_t* %16, i32 0, i32 1
  store %struct.list_item* %15, %struct.list_item** %17, align 8
  %18 = load %struct.list_item** %3, align 8
  %19 = load %struct.list_item** %2, align 8
  %20 = getelementptr inbounds %struct.list_item* %19, i32 0, i32 1
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  br label %38

; <label>:21                                      ; preds = %0
  %22 = load %struct.list_item** %2, align 8
  %23 = load %struct.list_item** %3, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 0
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  %25 = load %struct.list_item** %2, align 8
  %26 = getelementptr inbounds %struct.list_item* %25, i32 0, i32 1
  %27 = load %struct.list_item** %26, align 8
  %28 = load %struct.list_item** %3, align 8
  %29 = getelementptr inbounds %struct.list_item* %28, i32 0, i32 1
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %3, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 1
  %33 = load %struct.list_item** %32, align 8
  %34 = getelementptr inbounds %struct.list_item* %33, i32 0, i32 0
  store %struct.list_item* %30, %struct.list_item** %34, align 8
  %35 = load %struct.list_item** %3, align 8
  %36 = load %struct.list_item** %2, align 8
  %37 = getelementptr inbounds %struct.list_item* %36, i32 0, i32 1
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %38

; <label>:38                                      ; preds = %21, %9
  %39 = load %struct.list_t** %1, align 8
  %40 = getelementptr inbounds %struct.list_t* %39, i32 0, i32 2
  %41 = load i32* %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_item_sorted(%struct.list_t* %l, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  %itr = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %i, %struct.list_item** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %66

; <label>:7                                       ; preds = %0
  %8 = load %struct.list_t** %1, align 8
  %9 = getelementptr inbounds %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item** %9, align 8
  store %struct.list_item* %10, %struct.list_item** %itr, align 8
  br label %11

; <label>:11                                      ; preds = %25, %7
  %12 = load %struct.list_item** %itr, align 8
  %13 = icmp ne %struct.list_item* %12, null
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %11
  %15 = load %struct.list_t** %1, align 8
  %16 = getelementptr inbounds %struct.list_t* %15, i32 0, i32 3
  %17 = load i32 (i8*, i8*)** %16, align 8
  %18 = load %struct.list_item** %2, align 8
  %19 = call i8* @list_item_get_datum(%struct.list_item* %18)
  %20 = load %struct.list_item** %itr, align 8
  %21 = call i8* @list_item_get_datum(%struct.list_item* %20)
  %22 = call i32 %17(i8* %19, i8* %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %14
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load %struct.list_item** %itr, align 8
  %27 = getelementptr inbounds %struct.list_item* %26, i32 0, i32 1
  %28 = load %struct.list_item** %27, align 8
  store %struct.list_item* %28, %struct.list_item** %itr, align 8
  br label %11

; <label>:29                                      ; preds = %14, %11
  %30 = load %struct.list_item** %itr, align 8
  %31 = icmp ne %struct.list_item* %30, null
  br i1 %31, label %32, label %49

; <label>:32                                      ; preds = %29
  %33 = load %struct.list_item** %itr, align 8
  %34 = load %struct.list_item** %2, align 8
  %35 = getelementptr inbounds %struct.list_item* %34, i32 0, i32 1
  store %struct.list_item* %33, %struct.list_item** %35, align 8
  %36 = load %struct.list_item** %itr, align 8
  %37 = getelementptr inbounds %struct.list_item* %36, i32 0, i32 0
  %38 = load %struct.list_item** %37, align 8
  %39 = load %struct.list_item** %2, align 8
  %40 = getelementptr inbounds %struct.list_item* %39, i32 0, i32 0
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  %41 = load %struct.list_item** %2, align 8
  %42 = load %struct.list_item** %itr, align 8
  %43 = getelementptr inbounds %struct.list_item* %42, i32 0, i32 0
  store %struct.list_item* %41, %struct.list_item** %43, align 8
  %44 = load %struct.list_item** %2, align 8
  %45 = load %struct.list_item** %2, align 8
  %46 = getelementptr inbounds %struct.list_item* %45, i32 0, i32 0
  %47 = load %struct.list_item** %46, align 8
  %48 = getelementptr inbounds %struct.list_item* %47, i32 0, i32 1
  store %struct.list_item* %44, %struct.list_item** %48, align 8
  br label %65

; <label>:49                                      ; preds = %29
  %50 = load %struct.list_item** %2, align 8
  %51 = load %struct.list_t** %1, align 8
  %52 = getelementptr inbounds %struct.list_t* %51, i32 0, i32 1
  %53 = load %struct.list_item** %52, align 8
  %54 = getelementptr inbounds %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %50, %struct.list_item** %54, align 8
  %55 = load %struct.list_t** %1, align 8
  %56 = getelementptr inbounds %struct.list_t* %55, i32 0, i32 1
  %57 = load %struct.list_item** %56, align 8
  %58 = load %struct.list_item** %2, align 8
  %59 = getelementptr inbounds %struct.list_item* %58, i32 0, i32 0
  store %struct.list_item* %57, %struct.list_item** %59, align 8
  %60 = load %struct.list_item** %2, align 8
  %61 = getelementptr inbounds %struct.list_item* %60, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %61, align 8
  %62 = load %struct.list_item** %2, align 8
  %63 = load %struct.list_t** %1, align 8
  %64 = getelementptr inbounds %struct.list_t* %63, i32 0, i32 1
  store %struct.list_item* %62, %struct.list_item** %64, align 8
  br label %65

; <label>:65                                      ; preds = %49, %32
  br label %76

; <label>:66                                      ; preds = %0
  %67 = load %struct.list_item** %2, align 8
  %68 = load %struct.list_t** %1, align 8
  %69 = getelementptr inbounds %struct.list_t* %68, i32 0, i32 1
  store %struct.list_item* %67, %struct.list_item** %69, align 8
  %70 = load %struct.list_t** %1, align 8
  %71 = getelementptr inbounds %struct.list_t* %70, i32 0, i32 0
  store %struct.list_item* %67, %struct.list_item** %71, align 8
  %72 = load %struct.list_item** %2, align 8
  %73 = getelementptr inbounds %struct.list_item* %72, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %73, align 8
  %74 = load %struct.list_item** %2, align 8
  %75 = getelementptr inbounds %struct.list_item* %74, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %75, align 8
  br label %76

; <label>:76                                      ; preds = %66, %65
  %77 = load %struct.list_t** %1, align 8
  %78 = getelementptr inbounds %struct.list_t* %77, i32 0, i32 2
  %79 = load i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @list_item_get_datum(%struct.list_item* %li) #0 {
  %1 = alloca %struct.list_item*, align 8
  store %struct.list_item* %li, %struct.list_item** %1, align 8
  %2 = load %struct.list_item** %1, align 8
  %3 = getelementptr inbounds %struct.list_item* %2, i32 0, i32 2
  %4 = load i8** %3, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define void @list_insert_head(%struct.list_t* %l, i8* %v) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i8*, align 8
  %i = alloca %struct.list_item*, align 8
  %_tmp = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i8* %v, i8** %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #5
  store i8* %4, i8** %_tmp, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 264)
  call void @exit(i32 -1) #6
  unreachable

; <label>:9                                       ; preds = %0
  %10 = load i8** %_tmp, align 8
  store i8* %10, i8** %3
  %11 = load i8** %3
  %12 = bitcast i8* %11 to %struct.list_item*
  store %struct.list_item* %12, %struct.list_item** %i, align 8
  %13 = load %struct.list_item** %i, align 8
  %14 = load i8** %2, align 8
  call void @list_item_init(%struct.list_item* %13, i8* %14)
  %15 = load %struct.list_t** %1, align 8
  %16 = getelementptr inbounds %struct.list_t* %15, i32 0, i32 0
  %17 = load %struct.list_item** %16, align 8
  %18 = icmp ne %struct.list_item* %17, null
  br i1 %18, label %19, label %37

; <label>:19                                      ; preds = %9
  %20 = load %struct.list_t** %1, align 8
  %21 = getelementptr inbounds %struct.list_t* %20, i32 0, i32 0
  %22 = load %struct.list_item** %21, align 8
  %23 = load %struct.list_item** %i, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 1
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  %25 = load %struct.list_item** %i, align 8
  %26 = load %struct.list_t** %1, align 8
  %27 = getelementptr inbounds %struct.list_t* %26, i32 0, i32 0
  %28 = load %struct.list_item** %27, align 8
  %29 = getelementptr inbounds %struct.list_item* %28, i32 0, i32 0
  store %struct.list_item* %25, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %i, align 8
  %31 = load %struct.list_t** %1, align 8
  %32 = getelementptr inbounds %struct.list_t* %31, i32 0, i32 0
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  %33 = load %struct.list_t** %1, align 8
  %34 = getelementptr inbounds %struct.list_t* %33, i32 0, i32 0
  %35 = load %struct.list_item** %34, align 8
  %36 = getelementptr inbounds %struct.list_item* %35, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %36, align 8
  br label %47

; <label>:37                                      ; preds = %9
  %38 = load %struct.list_item** %i, align 8
  %39 = load %struct.list_t** %1, align 8
  %40 = getelementptr inbounds %struct.list_t* %39, i32 0, i32 1
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  %41 = load %struct.list_t** %1, align 8
  %42 = getelementptr inbounds %struct.list_t* %41, i32 0, i32 0
  store %struct.list_item* %38, %struct.list_item** %42, align 8
  %43 = load %struct.list_item** %i, align 8
  %44 = getelementptr inbounds %struct.list_item* %43, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %44, align 8
  %45 = load %struct.list_item** %i, align 8
  %46 = getelementptr inbounds %struct.list_item* %45, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %46, align 8
  br label %47

; <label>:47                                      ; preds = %37, %19
  %48 = load %struct.list_t** %1, align 8
  %49 = getelementptr inbounds %struct.list_t* %48, i32 0, i32 2
  %50 = load i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @list_item_init(%struct.list_item* %li, i8* %datum) #0 {
  %1 = alloca %struct.list_item*, align 8
  %2 = alloca i8*, align 8
  store %struct.list_item* %li, %struct.list_item** %1, align 8
  store i8* %datum, i8** %2, align 8
  %3 = load %struct.list_item** %1, align 8
  %4 = getelementptr inbounds %struct.list_item* %3, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %4, align 8
  %5 = load %struct.list_item** %1, align 8
  %6 = getelementptr inbounds %struct.list_item* %5, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %6, align 8
  %7 = load i8** %2, align 8
  %8 = load %struct.list_item** %1, align 8
  %9 = getelementptr inbounds %struct.list_item* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_tail(%struct.list_t* %l, i8* %v) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i8*, align 8
  %i = alloca %struct.list_item*, align 8
  %_tmp = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i8* %v, i8** %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #5
  store i8* %4, i8** %_tmp, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 281)
  call void @exit(i32 -1) #6
  unreachable

; <label>:9                                       ; preds = %0
  %10 = load i8** %_tmp, align 8
  store i8* %10, i8** %3
  %11 = load i8** %3
  %12 = bitcast i8* %11 to %struct.list_item*
  store %struct.list_item* %12, %struct.list_item** %i, align 8
  %13 = load %struct.list_item** %i, align 8
  %14 = load i8** %2, align 8
  call void @list_item_init(%struct.list_item* %13, i8* %14)
  %15 = load %struct.list_t** %1, align 8
  %16 = getelementptr inbounds %struct.list_t* %15, i32 0, i32 0
  %17 = load %struct.list_item** %16, align 8
  %18 = icmp ne %struct.list_item* %17, null
  br i1 %18, label %19, label %35

; <label>:19                                      ; preds = %9
  %20 = load %struct.list_item** %i, align 8
  %21 = load %struct.list_t** %1, align 8
  %22 = getelementptr inbounds %struct.list_t* %21, i32 0, i32 1
  %23 = load %struct.list_item** %22, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 1
  store %struct.list_item* %20, %struct.list_item** %24, align 8
  %25 = load %struct.list_t** %1, align 8
  %26 = getelementptr inbounds %struct.list_t* %25, i32 0, i32 1
  %27 = load %struct.list_item** %26, align 8
  %28 = load %struct.list_item** %i, align 8
  %29 = getelementptr inbounds %struct.list_item* %28, i32 0, i32 0
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %i, align 8
  %31 = getelementptr inbounds %struct.list_item* %30, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %31, align 8
  %32 = load %struct.list_item** %i, align 8
  %33 = load %struct.list_t** %1, align 8
  %34 = getelementptr inbounds %struct.list_t* %33, i32 0, i32 1
  store %struct.list_item* %32, %struct.list_item** %34, align 8
  br label %45

; <label>:35                                      ; preds = %9
  %36 = load %struct.list_item** %i, align 8
  %37 = load %struct.list_t** %1, align 8
  %38 = getelementptr inbounds %struct.list_t* %37, i32 0, i32 1
  store %struct.list_item* %36, %struct.list_item** %38, align 8
  %39 = load %struct.list_t** %1, align 8
  %40 = getelementptr inbounds %struct.list_t* %39, i32 0, i32 0
  store %struct.list_item* %36, %struct.list_item** %40, align 8
  %41 = load %struct.list_item** %i, align 8
  %42 = getelementptr inbounds %struct.list_item* %41, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %42, align 8
  %43 = load %struct.list_item** %i, align 8
  %44 = getelementptr inbounds %struct.list_item* %43, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %44, align 8
  br label %45

; <label>:45                                      ; preds = %35, %19
  %46 = load %struct.list_t** %1, align 8
  %47 = getelementptr inbounds %struct.list_t* %46, i32 0, i32 2
  %48 = load i32* %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %47, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_before(%struct.list_t* %l, %struct.list_item* %next, i8* %v) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  %3 = alloca i8*, align 8
  %i = alloca %struct.list_item*, align 8
  %_tmp = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %next, %struct.list_item** %2, align 8
  store i8* %v, i8** %3, align 8
  %5 = call noalias i8* @malloc(i64 24) #5
  store i8* %5, i8** %_tmp, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 298)
  call void @exit(i32 -1) #6
  unreachable

; <label>:10                                      ; preds = %0
  %11 = load i8** %_tmp, align 8
  store i8* %11, i8** %4
  %12 = load i8** %4
  %13 = bitcast i8* %12 to %struct.list_item*
  store %struct.list_item* %13, %struct.list_item** %i, align 8
  %14 = load %struct.list_item** %i, align 8
  %15 = load i8** %3, align 8
  call void @list_item_init(%struct.list_item* %14, i8* %15)
  %16 = load %struct.list_t** %1, align 8
  %17 = getelementptr inbounds %struct.list_t* %16, i32 0, i32 0
  %18 = load %struct.list_item** %17, align 8
  %19 = load %struct.list_item** %2, align 8
  %20 = icmp eq %struct.list_item* %18, %19
  br i1 %20, label %21, label %33

; <label>:21                                      ; preds = %10
  %22 = load %struct.list_item** %2, align 8
  %23 = load %struct.list_item** %i, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 1
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  %25 = load %struct.list_item** %i, align 8
  %26 = getelementptr inbounds %struct.list_item* %25, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %26, align 8
  %27 = load %struct.list_item** %i, align 8
  %28 = load %struct.list_t** %1, align 8
  %29 = getelementptr inbounds %struct.list_t* %28, i32 0, i32 0
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %i, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  br label %50

; <label>:33                                      ; preds = %10
  %34 = load %struct.list_item** %2, align 8
  %35 = load %struct.list_item** %i, align 8
  %36 = getelementptr inbounds %struct.list_item* %35, i32 0, i32 1
  store %struct.list_item* %34, %struct.list_item** %36, align 8
  %37 = load %struct.list_item** %2, align 8
  %38 = getelementptr inbounds %struct.list_item* %37, i32 0, i32 0
  %39 = load %struct.list_item** %38, align 8
  %40 = load %struct.list_item** %i, align 8
  %41 = getelementptr inbounds %struct.list_item* %40, i32 0, i32 0
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item** %i, align 8
  %43 = load %struct.list_item** %2, align 8
  %44 = getelementptr inbounds %struct.list_item* %43, i32 0, i32 0
  %45 = load %struct.list_item** %44, align 8
  %46 = getelementptr inbounds %struct.list_item* %45, i32 0, i32 1
  store %struct.list_item* %42, %struct.list_item** %46, align 8
  %47 = load %struct.list_item** %i, align 8
  %48 = load %struct.list_item** %2, align 8
  %49 = getelementptr inbounds %struct.list_item* %48, i32 0, i32 0
  store %struct.list_item* %47, %struct.list_item** %49, align 8
  br label %50

; <label>:50                                      ; preds = %33, %21
  %51 = load %struct.list_t** %1, align 8
  %52 = getelementptr inbounds %struct.list_t* %51, i32 0, i32 2
  %53 = load i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_after(%struct.list_t* %l, %struct.list_item* %pred, i8* %v) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  %3 = alloca i8*, align 8
  %i = alloca %struct.list_item*, align 8
  %_tmp = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %pred, %struct.list_item** %2, align 8
  store i8* %v, i8** %3, align 8
  %5 = call noalias i8* @malloc(i64 24) #5
  store i8* %5, i8** %_tmp, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 320)
  call void @exit(i32 -1) #6
  unreachable

; <label>:10                                      ; preds = %0
  %11 = load i8** %_tmp, align 8
  store i8* %11, i8** %4
  %12 = load i8** %4
  %13 = bitcast i8* %12 to %struct.list_item*
  store %struct.list_item* %13, %struct.list_item** %i, align 8
  %14 = load %struct.list_item** %i, align 8
  %15 = load i8** %3, align 8
  call void @list_item_init(%struct.list_item* %14, i8* %15)
  %16 = load %struct.list_t** %1, align 8
  %17 = getelementptr inbounds %struct.list_t* %16, i32 0, i32 1
  %18 = load %struct.list_item** %17, align 8
  %19 = load %struct.list_item** %2, align 8
  %20 = icmp eq %struct.list_item* %18, %19
  br i1 %20, label %21, label %33

; <label>:21                                      ; preds = %10
  %22 = load %struct.list_item** %2, align 8
  %23 = load %struct.list_item** %i, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 0
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  %25 = load %struct.list_item** %i, align 8
  %26 = getelementptr inbounds %struct.list_item* %25, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %26, align 8
  %27 = load %struct.list_item** %i, align 8
  %28 = load %struct.list_t** %1, align 8
  %29 = getelementptr inbounds %struct.list_t* %28, i32 0, i32 1
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item** %i, align 8
  %31 = load %struct.list_item** %2, align 8
  %32 = getelementptr inbounds %struct.list_item* %31, i32 0, i32 1
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  br label %50

; <label>:33                                      ; preds = %10
  %34 = load %struct.list_item** %2, align 8
  %35 = load %struct.list_item** %i, align 8
  %36 = getelementptr inbounds %struct.list_item* %35, i32 0, i32 0
  store %struct.list_item* %34, %struct.list_item** %36, align 8
  %37 = load %struct.list_item** %2, align 8
  %38 = getelementptr inbounds %struct.list_item* %37, i32 0, i32 1
  %39 = load %struct.list_item** %38, align 8
  %40 = load %struct.list_item** %i, align 8
  %41 = getelementptr inbounds %struct.list_item* %40, i32 0, i32 1
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item** %i, align 8
  %43 = load %struct.list_item** %2, align 8
  %44 = getelementptr inbounds %struct.list_item* %43, i32 0, i32 1
  %45 = load %struct.list_item** %44, align 8
  %46 = getelementptr inbounds %struct.list_item* %45, i32 0, i32 0
  store %struct.list_item* %42, %struct.list_item** %46, align 8
  %47 = load %struct.list_item** %i, align 8
  %48 = load %struct.list_item** %2, align 8
  %49 = getelementptr inbounds %struct.list_item* %48, i32 0, i32 1
  store %struct.list_item* %47, %struct.list_item** %49, align 8
  br label %50

; <label>:50                                      ; preds = %33, %21
  %51 = load %struct.list_t** %1, align 8
  %52 = getelementptr inbounds %struct.list_t* %51, i32 0, i32 2
  %53 = load i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_insert_sorted(%struct.list_t* %l, i8* %v) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i8*, align 8
  %itr = alloca %struct.list_item*, align 8
  %i = alloca %struct.list_item*, align 8
  %_tmp = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i8* %v, i8** %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #5
  store i8* %4, i8** %_tmp, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 343)
  call void @exit(i32 -1) #6
  unreachable

; <label>:9                                       ; preds = %0
  %10 = load i8** %_tmp, align 8
  store i8* %10, i8** %3
  %11 = load i8** %3
  %12 = bitcast i8* %11 to %struct.list_item*
  store %struct.list_item* %12, %struct.list_item** %i, align 8
  %13 = load %struct.list_item** %i, align 8
  %14 = load i8** %2, align 8
  call void @list_item_init(%struct.list_item* %13, i8* %14)
  %15 = load %struct.list_t** %1, align 8
  %16 = getelementptr inbounds %struct.list_t* %15, i32 0, i32 0
  %17 = load %struct.list_item** %16, align 8
  %18 = icmp ne %struct.list_item* %17, null
  br i1 %18, label %19, label %78

; <label>:19                                      ; preds = %9
  %20 = load %struct.list_t** %1, align 8
  %21 = getelementptr inbounds %struct.list_t* %20, i32 0, i32 0
  %22 = load %struct.list_item** %21, align 8
  store %struct.list_item* %22, %struct.list_item** %itr, align 8
  br label %23

; <label>:23                                      ; preds = %37, %19
  %24 = load %struct.list_item** %itr, align 8
  %25 = icmp ne %struct.list_item* %24, null
  br i1 %25, label %26, label %41

; <label>:26                                      ; preds = %23
  %27 = load %struct.list_t** %1, align 8
  %28 = getelementptr inbounds %struct.list_t* %27, i32 0, i32 3
  %29 = load i32 (i8*, i8*)** %28, align 8
  %30 = load %struct.list_item** %i, align 8
  %31 = call i8* @list_item_get_datum(%struct.list_item* %30)
  %32 = load %struct.list_item** %itr, align 8
  %33 = call i8* @list_item_get_datum(%struct.list_item* %32)
  %34 = call i32 %29(i8* %31, i8* %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

; <label>:36                                      ; preds = %26
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load %struct.list_item** %itr, align 8
  %39 = getelementptr inbounds %struct.list_item* %38, i32 0, i32 1
  %40 = load %struct.list_item** %39, align 8
  store %struct.list_item* %40, %struct.list_item** %itr, align 8
  br label %23

; <label>:41                                      ; preds = %26, %23
  %42 = load %struct.list_item** %itr, align 8
  %43 = icmp ne %struct.list_item* %42, null
  br i1 %43, label %44, label %61

; <label>:44                                      ; preds = %41
  %45 = load %struct.list_item** %itr, align 8
  %46 = load %struct.list_item** %i, align 8
  %47 = getelementptr inbounds %struct.list_item* %46, i32 0, i32 1
  store %struct.list_item* %45, %struct.list_item** %47, align 8
  %48 = load %struct.list_item** %itr, align 8
  %49 = getelementptr inbounds %struct.list_item* %48, i32 0, i32 0
  %50 = load %struct.list_item** %49, align 8
  %51 = load %struct.list_item** %i, align 8
  %52 = getelementptr inbounds %struct.list_item* %51, i32 0, i32 0
  store %struct.list_item* %50, %struct.list_item** %52, align 8
  %53 = load %struct.list_item** %i, align 8
  %54 = load %struct.list_item** %itr, align 8
  %55 = getelementptr inbounds %struct.list_item* %54, i32 0, i32 0
  store %struct.list_item* %53, %struct.list_item** %55, align 8
  %56 = load %struct.list_item** %i, align 8
  %57 = load %struct.list_item** %i, align 8
  %58 = getelementptr inbounds %struct.list_item* %57, i32 0, i32 0
  %59 = load %struct.list_item** %58, align 8
  %60 = getelementptr inbounds %struct.list_item* %59, i32 0, i32 1
  store %struct.list_item* %56, %struct.list_item** %60, align 8
  br label %77

; <label>:61                                      ; preds = %41
  %62 = load %struct.list_item** %i, align 8
  %63 = load %struct.list_t** %1, align 8
  %64 = getelementptr inbounds %struct.list_t* %63, i32 0, i32 1
  %65 = load %struct.list_item** %64, align 8
  %66 = getelementptr inbounds %struct.list_item* %65, i32 0, i32 1
  store %struct.list_item* %62, %struct.list_item** %66, align 8
  %67 = load %struct.list_t** %1, align 8
  %68 = getelementptr inbounds %struct.list_t* %67, i32 0, i32 1
  %69 = load %struct.list_item** %68, align 8
  %70 = load %struct.list_item** %i, align 8
  %71 = getelementptr inbounds %struct.list_item* %70, i32 0, i32 0
  store %struct.list_item* %69, %struct.list_item** %71, align 8
  %72 = load %struct.list_item** %i, align 8
  %73 = getelementptr inbounds %struct.list_item* %72, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %73, align 8
  %74 = load %struct.list_item** %i, align 8
  %75 = load %struct.list_t** %1, align 8
  %76 = getelementptr inbounds %struct.list_t* %75, i32 0, i32 1
  store %struct.list_item* %74, %struct.list_item** %76, align 8
  br label %77

; <label>:77                                      ; preds = %61, %44
  br label %88

; <label>:78                                      ; preds = %9
  %79 = load %struct.list_item** %i, align 8
  %80 = load %struct.list_t** %1, align 8
  %81 = getelementptr inbounds %struct.list_t* %80, i32 0, i32 1
  store %struct.list_item* %79, %struct.list_item** %81, align 8
  %82 = load %struct.list_t** %1, align 8
  %83 = getelementptr inbounds %struct.list_t* %82, i32 0, i32 0
  store %struct.list_item* %79, %struct.list_item** %83, align 8
  %84 = load %struct.list_item** %i, align 8
  %85 = getelementptr inbounds %struct.list_item* %84, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %85, align 8
  %86 = load %struct.list_item** %i, align 8
  %87 = getelementptr inbounds %struct.list_item* %86, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %87, align 8
  br label %88

; <label>:88                                      ; preds = %78, %77
  %89 = load %struct.list_t** %1, align 8
  %90 = getelementptr inbounds %struct.list_t* %89, i32 0, i32 2
  %91 = load i32* %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_remove_item(%struct.list_t* %l, %struct.list_item* %i) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item* %i, %struct.list_item** %2, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = load %struct.list_t** %1, align 8
  %5 = getelementptr inbounds %struct.list_t* %4, i32 0, i32 0
  %6 = load %struct.list_item** %5, align 8
  %7 = icmp eq %struct.list_item* %3, %6
  br i1 %7, label %8, label %29

; <label>:8                                       ; preds = %0
  %9 = load %struct.list_t** %1, align 8
  %10 = getelementptr inbounds %struct.list_t* %9, i32 0, i32 0
  %11 = load %struct.list_item** %10, align 8
  %12 = getelementptr inbounds %struct.list_item* %11, i32 0, i32 1
  %13 = load %struct.list_item** %12, align 8
  %14 = load %struct.list_t** %1, align 8
  %15 = getelementptr inbounds %struct.list_t* %14, i32 0, i32 0
  store %struct.list_item* %13, %struct.list_item** %15, align 8
  %16 = load %struct.list_t** %1, align 8
  %17 = getelementptr inbounds %struct.list_t* %16, i32 0, i32 0
  %18 = load %struct.list_item** %17, align 8
  %19 = icmp ne %struct.list_item* %18, null
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %8
  %21 = load %struct.list_t** %1, align 8
  %22 = getelementptr inbounds %struct.list_t* %21, i32 0, i32 0
  %23 = load %struct.list_item** %22, align 8
  %24 = getelementptr inbounds %struct.list_item* %23, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %24, align 8
  br label %28

; <label>:25                                      ; preds = %8
  %26 = load %struct.list_t** %1, align 8
  %27 = getelementptr inbounds %struct.list_t* %26, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %27, align 8
  br label %28

; <label>:28                                      ; preds = %25, %20
  br label %63

; <label>:29                                      ; preds = %0
  %30 = load %struct.list_item** %2, align 8
  %31 = load %struct.list_t** %1, align 8
  %32 = getelementptr inbounds %struct.list_t* %31, i32 0, i32 1
  %33 = load %struct.list_item** %32, align 8
  %34 = icmp eq %struct.list_item* %30, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %29
  %36 = load %struct.list_t** %1, align 8
  %37 = getelementptr inbounds %struct.list_t* %36, i32 0, i32 1
  %38 = load %struct.list_item** %37, align 8
  %39 = getelementptr inbounds %struct.list_item* %38, i32 0, i32 0
  %40 = load %struct.list_item** %39, align 8
  %41 = load %struct.list_t** %1, align 8
  %42 = getelementptr inbounds %struct.list_t* %41, i32 0, i32 1
  store %struct.list_item* %40, %struct.list_item** %42, align 8
  %43 = load %struct.list_t** %1, align 8
  %44 = getelementptr inbounds %struct.list_t* %43, i32 0, i32 1
  %45 = load %struct.list_item** %44, align 8
  %46 = getelementptr inbounds %struct.list_item* %45, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %46, align 8
  br label %62

; <label>:47                                      ; preds = %29
  %48 = load %struct.list_item** %2, align 8
  %49 = getelementptr inbounds %struct.list_item* %48, i32 0, i32 1
  %50 = load %struct.list_item** %49, align 8
  %51 = load %struct.list_item** %2, align 8
  %52 = getelementptr inbounds %struct.list_item* %51, i32 0, i32 0
  %53 = load %struct.list_item** %52, align 8
  %54 = getelementptr inbounds %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %50, %struct.list_item** %54, align 8
  %55 = load %struct.list_item** %2, align 8
  %56 = getelementptr inbounds %struct.list_item* %55, i32 0, i32 0
  %57 = load %struct.list_item** %56, align 8
  %58 = load %struct.list_item** %2, align 8
  %59 = getelementptr inbounds %struct.list_item* %58, i32 0, i32 1
  %60 = load %struct.list_item** %59, align 8
  %61 = getelementptr inbounds %struct.list_item* %60, i32 0, i32 0
  store %struct.list_item* %57, %struct.list_item** %61, align 8
  br label %62

; <label>:62                                      ; preds = %47, %35
  br label %63

; <label>:63                                      ; preds = %62, %28
  %64 = load %struct.list_t** %1, align 8
  %65 = getelementptr inbounds %struct.list_t* %64, i32 0, i32 2
  %66 = load i32* %65, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.list_item** %2, align 8
  %69 = load %struct.list_t** %1, align 8
  %70 = getelementptr inbounds %struct.list_t* %69, i32 0, i32 4
  %71 = load void (i8*)** %70, align 8
  call void @list_item_delete(%struct.list_item* %68, void (i8*)* %71)
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_remove_head(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  call void @list_remove_item(%struct.list_t* %2, %struct.list_item* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_remove_tail(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 1
  %5 = load %struct.list_item** %4, align 8
  call void @list_remove_item(%struct.list_t* %2, %struct.list_item* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.list_item* @list_find_item(%struct.list_t* %l, i8* %datum) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i8*, align 8
  %li = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i8* %datum, i8** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  store %struct.list_item* %5, %struct.list_item** %li, align 8
  br label %6

; <label>:6                                       ; preds = %19, %0
  %7 = load %struct.list_item** %li, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %6
  %10 = load %struct.list_t** %1, align 8
  %11 = getelementptr inbounds %struct.list_t* %10, i32 0, i32 3
  %12 = load i32 (i8*, i8*)** %11, align 8
  %13 = load i8** %2, align 8
  %14 = load %struct.list_item** %li, align 8
  %15 = call i8* @list_item_get_datum(%struct.list_item* %14)
  %16 = call i32 %12(i8* %13, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %9
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load %struct.list_item** %li, align 8
  %21 = getelementptr inbounds %struct.list_item* %20, i32 0, i32 1
  %22 = load %struct.list_item** %21, align 8
  store %struct.list_item* %22, %struct.list_item** %li, align 8
  br label %6

; <label>:23                                      ; preds = %9, %6
  %24 = load %struct.list_item** %li, align 8
  ret %struct.list_item* %24
}

; Function Attrs: nounwind uwtable
define %struct.list_item* @list_get_head_item(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 0
  %4 = load %struct.list_item** %3, align 8
  ret %struct.list_item* %4
}

; Function Attrs: nounwind uwtable
define %struct.list_item* @list_get_tail_item(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 1
  %4 = load %struct.list_item** %3, align 8
  ret %struct.list_item* %4
}

; Function Attrs: nounwind uwtable
define i8* @list_find(%struct.list_t* %l, i8* %datum) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca i8*, align 8
  %li = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store i8* %datum, i8** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  store %struct.list_item* %5, %struct.list_item** %li, align 8
  br label %6

; <label>:6                                       ; preds = %19, %0
  %7 = load %struct.list_item** %li, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %6
  %10 = load %struct.list_t** %1, align 8
  %11 = getelementptr inbounds %struct.list_t* %10, i32 0, i32 3
  %12 = load i32 (i8*, i8*)** %11, align 8
  %13 = load i8** %2, align 8
  %14 = load %struct.list_item** %li, align 8
  %15 = call i8* @list_item_get_datum(%struct.list_item* %14)
  %16 = call i32 %12(i8* %13, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %9
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load %struct.list_item** %li, align 8
  %21 = getelementptr inbounds %struct.list_item* %20, i32 0, i32 1
  %22 = load %struct.list_item** %21, align 8
  store %struct.list_item* %22, %struct.list_item** %li, align 8
  br label %6

; <label>:23                                      ; preds = %9, %6
  %24 = load %struct.list_item** %li, align 8
  %25 = icmp ne %struct.list_item* %24, null
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %23
  %27 = load %struct.list_item** %li, align 8
  %28 = getelementptr inbounds %struct.list_item* %27, i32 0, i32 2
  %29 = load i8** %28, align 8
  br label %31

; <label>:30                                      ; preds = %23
  br label %31

; <label>:31                                      ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ null, %30 ]
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i8* @list_get_head(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 0
  %4 = load %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load %struct.list_t** %1, align 8
  %8 = getelementptr inbounds %struct.list_t* %7, i32 0, i32 0
  %9 = load %struct.list_item** %8, align 8
  %10 = getelementptr inbounds %struct.list_item* %9, i32 0, i32 2
  %11 = load i8** %10, align 8
  br label %13

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %6
  %14 = phi i8* [ %11, %6 ], [ null, %12 ]
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @list_get_tail(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 1
  %4 = load %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = load %struct.list_t** %1, align 8
  %8 = getelementptr inbounds %struct.list_t* %7, i32 0, i32 1
  %9 = load %struct.list_item** %8, align 8
  %10 = getelementptr inbounds %struct.list_item* %9, i32 0, i32 2
  %11 = load i8** %10, align 8
  br label %13

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %6
  %14 = phi i8* [ %11, %6 ], [ null, %12 ]
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i32 @list_get_length(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define zeroext i1 @list_is_empty(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define zeroext i1 @list_not_empty(%struct.list_t* %l) #0 {
  %1 = alloca %struct.list_t*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  %2 = load %struct.list_t** %1, align 8
  %3 = getelementptr inbounds %struct.list_t* %2, i32 0, i32 2
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define void @list_visit_items(%struct.list_t* %l, void (i8*)* %visitor) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca void (i8*)*, align 8
  %li = alloca %struct.list_item*, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store void (i8*)* %visitor, void (i8*)** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = getelementptr inbounds %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item** %4, align 8
  store %struct.list_item* %5, %struct.list_item** %li, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.list_item** %li, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %17

; <label>:9                                       ; preds = %6
  %10 = load void (i8*)** %2, align 8
  %11 = load %struct.list_item** %li, align 8
  %12 = call i8* @list_item_get_datum(%struct.list_item* %11)
  call void %10(i8* %12)
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load %struct.list_item** %li, align 8
  %15 = getelementptr inbounds %struct.list_item* %14, i32 0, i32 1
  %16 = load %struct.list_item** %15, align 8
  store %struct.list_item* %16, %struct.list_item** %li, align 8
  br label %6

; <label>:17                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @list_iterator_init(%struct.list_t* %l, %struct.list_item** %li) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item** %li, %struct.list_item*** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = icmp ne %struct.list_t* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_t** %1, align 8
  %7 = getelementptr inbounds %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item** %7, align 8
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %5
  %11 = phi %struct.list_item* [ %8, %5 ], [ null, %9 ]
  %12 = load %struct.list_item*** %2, align 8
  store %struct.list_item* %11, %struct.list_item** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_iterator_delete(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  store %struct.list_item* null, %struct.list_item** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_iterator_next(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 1
  %9 = load %struct.list_item** %8, align 8
  %10 = load %struct.list_item*** %1, align 8
  store %struct.list_item* %9, %struct.list_item** %10, align 8
  br label %11

; <label>:11                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_iterator_prev(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 0
  %9 = load %struct.list_item** %8, align 8
  %10 = load %struct.list_item*** %1, align 8
  store %struct.list_item* %9, %struct.list_item** %10, align 8
  br label %11

; <label>:11                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @list_iterator_get_datum(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 2
  %9 = load i8** %8, align 8
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %5
  %12 = phi i8* [ %9, %5 ], [ null, %10 ]
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define zeroext i1 @list_iterator_is_valid(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define void @list_reverse_iterator_init(%struct.list_t* %l, %struct.list_item** %li) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_t* %l, %struct.list_t** %1, align 8
  store %struct.list_item** %li, %struct.list_item*** %2, align 8
  %3 = load %struct.list_t** %1, align 8
  %4 = icmp ne %struct.list_t* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_t** %1, align 8
  %7 = getelementptr inbounds %struct.list_t* %6, i32 0, i32 1
  %8 = load %struct.list_item** %7, align 8
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %5
  %11 = phi %struct.list_item* [ %8, %5 ], [ null, %9 ]
  %12 = load %struct.list_item*** %2, align 8
  store %struct.list_item* %11, %struct.list_item** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_reverse_iterator_delete(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  store %struct.list_item* null, %struct.list_item** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_reverse_iterator_next(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 0
  %9 = load %struct.list_item** %8, align 8
  %10 = load %struct.list_item*** %1, align 8
  store %struct.list_item* %9, %struct.list_item** %10, align 8
  br label %11

; <label>:11                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_reverse_iterator_prev(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 1
  %9 = load %struct.list_item** %8, align 8
  %10 = load %struct.list_item*** %1, align 8
  store %struct.list_item* %9, %struct.list_item** %10, align 8
  br label %11

; <label>:11                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @list_reverse_iterator_get_datum(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = load %struct.list_item** %2, align 8
  %4 = icmp ne %struct.list_item* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.list_item*** %1, align 8
  %7 = load %struct.list_item** %6, align 8
  %8 = getelementptr inbounds %struct.list_item* %7, i32 0, i32 2
  %9 = load i8** %8, align 8
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %5
  %12 = phi i8* [ %9, %5 ], [ null, %10 ]
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define zeroext i1 @list_reverse_iterator_is_valid(%struct.list_item** %li) #0 {
  %1 = alloca %struct.list_item**, align 8
  store %struct.list_item** %li, %struct.list_item*** %1, align 8
  %2 = load %struct.list_item*** %1, align 8
  %3 = icmp ne %struct.list_item** %2, null
  ret i1 %3
}

; Function Attrs: nounwind uwtable
define i8* @kmalloc(i32 %size) #0 {
  %1 = alloca i32, align 4
  %r = alloca i8*, align 8
  store i32 %size, i32* %1, align 4
  %2 = load i64* @freeptr, align 8
  %3 = inttoptr i64 %2 to i8*
  store i8* %3, i8** %r, align 8
  %4 = load i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64* @freeptr, align 8
  %7 = add nsw i64 %6, %5
  store i64 %7, i64* @freeptr, align 8
  %8 = load i64* @freeptr, align 8
  %9 = load i64* @malloc_size, align 8
  %10 = load i8** @mem, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = icmp sgt i64 %8, %12
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %0
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:16                                      ; preds = %0
  %17 = load i8** %r, align 8
  ret i8* %17
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i64 @transform_to_cuda(%struct.node* %root, i1 zeroext %verbose) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i8, align 1
  %one = alloca %struct.timeval, align 8
  %two = alloca %struct.timeval, align 8
  %time = alloca double, align 8
  %max_nodes = alloca i64, align 8
  %_tmp = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %k = alloca %struct.knode*, align 8
  %i = alloca i32, align 4
  %nodeindex = alloca i64, align 8
  %recordindex = alloca i64, align 8
  %queueindex = alloca i64, align 8
  %mem_used = alloca i64, align 8
  %oneD = alloca double, align 8
  %twoD = alloca double, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  %4 = zext i1 %verbose to i8
  store i8 %4, i8* %2, align 1
  %5 = call i32 @gettimeofday(%struct.timeval* %one, %struct.timezone* null) #5
  %6 = load i32* @order, align 4
  %7 = sitofp i32 %6 to double
  %8 = load i64* @size, align 8
  %9 = sitofp i64 %8 to double
  %10 = call double @log(double %9) #5
  %11 = load i32* @order, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 2.000000e+00
  %14 = call double @log(double %13) #5
  %15 = fdiv double %10, %14
  %16 = fsub double %15, 1.000000e+00
  %17 = call double @pow(double %7, double %16) #5
  %18 = fadd double %17, 1.000000e+00
  %19 = fptosi double %18 to i64
  store i64 %19, i64* %max_nodes, align 8
  %20 = load i64* @size, align 8
  %21 = mul i64 %20, 4
  %22 = load i64* %max_nodes, align 8
  %23 = mul i64 %22, 2068
  %24 = add i64 %21, %23
  store i64 %24, i64* @malloc_size, align 8
  %25 = load i64* @malloc_size, align 8
  %26 = call noalias i8* @malloc(i64 %25) #5
  store i8* %26, i8** %_tmp, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %0
  %29 = load %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 521)
  call void @exit(i32 -1) #6
  unreachable

; <label>:31                                      ; preds = %0
  %32 = load i8** %_tmp, align 8
  store i8* %32, i8** %3
  %33 = load i8** %3
  store i8* %33, i8** @mem, align 8
  %34 = load i8** @mem, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %31
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:38                                      ; preds = %31
  %39 = load i8** @mem, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* @freeptr, align 8
  %41 = load i64* @size, align 8
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i8* @kmalloc(i32 %43)
  %45 = bitcast i8* %44 to %struct.record*
  store %struct.record* %45, %struct.record** @krecords, align 8
  %46 = load i64* %max_nodes, align 8
  %47 = mul i64 %46, 2068
  %48 = trunc i64 %47 to i32
  %49 = call i8* @kmalloc(i32 %48)
  %50 = bitcast i8* %49 to %struct.knode*
  store %struct.knode* %50, %struct.knode** @knodes, align 8
  store %struct.node* null, %struct.node** @queue, align 8
  %51 = load %struct.node** %1, align 8
  call void @enqueue(%struct.node* %51)
  store i64 0, i64* %nodeindex, align 8
  store i64 0, i64* %recordindex, align 8
  store i64 0, i64* %queueindex, align 8
  %52 = load i64* %nodeindex, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %nodeindex, align 8
  %54 = trunc i64 %52 to i32
  %55 = load %struct.knode** @knodes, align 8
  %56 = getelementptr inbounds %struct.knode* %55, i64 0
  %57 = getelementptr inbounds %struct.knode* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

; <label>:58                                      ; preds = %292, %38
  %59 = load %struct.node** @queue, align 8
  %60 = icmp ne %struct.node* %59, null
  br i1 %60, label %61, label %293

; <label>:61                                      ; preds = %58
  %62 = call %struct.node* @dequeue()
  store %struct.node* %62, %struct.node** %n, align 8
  %63 = load i64* %queueindex, align 8
  %64 = load %struct.knode** @knodes, align 8
  %65 = getelementptr inbounds %struct.knode* %64, i64 %63
  store %struct.knode* %65, %struct.knode** %k, align 8
  %66 = load i64* %queueindex, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %queueindex, align 8
  %68 = trunc i64 %66 to i32
  %69 = load %struct.knode** %k, align 8
  %70 = getelementptr inbounds %struct.knode* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.node** %n, align 8
  %72 = getelementptr inbounds %struct.node* %71, i32 0, i32 3
  %73 = load i8* %72, align 1
  %74 = trunc i8 %73 to i1
  %75 = load %struct.knode** %k, align 8
  %76 = getelementptr inbounds %struct.knode* %75, i32 0, i32 3
  %77 = zext i1 %74 to i8
  store i8 %77, i8* %76, align 1
  %78 = load %struct.node** %n, align 8
  %79 = getelementptr inbounds %struct.node* %78, i32 0, i32 4
  %80 = load i32* %79, align 4
  %81 = add nsw i32 %80, 2
  %82 = load %struct.knode** %k, align 8
  %83 = getelementptr inbounds %struct.knode* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.knode** %k, align 8
  %85 = getelementptr inbounds %struct.knode* %84, i32 0, i32 2
  %86 = getelementptr inbounds [257 x i32]* %85, i32 0, i64 0
  store i32 -2147483648, i32* %86, align 4
  %87 = load %struct.knode** %k, align 8
  %88 = getelementptr inbounds %struct.knode* %87, i32 0, i32 4
  %89 = load i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load %struct.knode** %k, align 8
  %93 = getelementptr inbounds %struct.knode* %92, i32 0, i32 2
  %94 = getelementptr inbounds [257 x i32]* %93, i32 0, i64 %91
  store i32 2147483647, i32* %94, align 4
  %95 = load %struct.knode** %k, align 8
  %96 = getelementptr inbounds %struct.knode* %95, i32 0, i32 4
  %97 = load i32* %96, align 4
  store i32 %97, i32* %i, align 4
  br label %98

; <label>:98                                      ; preds = %108, %61
  %99 = load i32* %i, align 4
  %100 = load i32* @order, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %111

; <label>:102                                     ; preds = %98
  %103 = load i32* %i, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.knode** %k, align 8
  %106 = getelementptr inbounds %struct.knode* %105, i32 0, i32 2
  %107 = getelementptr inbounds [257 x i32]* %106, i32 0, i64 %104
  store i32 2147483647, i32* %107, align 4
  br label %108

; <label>:108                                     ; preds = %102
  %109 = load i32* %i, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4
  br label %98

; <label>:111                                     ; preds = %98
  %112 = load %struct.knode** %k, align 8
  %113 = getelementptr inbounds %struct.knode* %112, i32 0, i32 3
  %114 = load i8* %113, align 1
  %115 = trunc i8 %114 to i1
  br i1 %115, label %174, label %116

; <label>:116                                     ; preds = %111
  %117 = load i64* %nodeindex, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %nodeindex, align 8
  %119 = trunc i64 %117 to i32
  %120 = load %struct.knode** %k, align 8
  %121 = getelementptr inbounds %struct.knode* %120, i32 0, i32 1
  %122 = getelementptr inbounds [257 x i32]* %121, i32 0, i64 0
  store i32 %119, i32* %122, align 4
  store i32 1, i32* %i, align 4
  br label %123

; <label>:123                                     ; preds = %161, %116
  %124 = load i32* %i, align 4
  %125 = load %struct.knode** %k, align 8
  %126 = getelementptr inbounds %struct.knode* %125, i32 0, i32 4
  %127 = load i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %164

; <label>:130                                     ; preds = %123
  %131 = load i32* %i, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = load %struct.node** %n, align 8
  %135 = getelementptr inbounds %struct.node* %134, i32 0, i32 1
  %136 = load i32** %135, align 8
  %137 = getelementptr inbounds i32* %136, i64 %133
  %138 = load i32* %137, align 4
  %139 = load i32* %i, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.knode** %k, align 8
  %142 = getelementptr inbounds %struct.knode* %141, i32 0, i32 2
  %143 = getelementptr inbounds [257 x i32]* %142, i32 0, i64 %140
  store i32 %138, i32* %143, align 4
  %144 = load i32* %i, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = load %struct.node** %n, align 8
  %148 = getelementptr inbounds %struct.node* %147, i32 0, i32 0
  %149 = load i8*** %148, align 8
  %150 = getelementptr inbounds i8** %149, i64 %146
  %151 = load i8** %150, align 8
  %152 = bitcast i8* %151 to %struct.node*
  call void @enqueue(%struct.node* %152)
  %153 = load i64* %nodeindex, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %nodeindex, align 8
  %155 = trunc i64 %153 to i32
  %156 = load i32* %i, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.knode** %k, align 8
  %159 = getelementptr inbounds %struct.knode* %158, i32 0, i32 1
  %160 = getelementptr inbounds [257 x i32]* %159, i32 0, i64 %157
  store i32 %155, i32* %160, align 4
  br label %161

; <label>:161                                     ; preds = %130
  %162 = load i32* %i, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %i, align 4
  br label %123

; <label>:164                                     ; preds = %123
  %165 = load i32* %i, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = load %struct.node** %n, align 8
  %169 = getelementptr inbounds %struct.node* %168, i32 0, i32 0
  %170 = load i8*** %169, align 8
  %171 = getelementptr inbounds i8** %170, i64 %167
  %172 = load i8** %171, align 8
  %173 = bitcast i8* %172 to %struct.node*
  call void @enqueue(%struct.node* %173)
  br label %226

; <label>:174                                     ; preds = %111
  %175 = load %struct.knode** %k, align 8
  %176 = getelementptr inbounds %struct.knode* %175, i32 0, i32 1
  %177 = getelementptr inbounds [257 x i32]* %176, i32 0, i64 0
  store i32 0, i32* %177, align 4
  store i32 1, i32* %i, align 4
  br label %178

; <label>:178                                     ; preds = %222, %174
  %179 = load i32* %i, align 4
  %180 = load %struct.knode** %k, align 8
  %181 = getelementptr inbounds %struct.knode* %180, i32 0, i32 4
  %182 = load i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %225

; <label>:185                                     ; preds = %178
  %186 = load i32* %i, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = load %struct.node** %n, align 8
  %190 = getelementptr inbounds %struct.node* %189, i32 0, i32 1
  %191 = load i32** %190, align 8
  %192 = getelementptr inbounds i32* %191, i64 %188
  %193 = load i32* %192, align 4
  %194 = load i32* %i, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.knode** %k, align 8
  %197 = getelementptr inbounds %struct.knode* %196, i32 0, i32 2
  %198 = getelementptr inbounds [257 x i32]* %197, i32 0, i64 %195
  store i32 %193, i32* %198, align 4
  %199 = load i32* %i, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = load %struct.node** %n, align 8
  %203 = getelementptr inbounds %struct.node* %202, i32 0, i32 0
  %204 = load i8*** %203, align 8
  %205 = getelementptr inbounds i8** %204, i64 %201
  %206 = load i8** %205, align 8
  %207 = bitcast i8* %206 to %struct.record*
  %208 = getelementptr inbounds %struct.record* %207, i32 0, i32 0
  %209 = load i32* %208, align 4
  %210 = load i64* %recordindex, align 8
  %211 = load %struct.record** @krecords, align 8
  %212 = getelementptr inbounds %struct.record* %211, i64 %210
  %213 = getelementptr inbounds %struct.record* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 4
  %214 = load i64* %recordindex, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %recordindex, align 8
  %216 = trunc i64 %214 to i32
  %217 = load i32* %i, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.knode** %k, align 8
  %220 = getelementptr inbounds %struct.knode* %219, i32 0, i32 1
  %221 = getelementptr inbounds [257 x i32]* %220, i32 0, i64 %218
  store i32 %216, i32* %221, align 4
  br label %222

; <label>:222                                     ; preds = %185
  %223 = load i32* %i, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4
  br label %178

; <label>:225                                     ; preds = %178
  br label %226

; <label>:226                                     ; preds = %225, %164
  %227 = load i64* %queueindex, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.knode** %k, align 8
  %230 = getelementptr inbounds %struct.knode* %229, i32 0, i32 4
  %231 = load i32* %230, align 4
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = load %struct.knode** %k, align 8
  %235 = getelementptr inbounds %struct.knode* %234, i32 0, i32 1
  %236 = getelementptr inbounds [257 x i32]* %235, i32 0, i64 %233
  store i32 %228, i32* %236, align 4
  %237 = load i8* %2, align 1
  %238 = trunc i8 %237 to i1
  br i1 %238, label %239, label %292

; <label>:239                                     ; preds = %226
  %240 = load %struct.knode** %k, align 8
  %241 = getelementptr inbounds %struct.knode* %240, i32 0, i32 0
  %242 = load i32* %241, align 4
  %243 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), i32 %242)
  %244 = load %struct.knode** %k, align 8
  %245 = getelementptr inbounds %struct.knode* %244, i32 0, i32 3
  %246 = load i8* %245, align 1
  %247 = trunc i8 %246 to i1
  %248 = zext i1 %247 to i32
  %249 = load %struct.knode** %k, align 8
  %250 = getelementptr inbounds %struct.knode* %249, i32 0, i32 4
  %251 = load i32* %250, align 4
  %252 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str5, i32 0, i32 0), i32 %248, i32 %251)
  %253 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %254

; <label>:254                                     ; preds = %268, %239
  %255 = load i32* %i, align 4
  %256 = load %struct.knode** %k, align 8
  %257 = getelementptr inbounds %struct.knode* %256, i32 0, i32 4
  %258 = load i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %271

; <label>:260                                     ; preds = %254
  %261 = load i32* %i, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.knode** %k, align 8
  %264 = getelementptr inbounds %struct.knode* %263, i32 0, i32 1
  %265 = getelementptr inbounds [257 x i32]* %264, i32 0, i64 %262
  %266 = load i32* %265, align 4
  %267 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 %266)
  br label %268

; <label>:268                                     ; preds = %260
  %269 = load i32* %i, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %i, align 4
  br label %254

; <label>:271                                     ; preds = %254
  %272 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %273

; <label>:273                                     ; preds = %287, %271
  %274 = load i32* %i, align 4
  %275 = load %struct.knode** %k, align 8
  %276 = getelementptr inbounds %struct.knode* %275, i32 0, i32 4
  %277 = load i32* %276, align 4
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %290

; <label>:279                                     ; preds = %273
  %280 = load i32* %i, align 4
  %281 = sext i32 %280 to i64
  %282 = load %struct.knode** %k, align 8
  %283 = getelementptr inbounds %struct.knode* %282, i32 0, i32 2
  %284 = getelementptr inbounds [257 x i32]* %283, i32 0, i64 %281
  %285 = load i32* %284, align 4
  %286 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 %285)
  br label %287

; <label>:287                                     ; preds = %279
  %288 = load i32* %i, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %i, align 4
  br label %273

; <label>:290                                     ; preds = %273
  %291 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0))
  br label %292

; <label>:292                                     ; preds = %290, %226
  br label %58

; <label>:293                                     ; preds = %58
  %294 = load i64* @size, align 8
  %295 = mul i64 %294, 4
  %296 = load i64* %nodeindex, align 8
  %297 = mul i64 %296, 2068
  %298 = add i64 %295, %297
  store i64 %298, i64* %mem_used, align 8
  %299 = load i8* %2, align 1
  %300 = trunc i8 %299 to i1
  br i1 %300, label %301, label %329

; <label>:301                                     ; preds = %293
  store i32 0, i32* %i, align 4
  br label %302

; <label>:302                                     ; preds = %315, %301
  %303 = load i32* %i, align 4
  %304 = sext i32 %303 to i64
  %305 = load i64* @size, align 8
  %306 = icmp slt i64 %304, %305
  br i1 %306, label %307, label %318

; <label>:307                                     ; preds = %302
  %308 = load i32* %i, align 4
  %309 = sext i32 %308 to i64
  %310 = load %struct.record** @krecords, align 8
  %311 = getelementptr inbounds %struct.record* %310, i64 %309
  %312 = getelementptr inbounds %struct.record* %311, i32 0, i32 0
  %313 = load i32* %312, align 4
  %314 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 %313)
  br label %315

; <label>:315                                     ; preds = %307
  %316 = load i32* %i, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %i, align 4
  br label %302

; <label>:318                                     ; preds = %302
  %319 = load i64* @size, align 8
  %320 = load i64* @size, align 8
  %321 = mul i64 %320, 4
  %322 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str11, i32 0, i32 0), i64 %319, i64 4, i64 %321)
  %323 = load i64* %nodeindex, align 8
  %324 = load i64* %nodeindex, align 8
  %325 = mul i64 %324, 2068
  %326 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str12, i32 0, i32 0), i64 %323, i64 2068, i64 %325)
  %327 = load i64* %mem_used, align 8
  %328 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str13, i32 0, i32 0), i64 %327)
  br label %329

; <label>:329                                     ; preds = %318, %293
  %330 = call i32 @gettimeofday(%struct.timeval* %two, %struct.timezone* null) #5
  %331 = getelementptr inbounds %struct.timeval* %one, i32 0, i32 0
  %332 = load i64* %331, align 8
  %333 = sitofp i64 %332 to double
  %334 = getelementptr inbounds %struct.timeval* %one, i32 0, i32 1
  %335 = load i64* %334, align 8
  %336 = sitofp i64 %335 to double
  %337 = fmul double %336, 1.000000e-06
  %338 = fadd double %333, %337
  store double %338, double* %oneD, align 8
  %339 = getelementptr inbounds %struct.timeval* %two, i32 0, i32 0
  %340 = load i64* %339, align 8
  %341 = sitofp i64 %340 to double
  %342 = getelementptr inbounds %struct.timeval* %two, i32 0, i32 1
  %343 = load i64* %342, align 8
  %344 = sitofp i64 %343 to double
  %345 = fmul double %344, 1.000000e-06
  %346 = fadd double %341, %345
  store double %346, double* %twoD, align 8
  %347 = load double* %twoD, align 8
  %348 = load double* %oneD, align 8
  %349 = fsub double %347, %348
  store double %349, double* %time, align 8
  %350 = load double* %time, align 8
  %351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str14, i32 0, i32 0), double %350)
  %352 = load i64* %mem_used, align 8
  ret i64 %352
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define void @enqueue(%struct.node* %new_node) #0 {
  %1 = alloca %struct.node*, align 8
  %c = alloca %struct.node*, align 8
  store %struct.node* %new_node, %struct.node** %1, align 8
  %2 = load %struct.node** @queue, align 8
  %3 = icmp eq %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node** %1, align 8
  store %struct.node* %5, %struct.node** @queue, align 8
  %6 = load %struct.node** @queue, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 5
  store %struct.node* null, %struct.node** %7, align 8
  br label %25

; <label>:8                                       ; preds = %0
  %9 = load %struct.node** @queue, align 8
  store %struct.node* %9, %struct.node** %c, align 8
  br label %10

; <label>:10                                      ; preds = %15, %8
  %11 = load %struct.node** %c, align 8
  %12 = getelementptr inbounds %struct.node* %11, i32 0, i32 5
  %13 = load %struct.node** %12, align 8
  %14 = icmp ne %struct.node* %13, null
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %10
  %16 = load %struct.node** %c, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 0, i32 5
  %18 = load %struct.node** %17, align 8
  store %struct.node* %18, %struct.node** %c, align 8
  br label %10

; <label>:19                                      ; preds = %10
  %20 = load %struct.node** %1, align 8
  %21 = load %struct.node** %c, align 8
  %22 = getelementptr inbounds %struct.node* %21, i32 0, i32 5
  store %struct.node* %20, %struct.node** %22, align 8
  %23 = load %struct.node** %1, align 8
  %24 = getelementptr inbounds %struct.node* %23, i32 0, i32 5
  store %struct.node* null, %struct.node** %24, align 8
  br label %25

; <label>:25                                      ; preds = %19, %4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.node* @dequeue() #0 {
  %n = alloca %struct.node*, align 8
  %1 = load %struct.node** @queue, align 8
  store %struct.node* %1, %struct.node** %n, align 8
  %2 = load %struct.node** @queue, align 8
  %3 = getelementptr inbounds %struct.node* %2, i32 0, i32 5
  %4 = load %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** @queue, align 8
  %5 = load %struct.node** %n, align 8
  %6 = getelementptr inbounds %struct.node* %5, i32 0, i32 5
  store %struct.node* null, %struct.node** %6, align 8
  %7 = load %struct.node** %n, align 8
  ret %struct.node* %7
}

; Function Attrs: nounwind uwtable
define %struct.list_t* @findRange(%struct.node* %root, i32 %start, i32 %end) #0 {
  %1 = alloca %struct.list_t*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  %retList = alloca %struct.list_t*, align 8
  %_tmp = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %counter = alloca i32, align 4
  %cont = alloca i8, align 1
  store %struct.node* %root, %struct.node** %2, align 8
  store i32 %start, i32* %3, align 4
  store i32 %end, i32* %4, align 4
  %6 = load %struct.node** %2, align 8
  %7 = load i32* %3, align 4
  %8 = call %struct.node* @find_leaf(%struct.node* %6, i32 %7, i1 zeroext false)
  store %struct.node* %8, %struct.node** %c, align 8
  %9 = load %struct.node** %c, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.list_t* null, %struct.list_t** %1
  br label %78

; <label>:12                                      ; preds = %0
  %13 = call noalias i8* @malloc(i64 40) #5
  store i8* %13, i8** %_tmp, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

; <label>:15                                      ; preds = %12
  %16 = load %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 628)
  call void @exit(i32 -1) #6
  unreachable

; <label>:18                                      ; preds = %12
  %19 = load i8** %_tmp, align 8
  store i8* %19, i8** %5
  %20 = load i8** %5
  %21 = bitcast i8* %20 to %struct.list_t*
  store %struct.list_t* %21, %struct.list_t** %retList, align 8
  %22 = load %struct.list_t** %retList, align 8
  call void @list_init(%struct.list_t* %22, i32 (i8*, i8*)* null, void (i8*)* null)
  store i32 0, i32* %counter, align 4
  store i8 1, i8* %cont, align 1
  br label %23

; <label>:23                                      ; preds = %66, %18
  %24 = load i8* %cont, align 1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %23
  %27 = load %struct.node** %c, align 8
  %28 = icmp ne %struct.node* %27, null
  br label %29

; <label>:29                                      ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %76

; <label>:31                                      ; preds = %29
  store i8 0, i8* %cont, align 1
  store i32 0, i32* %i, align 4
  br label %32

; <label>:32                                      ; preds = %63, %31
  %33 = load i32* %i, align 4
  %34 = load %struct.node** %c, align 8
  %35 = getelementptr inbounds %struct.node* %34, i32 0, i32 4
  %36 = load i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %66

; <label>:38                                      ; preds = %32
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.node** %c, align 8
  %42 = getelementptr inbounds %struct.node* %41, i32 0, i32 1
  %43 = load i32** %42, align 8
  %44 = getelementptr inbounds i32* %43, i64 %40
  %45 = load i32* %44, align 4
  %46 = load i32* %3, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %61

; <label>:48                                      ; preds = %38
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.node** %c, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 1
  %53 = load i32** %52, align 8
  %54 = getelementptr inbounds i32* %53, i64 %50
  %55 = load i32* %54, align 4
  %56 = load i32* %4, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %61

; <label>:58                                      ; preds = %48
  %59 = load i32* %counter, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %counter, align 4
  store i8 1, i8* %cont, align 1
  br label %62

; <label>:61                                      ; preds = %48, %38
  store i8 0, i8* %cont, align 1
  br label %66

; <label>:62                                      ; preds = %58
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32* %i, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i, align 4
  br label %32

; <label>:66                                      ; preds = %61, %32
  %67 = load i32* @order, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = load %struct.node** %c, align 8
  %71 = getelementptr inbounds %struct.node* %70, i32 0, i32 0
  %72 = load i8*** %71, align 8
  %73 = getelementptr inbounds i8** %72, i64 %69
  %74 = load i8** %73, align 8
  %75 = bitcast i8* %74 to %struct.node*
  store %struct.node* %75, %struct.node** %c, align 8
  br label %23

; <label>:76                                      ; preds = %29
  %77 = load %struct.list_t** %retList, align 8
  store %struct.list_t* %77, %struct.list_t** %1
  br label %78

; <label>:78                                      ; preds = %76, %11
  %79 = load %struct.list_t** %1
  ret %struct.list_t* %79
}

; Function Attrs: nounwind uwtable
define %struct.node* @find_leaf(%struct.node* %root, i32 %key, i1 zeroext %verbose) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %i = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store i32 %key, i32* %3, align 4
  %5 = zext i1 %verbose to i8
  store i8 %5, i8* %4, align 1
  store i32 0, i32* %i, align 4
  %6 = load %struct.node** %2, align 8
  store %struct.node* %6, %struct.node** %c, align 8
  %7 = load %struct.node** %c, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %0
  %10 = load i8* %4, align 1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %9
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %12, %9
  %15 = load %struct.node** %c, align 8
  store %struct.node* %15, %struct.node** %1
  br label %128

; <label>:16                                      ; preds = %0
  br label %17

; <label>:17                                      ; preds = %84, %16
  %18 = load %struct.node** %c, align 8
  %19 = getelementptr inbounds %struct.node* %18, i32 0, i32 3
  %20 = load i8* %19, align 1
  %21 = trunc i8 %20 to i1
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %93

; <label>:23                                      ; preds = %17
  %24 = load i8* %4, align 1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %26, label %56

; <label>:26                                      ; preds = %23
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str43, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %44, %26
  %29 = load i32* %i, align 4
  %30 = load %struct.node** %c, align 8
  %31 = getelementptr inbounds %struct.node* %30, i32 0, i32 4
  %32 = load i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %28
  %36 = load i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.node** %c, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 1
  %40 = load i32** %39, align 8
  %41 = getelementptr inbounds i32* %40, i64 %37
  %42 = load i32* %41, align 4
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 %42)
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load i32* %i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4
  br label %28

; <label>:47                                      ; preds = %28
  %48 = load i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.node** %c, align 8
  %51 = getelementptr inbounds %struct.node* %50, i32 0, i32 1
  %52 = load i32** %51, align 8
  %53 = getelementptr inbounds i32* %52, i64 %49
  %54 = load i32* %53, align 4
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0), i32 %54)
  br label %56

; <label>:56                                      ; preds = %47, %23
  store i32 0, i32* %i, align 4
  br label %57

; <label>:57                                      ; preds = %77, %56
  %58 = load i32* %i, align 4
  %59 = load %struct.node** %c, align 8
  %60 = getelementptr inbounds %struct.node* %59, i32 0, i32 4
  %61 = load i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %78

; <label>:63                                      ; preds = %57
  %64 = load i32* %3, align 4
  %65 = load i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.node** %c, align 8
  %68 = getelementptr inbounds %struct.node* %67, i32 0, i32 1
  %69 = load i32** %68, align 8
  %70 = getelementptr inbounds i32* %69, i64 %66
  %71 = load i32* %70, align 4
  %72 = icmp sge i32 %64, %71
  br i1 %72, label %73, label %76

; <label>:73                                      ; preds = %63
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4
  br label %77

; <label>:76                                      ; preds = %63
  br label %78

; <label>:77                                      ; preds = %73
  br label %57

; <label>:78                                      ; preds = %76, %57
  %79 = load i8* %4, align 1
  %80 = trunc i8 %79 to i1
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %78
  %82 = load i32* %i, align 4
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str45, i32 0, i32 0), i32 %82)
  br label %84

; <label>:84                                      ; preds = %81, %78
  %85 = load i32* %i, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.node** %c, align 8
  %88 = getelementptr inbounds %struct.node* %87, i32 0, i32 0
  %89 = load i8*** %88, align 8
  %90 = getelementptr inbounds i8** %89, i64 %86
  %91 = load i8** %90, align 8
  %92 = bitcast i8* %91 to %struct.node*
  store %struct.node* %92, %struct.node** %c, align 8
  br label %17

; <label>:93                                      ; preds = %17
  %94 = load i8* %4, align 1
  %95 = trunc i8 %94 to i1
  br i1 %95, label %96, label %126

; <label>:96                                      ; preds = %93
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %98

; <label>:98                                      ; preds = %114, %96
  %99 = load i32* %i, align 4
  %100 = load %struct.node** %c, align 8
  %101 = getelementptr inbounds %struct.node* %100, i32 0, i32 4
  %102 = load i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %117

; <label>:105                                     ; preds = %98
  %106 = load i32* %i, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.node** %c, align 8
  %109 = getelementptr inbounds %struct.node* %108, i32 0, i32 1
  %110 = load i32** %109, align 8
  %111 = getelementptr inbounds i32* %110, i64 %107
  %112 = load i32* %111, align 4
  %113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 %112)
  br label %114

; <label>:114                                     ; preds = %105
  %115 = load i32* %i, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %i, align 4
  br label %98

; <label>:117                                     ; preds = %98
  %118 = load i32* %i, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.node** %c, align 8
  %121 = getelementptr inbounds %struct.node* %120, i32 0, i32 1
  %122 = load i32** %121, align 8
  %123 = getelementptr inbounds i32* %122, i64 %119
  %124 = load i32* %123, align 4
  %125 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str47, i32 0, i32 0), i32 %124)
  br label %126

; <label>:126                                     ; preds = %117, %93
  %127 = load %struct.node** %c, align 8
  store %struct.node* %127, %struct.node** %1
  br label %128

; <label>:128                                     ; preds = %126, %14
  %129 = load %struct.node** %1
  ret %struct.node* %129
}

; Function Attrs: nounwind uwtable
define void @usage_1() #0 {
  %1 = load i32* @order, align 4
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str15, i32 0, i32 0), i32 %1)
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([72 x i8]* @.str18, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([74 x i8]* @.str19, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str20, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str21, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([86 x i8]* @.str22, i32 0, i32 0))
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([63 x i8]* @.str23, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @usage_2() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str24, i32 0, i32 0))
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str25, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str26, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str27, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str28, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([82 x i8]* @.str29, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str30, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str31, i32 0, i32 0))
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([74 x i8]* @.str32, i32 0, i32 0))
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str33, i32 0, i32 0))
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_leaves(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  %2 = load %struct.node** %1, align 8
  store %struct.node* %2, %struct.node** %c, align 8
  %3 = load %struct.node** %1, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0))
  br label %74

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %14, %7
  %9 = load %struct.node** %c, align 8
  %10 = getelementptr inbounds %struct.node* %9, i32 0, i32 3
  %11 = load i8* %10, align 1
  %12 = trunc i8 %11 to i1
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %8
  %15 = load %struct.node** %c, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 0
  %17 = load i8*** %16, align 8
  %18 = getelementptr inbounds i8** %17, i64 0
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %c, align 8
  br label %8

; <label>:21                                      ; preds = %8
  br label %22

; <label>:22                                      ; preds = %71, %21
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %42, %22
  %24 = load i32* %i, align 4
  %25 = load %struct.node** %c, align 8
  %26 = getelementptr inbounds %struct.node* %25, i32 0, i32 4
  %27 = load i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %45

; <label>:29                                      ; preds = %23
  %30 = load i8* @verbose_output, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %41

; <label>:32                                      ; preds = %29
  %33 = load i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.node** %c, align 8
  %36 = getelementptr inbounds %struct.node* %35, i32 0, i32 1
  %37 = load i32** %36, align 8
  %38 = getelementptr inbounds i32* %37, i64 %34
  %39 = load i32* %38, align 4
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 %39)
  br label %41

; <label>:41                                      ; preds = %32, %29
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %23

; <label>:45                                      ; preds = %23
  %46 = load i8* @verbose_output, align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %71

; <label>:48                                      ; preds = %45
  %49 = load i32* @order, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load %struct.node** %c, align 8
  %53 = getelementptr inbounds %struct.node* %52, i32 0, i32 0
  %54 = load i8*** %53, align 8
  %55 = getelementptr inbounds i8** %54, i64 %51
  %56 = load i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %69

; <label>:58                                      ; preds = %48
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0))
  %60 = load i32* @order, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load %struct.node** %c, align 8
  %64 = getelementptr inbounds %struct.node* %63, i32 0, i32 0
  %65 = load i8*** %64, align 8
  %66 = getelementptr inbounds i8** %65, i64 %62
  %67 = load i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.node*
  store %struct.node* %68, %struct.node** %c, align 8
  br label %70

; <label>:69                                      ; preds = %48
  br label %72

; <label>:70                                      ; preds = %58
  br label %71

; <label>:71                                      ; preds = %70, %45
  br label %22

; <label>:72                                      ; preds = %69
  %73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str37, i32 0, i32 0))
  br label %74

; <label>:74                                      ; preds = %72, %5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @height(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  %h = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store i32 0, i32* %h, align 4
  %2 = load %struct.node** %1, align 8
  store %struct.node* %2, %struct.node** %c, align 8
  br label %3

; <label>:3                                       ; preds = %9, %0
  %4 = load %struct.node** %c, align 8
  %5 = getelementptr inbounds %struct.node* %4, i32 0, i32 3
  %6 = load i8* %5, align 1
  %7 = trunc i8 %6 to i1
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %3
  %10 = load %struct.node** %c, align 8
  %11 = getelementptr inbounds %struct.node* %10, i32 0, i32 0
  %12 = load i8*** %11, align 8
  %13 = getelementptr inbounds i8** %12, i64 0
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.node*
  store %struct.node* %15, %struct.node** %c, align 8
  %16 = load i32* %h, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %h, align 4
  br label %3

; <label>:18                                      ; preds = %3
  %19 = load i32* %h, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @path_to_root(%struct.node* %root, %struct.node* %child) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %length = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %child, %struct.node** %2, align 8
  store i32 0, i32* %length, align 4
  %3 = load %struct.node** %2, align 8
  store %struct.node* %3, %struct.node** %c, align 8
  br label %4

; <label>:4                                       ; preds = %8, %0
  %5 = load %struct.node** %c, align 8
  %6 = load %struct.node** %1, align 8
  %7 = icmp ne %struct.node* %5, %6
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %4
  %9 = load %struct.node** %c, align 8
  %10 = getelementptr inbounds %struct.node* %9, i32 0, i32 2
  %11 = load %struct.node** %10, align 8
  store %struct.node* %11, %struct.node** %c, align 8
  %12 = load i32* %length, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %length, align 4
  br label %4

; <label>:14                                      ; preds = %4
  %15 = load i32* %length, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @print_tree(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %n = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %rank = alloca i32, align 4
  %new_rank = alloca i32, align 4
  store %struct.node* %root, %struct.node** %1, align 8
  %2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0))
  store %struct._IO_FILE* %2, %struct._IO_FILE** %file, align 8
  store %struct.node* null, %struct.node** %n, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %rank, align 4
  store i32 0, i32* %new_rank, align 4
  %3 = load %struct.node** %1, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** %file, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0))
  br label %147

; <label>:8                                       ; preds = %0
  store %struct.node* null, %struct.node** @queue, align 8
  %9 = load %struct.node** %1, align 8
  call void @enqueue(%struct.node* %9)
  br label %10

; <label>:10                                      ; preds = %139, %8
  %11 = load %struct.node** @queue, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %142

; <label>:13                                      ; preds = %10
  %14 = call %struct.node* @dequeue()
  store %struct.node* %14, %struct.node** %n, align 8
  %15 = load %struct.node** %n, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 2
  %17 = load %struct.node** %16, align 8
  %18 = icmp ne %struct.node* %17, null
  br i1 %18, label %19, label %42

; <label>:19                                      ; preds = %13
  %20 = load %struct.node** %n, align 8
  %21 = load %struct.node** %n, align 8
  %22 = getelementptr inbounds %struct.node* %21, i32 0, i32 2
  %23 = load %struct.node** %22, align 8
  %24 = getelementptr inbounds %struct.node* %23, i32 0, i32 0
  %25 = load i8*** %24, align 8
  %26 = getelementptr inbounds i8** %25, i64 0
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.node*
  %29 = icmp eq %struct.node* %20, %28
  br i1 %29, label %30, label %42

; <label>:30                                      ; preds = %19
  %31 = load %struct.node** %1, align 8
  %32 = load %struct.node** %n, align 8
  %33 = call i32 @path_to_root(%struct.node* %31, %struct.node* %32)
  store i32 %33, i32* %new_rank, align 4
  %34 = load i32* %new_rank, align 4
  %35 = load i32* %rank, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %30
  %38 = load i32* %new_rank, align 4
  store i32 %38, i32* %rank, align 4
  %39 = load %struct._IO_FILE** %file, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8]* @.str37, i32 0, i32 0))
  br label %41

; <label>:41                                      ; preds = %37, %30
  br label %42

; <label>:42                                      ; preds = %41, %19, %13
  %43 = load i8* @verbose_output, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %42
  %46 = load %struct._IO_FILE** %file, align 8
  %47 = load %struct.node** %n, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), %struct.node* %47)
  br label %49

; <label>:49                                      ; preds = %45, %42
  store i32 0, i32* %i, align 4
  br label %50

; <label>:50                                      ; preds = %79, %49
  %51 = load i32* %i, align 4
  %52 = load %struct.node** %n, align 8
  %53 = getelementptr inbounds %struct.node* %52, i32 0, i32 4
  %54 = load i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %82

; <label>:56                                      ; preds = %50
  %57 = load i8* @verbose_output, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %69

; <label>:59                                      ; preds = %56
  %60 = load %struct._IO_FILE** %file, align 8
  %61 = load i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.node** %n, align 8
  %64 = getelementptr inbounds %struct.node* %63, i32 0, i32 0
  %65 = load i8*** %64, align 8
  %66 = getelementptr inbounds i8** %65, i64 %62
  %67 = load i8** %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* %67)
  br label %69

; <label>:69                                      ; preds = %59, %56
  %70 = load %struct._IO_FILE** %file, align 8
  %71 = load i32* %i, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.node** %n, align 8
  %74 = getelementptr inbounds %struct.node* %73, i32 0, i32 1
  %75 = load i32** %74, align 8
  %76 = getelementptr inbounds i32* %75, i64 %72
  %77 = load i32* %76, align 4
  %78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 %77)
  br label %79

; <label>:79                                      ; preds = %69
  %80 = load i32* %i, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %i, align 4
  br label %50

; <label>:82                                      ; preds = %50
  %83 = load %struct.node** %n, align 8
  %84 = getelementptr inbounds %struct.node* %83, i32 0, i32 3
  %85 = load i8* %84, align 1
  %86 = trunc i8 %85 to i1
  br i1 %86, label %107, label %87

; <label>:87                                      ; preds = %82
  store i32 0, i32* %i, align 4
  br label %88

; <label>:88                                      ; preds = %103, %87
  %89 = load i32* %i, align 4
  %90 = load %struct.node** %n, align 8
  %91 = getelementptr inbounds %struct.node* %90, i32 0, i32 4
  %92 = load i32* %91, align 4
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %106

; <label>:94                                      ; preds = %88
  %95 = load i32* %i, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.node** %n, align 8
  %98 = getelementptr inbounds %struct.node* %97, i32 0, i32 0
  %99 = load i8*** %98, align 8
  %100 = getelementptr inbounds i8** %99, i64 %96
  %101 = load i8** %100, align 8
  %102 = bitcast i8* %101 to %struct.node*
  call void @enqueue(%struct.node* %102)
  br label %103

; <label>:103                                     ; preds = %94
  %104 = load i32* %i, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %i, align 4
  br label %88

; <label>:106                                     ; preds = %88
  br label %107

; <label>:107                                     ; preds = %106, %82
  %108 = load i8* @verbose_output, align 1
  %109 = trunc i8 %108 to i1
  br i1 %109, label %110, label %139

; <label>:110                                     ; preds = %107
  %111 = load %struct.node** %n, align 8
  %112 = getelementptr inbounds %struct.node* %111, i32 0, i32 3
  %113 = load i8* %112, align 1
  %114 = trunc i8 %113 to i1
  br i1 %114, label %115, label %126

; <label>:115                                     ; preds = %110
  %116 = load %struct._IO_FILE** %file, align 8
  %117 = load i32* @order, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = load %struct.node** %n, align 8
  %121 = getelementptr inbounds %struct.node* %120, i32 0, i32 0
  %122 = load i8*** %121, align 8
  %123 = getelementptr inbounds i8** %122, i64 %119
  %124 = load i8** %123, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* %124)
  br label %138

; <label>:126                                     ; preds = %110
  %127 = load %struct._IO_FILE** %file, align 8
  %128 = load %struct.node** %n, align 8
  %129 = getelementptr inbounds %struct.node* %128, i32 0, i32 4
  %130 = load i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.node** %n, align 8
  %133 = getelementptr inbounds %struct.node* %132, i32 0, i32 0
  %134 = load i8*** %133, align 8
  %135 = getelementptr inbounds i8** %134, i64 %131
  %136 = load i8** %135, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* %136)
  br label %138

; <label>:138                                     ; preds = %126, %115
  br label %139

; <label>:139                                     ; preds = %138, %107
  %140 = load %struct._IO_FILE** %file, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0))
  br label %10

; <label>:142                                     ; preds = %10
  %143 = load %struct._IO_FILE** %file, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([2 x i8]* @.str37, i32 0, i32 0))
  %145 = load %struct._IO_FILE** %file, align 8
  %146 = call i32 @fclose(%struct._IO_FILE* %145)
  br label %147

; <label>:147                                     ; preds = %142, %5
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct.record* @find(%struct.node* %root, i32 %key, i1 zeroext %verbose) #0 {
  %1 = alloca %struct.record*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %i = alloca i32, align 4
  %c = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store i32 %key, i32* %3, align 4
  %5 = zext i1 %verbose to i8
  store i8 %5, i8* %4, align 1
  store i32 0, i32* %i, align 4
  %6 = load %struct.node** %2, align 8
  %7 = load i32* %3, align 4
  %8 = load i8* %4, align 1
  %9 = trunc i8 %8 to i1
  %10 = call %struct.node* @find_leaf(%struct.node* %6, i32 %7, i1 zeroext %9)
  store %struct.node* %10, %struct.node** %c, align 8
  %11 = load %struct.node** %c, align 8
  %12 = icmp eq %struct.node* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store %struct.record* null, %struct.record** %1
  br label %52

; <label>:14                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %33, %14
  %16 = load i32* %i, align 4
  %17 = load %struct.node** %c, align 8
  %18 = getelementptr inbounds %struct.node* %17, i32 0, i32 4
  %19 = load i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %15
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.node** %c, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 1
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i64 %23
  %28 = load i32* %27, align 4
  %29 = load i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %21
  br label %36

; <label>:32                                      ; preds = %21
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32* %i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4
  br label %15

; <label>:36                                      ; preds = %31, %15
  %37 = load i32* %i, align 4
  %38 = load %struct.node** %c, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 4
  %40 = load i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %36
  store %struct.record* null, %struct.record** %1
  br label %52

; <label>:43                                      ; preds = %36
  %44 = load i32* %i, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.node** %c, align 8
  %47 = getelementptr inbounds %struct.node* %46, i32 0, i32 0
  %48 = load i8*** %47, align 8
  %49 = getelementptr inbounds i8** %48, i64 %45
  %50 = load i8** %49, align 8
  %51 = bitcast i8* %50 to %struct.record*
  store %struct.record* %51, %struct.record** %1
  br label %52

; <label>:52                                      ; preds = %43, %42, %13
  %53 = load %struct.record** %1
  ret %struct.record* %53
}

; Function Attrs: nounwind uwtable
define i32 @cut(i32 %length) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %length, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = srem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* %1
  br label %13

; <label>:9                                       ; preds = %0
  %10 = load i32* %2, align 4
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1
  br label %13

; <label>:13                                      ; preds = %9, %6
  %14 = load i32* %1
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define %struct.record* @make_record(i32 %value) #0 {
  %1 = alloca i32, align 4
  %new_record = alloca %struct.record*, align 8
  %_tmp = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i32 %value, i32* %1, align 4
  %3 = call noalias i8* @malloc(i64 4) #5
  store i8* %3, i8** %_tmp, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 881)
  call void @exit(i32 -1) #6
  unreachable

; <label>:8                                       ; preds = %0
  %9 = load i8** %_tmp, align 8
  store i8* %9, i8** %2
  %10 = load i8** %2
  %11 = bitcast i8* %10 to %struct.record*
  store %struct.record* %11, %struct.record** %new_record, align 8
  %12 = load %struct.record** %new_record, align 8
  %13 = icmp eq %struct.record* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %8
  call void @perror(i8* getelementptr inbounds ([17 x i8]* @.str48, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:15                                      ; preds = %8
  %16 = load i32* %1, align 4
  %17 = load %struct.record** %new_record, align 8
  %18 = getelementptr inbounds %struct.record* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load %struct.record** %new_record, align 8
  ret %struct.record* %20
}

declare void @perror(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.node* @make_node() #0 {
  %new_node = alloca %struct.node*, align 8
  %_tmp = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %_tmp1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %_tmp2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call noalias i8* @malloc(i64 40) #5
  store i8* %4, i8** %_tmp, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 895)
  call void @exit(i32 -1) #6
  unreachable

; <label>:9                                       ; preds = %0
  %10 = load i8** %_tmp, align 8
  store i8* %10, i8** %1
  %11 = load i8** %1
  %12 = bitcast i8* %11 to %struct.node*
  store %struct.node* %12, %struct.node** %new_node, align 8
  %13 = load %struct.node** %new_node, align 8
  %14 = icmp eq %struct.node* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %9
  call void @perror(i8* getelementptr inbounds ([15 x i8]* @.str49, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:16                                      ; preds = %9
  %17 = load i32* @order, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = call noalias i8* @malloc(i64 %20) #5
  store i8* %21, i8** %_tmp1, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %16
  %24 = load %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 900)
  call void @exit(i32 -1) #6
  unreachable

; <label>:26                                      ; preds = %16
  %27 = load i8** %_tmp1, align 8
  store i8* %27, i8** %2
  %28 = load i8** %2
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.node** %new_node, align 8
  %31 = getelementptr inbounds %struct.node* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.node** %new_node, align 8
  %33 = getelementptr inbounds %struct.node* %32, i32 0, i32 1
  %34 = load i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %26
  call void @perror(i8* getelementptr inbounds ([21 x i8]* @.str50, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:37                                      ; preds = %26
  %38 = load i32* @order, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call noalias i8* @malloc(i64 %40) #5
  store i8* %41, i8** %_tmp2, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

; <label>:43                                      ; preds = %37
  %44 = load %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 905)
  call void @exit(i32 -1) #6
  unreachable

; <label>:46                                      ; preds = %37
  %47 = load i8** %_tmp2, align 8
  store i8* %47, i8** %3
  %48 = load i8** %3
  %49 = bitcast i8* %48 to i8**
  %50 = load %struct.node** %new_node, align 8
  %51 = getelementptr inbounds %struct.node* %50, i32 0, i32 0
  store i8** %49, i8*** %51, align 8
  %52 = load %struct.node** %new_node, align 8
  %53 = getelementptr inbounds %struct.node* %52, i32 0, i32 0
  %54 = load i8*** %53, align 8
  %55 = icmp eq i8** %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %46
  call void @perror(i8* getelementptr inbounds ([25 x i8]* @.str51, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:57                                      ; preds = %46
  %58 = load %struct.node** %new_node, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 3
  store i8 0, i8* %59, align 1
  %60 = load %struct.node** %new_node, align 8
  %61 = getelementptr inbounds %struct.node* %60, i32 0, i32 4
  store i32 0, i32* %61, align 4
  %62 = load %struct.node** %new_node, align 8
  %63 = getelementptr inbounds %struct.node* %62, i32 0, i32 2
  store %struct.node* null, %struct.node** %63, align 8
  %64 = load %struct.node** %new_node, align 8
  %65 = getelementptr inbounds %struct.node* %64, i32 0, i32 5
  store %struct.node* null, %struct.node** %65, align 8
  %66 = load %struct.node** %new_node, align 8
  ret %struct.node* %66
}

; Function Attrs: nounwind uwtable
define %struct.node* @make_leaf() #0 {
  %leaf = alloca %struct.node*, align 8
  %1 = call %struct.node* @make_node()
  store %struct.node* %1, %struct.node** %leaf, align 8
  %2 = load %struct.node** %leaf, align 8
  %3 = getelementptr inbounds %struct.node* %2, i32 0, i32 3
  store i8 1, i8* %3, align 1
  %4 = load %struct.node** %leaf, align 8
  ret %struct.node* %4
}

; Function Attrs: nounwind uwtable
define i32 @get_left_index(%struct.node* %parent, %struct.node* %left) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %left_index = alloca i32, align 4
  store %struct.node* %parent, %struct.node** %1, align 8
  store %struct.node* %left, %struct.node** %2, align 8
  store i32 0, i32* %left_index, align 4
  br label %3

; <label>:3                                       ; preds = %22, %0
  %4 = load i32* %left_index, align 4
  %5 = load %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node* %5, i32 0, i32 4
  %7 = load i32* %6, align 4
  %8 = icmp sle i32 %4, %7
  br i1 %8, label %9, label %20

; <label>:9                                       ; preds = %3
  %10 = load i32* %left_index, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.node** %1, align 8
  %13 = getelementptr inbounds %struct.node* %12, i32 0, i32 0
  %14 = load i8*** %13, align 8
  %15 = getelementptr inbounds i8** %14, i64 %11
  %16 = load i8** %15, align 8
  %17 = load %struct.node** %2, align 8
  %18 = bitcast %struct.node* %17 to i8*
  %19 = icmp ne i8* %16, %18
  br label %20

; <label>:20                                      ; preds = %9, %3
  %21 = phi i1 [ false, %3 ], [ %19, %9 ]
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %20
  %23 = load i32* %left_index, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %left_index, align 4
  br label %3

; <label>:25                                      ; preds = %20
  %26 = load i32* %left_index, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_leaf(%struct.node* %leaf, i32 %key, %struct.record* %pointer) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %i = alloca i32, align 4
  %insertion_point = alloca i32, align 4
  store %struct.node* %leaf, %struct.node** %1, align 8
  store i32 %key, i32* %2, align 4
  store %struct.record* %pointer, %struct.record** %3, align 8
  store i32 0, i32* %insertion_point, align 4
  br label %4

; <label>:4                                       ; preds = %22, %0
  %5 = load i32* %insertion_point, align 4
  %6 = load %struct.node** %1, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 4
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %4
  %11 = load i32* %insertion_point, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.node** %1, align 8
  %14 = getelementptr inbounds %struct.node* %13, i32 0, i32 1
  %15 = load i32** %14, align 8
  %16 = getelementptr inbounds i32* %15, i64 %12
  %17 = load i32* %16, align 4
  %18 = load i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %10, %4
  %21 = phi i1 [ false, %4 ], [ %19, %10 ]
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %20
  %23 = load i32* %insertion_point, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %insertion_point, align 4
  br label %4

; <label>:25                                      ; preds = %20
  %26 = load %struct.node** %1, align 8
  %27 = getelementptr inbounds %struct.node* %26, i32 0, i32 4
  %28 = load i32* %27, align 4
  store i32 %28, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %62, %25
  %30 = load i32* %i, align 4
  %31 = load i32* %insertion_point, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %65

; <label>:33                                      ; preds = %29
  %34 = load i32* %i, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load %struct.node** %1, align 8
  %38 = getelementptr inbounds %struct.node* %37, i32 0, i32 1
  %39 = load i32** %38, align 8
  %40 = getelementptr inbounds i32* %39, i64 %36
  %41 = load i32* %40, align 4
  %42 = load i32* %i, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.node** %1, align 8
  %45 = getelementptr inbounds %struct.node* %44, i32 0, i32 1
  %46 = load i32** %45, align 8
  %47 = getelementptr inbounds i32* %46, i64 %43
  store i32 %41, i32* %47, align 4
  %48 = load i32* %i, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load %struct.node** %1, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 0
  %53 = load i8*** %52, align 8
  %54 = getelementptr inbounds i8** %53, i64 %50
  %55 = load i8** %54, align 8
  %56 = load i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.node** %1, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 0
  %60 = load i8*** %59, align 8
  %61 = getelementptr inbounds i8** %60, i64 %57
  store i8* %55, i8** %61, align 8
  br label %62

; <label>:62                                      ; preds = %33
  %63 = load i32* %i, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %i, align 4
  br label %29

; <label>:65                                      ; preds = %29
  %66 = load i32* %2, align 4
  %67 = load i32* %insertion_point, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.node** %1, align 8
  %70 = getelementptr inbounds %struct.node* %69, i32 0, i32 1
  %71 = load i32** %70, align 8
  %72 = getelementptr inbounds i32* %71, i64 %68
  store i32 %66, i32* %72, align 4
  %73 = load %struct.record** %3, align 8
  %74 = bitcast %struct.record* %73 to i8*
  %75 = load i32* %insertion_point, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.node** %1, align 8
  %78 = getelementptr inbounds %struct.node* %77, i32 0, i32 0
  %79 = load i8*** %78, align 8
  %80 = getelementptr inbounds i8** %79, i64 %76
  store i8* %74, i8** %80, align 8
  %81 = load %struct.node** %1, align 8
  %82 = getelementptr inbounds %struct.node* %81, i32 0, i32 4
  %83 = load i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.node** %1, align 8
  ret %struct.node* %85
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_leaf_after_splitting(%struct.node* %root, %struct.node* %leaf, i32 %key, %struct.record* %pointer) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %new_leaf = alloca %struct.node*, align 8
  %temp_keys = alloca i32*, align 8
  %temp_pointers = alloca i8**, align 8
  %insertion_index = alloca i32, align 4
  %split = alloca i32, align 4
  %new_key = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %_tmp = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %_tmp1 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %leaf, %struct.node** %2, align 8
  store i32 %key, i32* %3, align 4
  store %struct.record* %pointer, %struct.record** %4, align 8
  %7 = call %struct.node* @make_leaf()
  store %struct.node* %7, %struct.node** %new_leaf, align 8
  %8 = load i32* @order, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = call noalias i8* @malloc(i64 %10) #5
  store i8* %11, i8** %_tmp, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 968)
  call void @exit(i32 -1) #6
  unreachable

; <label>:16                                      ; preds = %0
  %17 = load i8** %_tmp, align 8
  store i8* %17, i8** %5
  %18 = load i8** %5
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %temp_keys, align 8
  %20 = load i32** %temp_keys, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %16
  call void @perror(i8* getelementptr inbounds ([22 x i8]* @.str52, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:23                                      ; preds = %16
  %24 = load i32* @order, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 %26) #5
  store i8* %27, i8** %_tmp1, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

; <label>:29                                      ; preds = %23
  %30 = load %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 974)
  call void @exit(i32 -1) #6
  unreachable

; <label>:32                                      ; preds = %23
  %33 = load i8** %_tmp1, align 8
  store i8* %33, i8** %6
  %34 = load i8** %6
  %35 = bitcast i8* %34 to i8**
  store i8** %35, i8*** %temp_pointers, align 8
  %36 = load i8*** %temp_pointers, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %32
  call void @perror(i8* getelementptr inbounds ([26 x i8]* @.str53, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:39                                      ; preds = %32
  store i32 0, i32* %insertion_index, align 4
  br label %40

; <label>:40                                      ; preds = %57, %39
  %41 = load i32* %insertion_index, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.node** %2, align 8
  %44 = getelementptr inbounds %struct.node* %43, i32 0, i32 1
  %45 = load i32** %44, align 8
  %46 = getelementptr inbounds i32* %45, i64 %42
  %47 = load i32* %46, align 4
  %48 = load i32* %3, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %40
  %51 = load i32* %insertion_index, align 4
  %52 = load i32* @order, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br label %55

; <label>:55                                      ; preds = %50, %40
  %56 = phi i1 [ false, %40 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %55
  %58 = load i32* %insertion_index, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %insertion_index, align 4
  br label %40

; <label>:60                                      ; preds = %55
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %61

; <label>:61                                      ; preds = %97, %60
  %62 = load i32* %i, align 4
  %63 = load %struct.node** %2, align 8
  %64 = getelementptr inbounds %struct.node* %63, i32 0, i32 4
  %65 = load i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %102

; <label>:67                                      ; preds = %61
  %68 = load i32* %j, align 4
  %69 = load i32* %insertion_index, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %67
  %72 = load i32* %j, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %j, align 4
  br label %74

; <label>:74                                      ; preds = %71, %67
  %75 = load i32* %i, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.node** %2, align 8
  %78 = getelementptr inbounds %struct.node* %77, i32 0, i32 1
  %79 = load i32** %78, align 8
  %80 = getelementptr inbounds i32* %79, i64 %76
  %81 = load i32* %80, align 4
  %82 = load i32* %j, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32** %temp_keys, align 8
  %85 = getelementptr inbounds i32* %84, i64 %83
  store i32 %81, i32* %85, align 4
  %86 = load i32* %i, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.node** %2, align 8
  %89 = getelementptr inbounds %struct.node* %88, i32 0, i32 0
  %90 = load i8*** %89, align 8
  %91 = getelementptr inbounds i8** %90, i64 %87
  %92 = load i8** %91, align 8
  %93 = load i32* %j, align 4
  %94 = sext i32 %93 to i64
  %95 = load i8*** %temp_pointers, align 8
  %96 = getelementptr inbounds i8** %95, i64 %94
  store i8* %92, i8** %96, align 8
  br label %97

; <label>:97                                      ; preds = %74
  %98 = load i32* %i, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %i, align 4
  %100 = load i32* %j, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %j, align 4
  br label %61

; <label>:102                                     ; preds = %61
  %103 = load i32* %3, align 4
  %104 = load i32* %insertion_index, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32** %temp_keys, align 8
  %107 = getelementptr inbounds i32* %106, i64 %105
  store i32 %103, i32* %107, align 4
  %108 = load %struct.record** %4, align 8
  %109 = bitcast %struct.record* %108 to i8*
  %110 = load i32* %insertion_index, align 4
  %111 = sext i32 %110 to i64
  %112 = load i8*** %temp_pointers, align 8
  %113 = getelementptr inbounds i8** %112, i64 %111
  store i8* %109, i8** %113, align 8
  %114 = load %struct.node** %2, align 8
  %115 = getelementptr inbounds %struct.node* %114, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = load i32* @order, align 4
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @cut(i32 %117)
  store i32 %118, i32* %split, align 4
  store i32 0, i32* %i, align 4
  br label %119

; <label>:119                                     ; preds = %150, %102
  %120 = load i32* %i, align 4
  %121 = load i32* %split, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %153

; <label>:123                                     ; preds = %119
  %124 = load i32* %i, align 4
  %125 = sext i32 %124 to i64
  %126 = load i8*** %temp_pointers, align 8
  %127 = getelementptr inbounds i8** %126, i64 %125
  %128 = load i8** %127, align 8
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.node** %2, align 8
  %132 = getelementptr inbounds %struct.node* %131, i32 0, i32 0
  %133 = load i8*** %132, align 8
  %134 = getelementptr inbounds i8** %133, i64 %130
  store i8* %128, i8** %134, align 8
  %135 = load i32* %i, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32** %temp_keys, align 8
  %138 = getelementptr inbounds i32* %137, i64 %136
  %139 = load i32* %138, align 4
  %140 = load i32* %i, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.node** %2, align 8
  %143 = getelementptr inbounds %struct.node* %142, i32 0, i32 1
  %144 = load i32** %143, align 8
  %145 = getelementptr inbounds i32* %144, i64 %141
  store i32 %139, i32* %145, align 4
  %146 = load %struct.node** %2, align 8
  %147 = getelementptr inbounds %struct.node* %146, i32 0, i32 4
  %148 = load i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

; <label>:150                                     ; preds = %123
  %151 = load i32* %i, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i, align 4
  br label %119

; <label>:153                                     ; preds = %119
  %154 = load i32* %split, align 4
  store i32 %154, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %155

; <label>:155                                     ; preds = %186, %153
  %156 = load i32* %i, align 4
  %157 = load i32* @order, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %191

; <label>:159                                     ; preds = %155
  %160 = load i32* %i, align 4
  %161 = sext i32 %160 to i64
  %162 = load i8*** %temp_pointers, align 8
  %163 = getelementptr inbounds i8** %162, i64 %161
  %164 = load i8** %163, align 8
  %165 = load i32* %j, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.node** %new_leaf, align 8
  %168 = getelementptr inbounds %struct.node* %167, i32 0, i32 0
  %169 = load i8*** %168, align 8
  %170 = getelementptr inbounds i8** %169, i64 %166
  store i8* %164, i8** %170, align 8
  %171 = load i32* %i, align 4
  %172 = sext i32 %171 to i64
  %173 = load i32** %temp_keys, align 8
  %174 = getelementptr inbounds i32* %173, i64 %172
  %175 = load i32* %174, align 4
  %176 = load i32* %j, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.node** %new_leaf, align 8
  %179 = getelementptr inbounds %struct.node* %178, i32 0, i32 1
  %180 = load i32** %179, align 8
  %181 = getelementptr inbounds i32* %180, i64 %177
  store i32 %175, i32* %181, align 4
  %182 = load %struct.node** %new_leaf, align 8
  %183 = getelementptr inbounds %struct.node* %182, i32 0, i32 4
  %184 = load i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

; <label>:186                                     ; preds = %159
  %187 = load i32* %i, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %i, align 4
  %189 = load i32* %j, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %j, align 4
  br label %155

; <label>:191                                     ; preds = %155
  %192 = load i8*** %temp_pointers, align 8
  %193 = bitcast i8** %192 to i8*
  call void @free(i8* %193) #5
  %194 = load i32** %temp_keys, align 8
  %195 = bitcast i32* %194 to i8*
  call void @free(i8* %195) #5
  %196 = load i32* @order, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = load %struct.node** %2, align 8
  %200 = getelementptr inbounds %struct.node* %199, i32 0, i32 0
  %201 = load i8*** %200, align 8
  %202 = getelementptr inbounds i8** %201, i64 %198
  %203 = load i8** %202, align 8
  %204 = load i32* @order, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = load %struct.node** %new_leaf, align 8
  %208 = getelementptr inbounds %struct.node* %207, i32 0, i32 0
  %209 = load i8*** %208, align 8
  %210 = getelementptr inbounds i8** %209, i64 %206
  store i8* %203, i8** %210, align 8
  %211 = load %struct.node** %new_leaf, align 8
  %212 = bitcast %struct.node* %211 to i8*
  %213 = load i32* @order, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = load %struct.node** %2, align 8
  %217 = getelementptr inbounds %struct.node* %216, i32 0, i32 0
  %218 = load i8*** %217, align 8
  %219 = getelementptr inbounds i8** %218, i64 %215
  store i8* %212, i8** %219, align 8
  %220 = load %struct.node** %2, align 8
  %221 = getelementptr inbounds %struct.node* %220, i32 0, i32 4
  %222 = load i32* %221, align 4
  store i32 %222, i32* %i, align 4
  br label %223

; <label>:223                                     ; preds = %235, %191
  %224 = load i32* %i, align 4
  %225 = load i32* @order, align 4
  %226 = sub nsw i32 %225, 1
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %238

; <label>:228                                     ; preds = %223
  %229 = load i32* %i, align 4
  %230 = sext i32 %229 to i64
  %231 = load %struct.node** %2, align 8
  %232 = getelementptr inbounds %struct.node* %231, i32 0, i32 0
  %233 = load i8*** %232, align 8
  %234 = getelementptr inbounds i8** %233, i64 %230
  store i8* null, i8** %234, align 8
  br label %235

; <label>:235                                     ; preds = %228
  %236 = load i32* %i, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %i, align 4
  br label %223

; <label>:238                                     ; preds = %223
  %239 = load %struct.node** %new_leaf, align 8
  %240 = getelementptr inbounds %struct.node* %239, i32 0, i32 4
  %241 = load i32* %240, align 4
  store i32 %241, i32* %i, align 4
  br label %242

; <label>:242                                     ; preds = %254, %238
  %243 = load i32* %i, align 4
  %244 = load i32* @order, align 4
  %245 = sub nsw i32 %244, 1
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %257

; <label>:247                                     ; preds = %242
  %248 = load i32* %i, align 4
  %249 = sext i32 %248 to i64
  %250 = load %struct.node** %new_leaf, align 8
  %251 = getelementptr inbounds %struct.node* %250, i32 0, i32 0
  %252 = load i8*** %251, align 8
  %253 = getelementptr inbounds i8** %252, i64 %249
  store i8* null, i8** %253, align 8
  br label %254

; <label>:254                                     ; preds = %247
  %255 = load i32* %i, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %i, align 4
  br label %242

; <label>:257                                     ; preds = %242
  %258 = load %struct.node** %2, align 8
  %259 = getelementptr inbounds %struct.node* %258, i32 0, i32 2
  %260 = load %struct.node** %259, align 8
  %261 = load %struct.node** %new_leaf, align 8
  %262 = getelementptr inbounds %struct.node* %261, i32 0, i32 2
  store %struct.node* %260, %struct.node** %262, align 8
  %263 = load %struct.node** %new_leaf, align 8
  %264 = getelementptr inbounds %struct.node* %263, i32 0, i32 1
  %265 = load i32** %264, align 8
  %266 = getelementptr inbounds i32* %265, i64 0
  %267 = load i32* %266, align 4
  store i32 %267, i32* %new_key, align 4
  %268 = load %struct.node** %1, align 8
  %269 = load %struct.node** %2, align 8
  %270 = load i32* %new_key, align 4
  %271 = load %struct.node** %new_leaf, align 8
  %272 = call %struct.node* @insert_into_parent(%struct.node* %268, %struct.node* %269, i32 %270, %struct.node* %271)
  ret %struct.node* %272
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_parent(%struct.node* %root, %struct.node* %left, i32 %key, %struct.node* %right) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %left_index = alloca i32, align 4
  %parent = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store %struct.node* %left, %struct.node** %3, align 8
  store i32 %key, i32* %4, align 4
  store %struct.node* %right, %struct.node** %5, align 8
  %6 = load %struct.node** %3, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 2
  %8 = load %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %parent, align 8
  %9 = load %struct.node** %parent, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = load %struct.node** %3, align 8
  %13 = load i32* %4, align 4
  %14 = load %struct.node** %5, align 8
  %15 = call %struct.node* @insert_into_new_root(%struct.node* %12, i32 %13, %struct.node* %14)
  store %struct.node* %15, %struct.node** %1
  br label %40

; <label>:16                                      ; preds = %0
  %17 = load %struct.node** %parent, align 8
  %18 = load %struct.node** %3, align 8
  %19 = call i32 @get_left_index(%struct.node* %17, %struct.node* %18)
  store i32 %19, i32* %left_index, align 4
  %20 = load %struct.node** %parent, align 8
  %21 = getelementptr inbounds %struct.node* %20, i32 0, i32 4
  %22 = load i32* %21, align 4
  %23 = load i32* @order, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %16
  %27 = load %struct.node** %2, align 8
  %28 = load %struct.node** %parent, align 8
  %29 = load i32* %left_index, align 4
  %30 = load i32* %4, align 4
  %31 = load %struct.node** %5, align 8
  %32 = call %struct.node* @insert_into_node(%struct.node* %27, %struct.node* %28, i32 %29, i32 %30, %struct.node* %31)
  store %struct.node* %32, %struct.node** %1
  br label %40

; <label>:33                                      ; preds = %16
  %34 = load %struct.node** %2, align 8
  %35 = load %struct.node** %parent, align 8
  %36 = load i32* %left_index, align 4
  %37 = load i32* %4, align 4
  %38 = load %struct.node** %5, align 8
  %39 = call %struct.node* @insert_into_node_after_splitting(%struct.node* %34, %struct.node* %35, i32 %36, i32 %37, %struct.node* %38)
  store %struct.node* %39, %struct.node** %1
  br label %40

; <label>:40                                      ; preds = %33, %26, %11
  %41 = load %struct.node** %1
  ret %struct.node* %41
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_node(%struct.node* %root, %struct.node* %n, i32 %left_index, i32 %key, %struct.node* %right) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %n, %struct.node** %2, align 8
  store i32 %left_index, i32* %3, align 4
  store i32 %key, i32* %4, align 4
  store %struct.node* %right, %struct.node** %5, align 8
  %6 = load %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 4
  %8 = load i32* %7, align 4
  store i32 %8, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %42, %0
  %10 = load i32* %i, align 4
  %11 = load i32* %3, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %45

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 0, i32 0
  %18 = load i8*** %17, align 8
  %19 = getelementptr inbounds i8** %18, i64 %15
  %20 = load i8** %19, align 8
  %21 = load i32* %i, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = load %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 0
  %26 = load i8*** %25, align 8
  %27 = getelementptr inbounds i8** %26, i64 %23
  store i8* %20, i8** %27, align 8
  %28 = load i32* %i, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = load %struct.node** %2, align 8
  %32 = getelementptr inbounds %struct.node* %31, i32 0, i32 1
  %33 = load i32** %32, align 8
  %34 = getelementptr inbounds i32* %33, i64 %30
  %35 = load i32* %34, align 4
  %36 = load i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.node** %2, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 1
  %40 = load i32** %39, align 8
  %41 = getelementptr inbounds i32* %40, i64 %37
  store i32 %35, i32* %41, align 4
  br label %42

; <label>:42                                      ; preds = %13
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %i, align 4
  br label %9

; <label>:45                                      ; preds = %9
  %46 = load %struct.node** %5, align 8
  %47 = bitcast %struct.node* %46 to i8*
  %48 = load i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 0
  %53 = load i8*** %52, align 8
  %54 = getelementptr inbounds i8** %53, i64 %50
  store i8* %47, i8** %54, align 8
  %55 = load i32* %4, align 4
  %56 = load i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.node** %2, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 1
  %60 = load i32** %59, align 8
  %61 = getelementptr inbounds i32* %60, i64 %57
  store i32 %55, i32* %61, align 4
  %62 = load %struct.node** %2, align 8
  %63 = getelementptr inbounds %struct.node* %62, i32 0, i32 4
  %64 = load i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.node** %1, align 8
  ret %struct.node* %66
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_node_after_splitting(%struct.node* %root, %struct.node* %old_node, i32 %left_index, i32 %key, %struct.node* %right) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %split = alloca i32, align 4
  %k_prime = alloca i32, align 4
  %new_node = alloca %struct.node*, align 8
  %child = alloca %struct.node*, align 8
  %temp_keys = alloca i32*, align 8
  %temp_pointers = alloca %struct.node**, align 8
  %_tmp = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %_tmp1 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %old_node, %struct.node** %2, align 8
  store i32 %left_index, i32* %3, align 4
  store i32 %key, i32* %4, align 4
  store %struct.node* %right, %struct.node** %5, align 8
  %8 = load i32* @order, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #5
  store i8* %12, i8** %_tmp, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1063)
  call void @exit(i32 -1) #6
  unreachable

; <label>:17                                      ; preds = %0
  %18 = load i8** %_tmp, align 8
  store i8* %18, i8** %6
  %19 = load i8** %6
  %20 = bitcast i8* %19 to %struct.node**
  store %struct.node** %20, %struct.node*** %temp_pointers, align 8
  %21 = load %struct.node*** %temp_pointers, align 8
  %22 = icmp eq %struct.node** %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %17
  call void @perror(i8* getelementptr inbounds ([46 x i8]* @.str54, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:24                                      ; preds = %17
  %25 = load i32* @order, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = call noalias i8* @malloc(i64 %27) #5
  store i8* %28, i8** %_tmp1, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

; <label>:30                                      ; preds = %24
  %31 = load %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1068)
  call void @exit(i32 -1) #6
  unreachable

; <label>:33                                      ; preds = %24
  %34 = load i8** %_tmp1, align 8
  store i8* %34, i8** %7
  %35 = load i8** %7
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %temp_keys, align 8
  %37 = load i32** %temp_keys, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %33
  call void @perror(i8* getelementptr inbounds ([42 x i8]* @.str55, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:40                                      ; preds = %33
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %41

; <label>:41                                      ; preds = %69, %40
  %42 = load i32* %i, align 4
  %43 = load %struct.node** %2, align 8
  %44 = getelementptr inbounds %struct.node* %43, i32 0, i32 4
  %45 = load i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %74

; <label>:48                                      ; preds = %41
  %49 = load i32* %j, align 4
  %50 = load i32* %3, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %48
  %54 = load i32* %j, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %j, align 4
  br label %56

; <label>:56                                      ; preds = %53, %48
  %57 = load i32* %i, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.node** %2, align 8
  %60 = getelementptr inbounds %struct.node* %59, i32 0, i32 0
  %61 = load i8*** %60, align 8
  %62 = getelementptr inbounds i8** %61, i64 %58
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.node*
  %65 = load i32* %j, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.node*** %temp_pointers, align 8
  %68 = getelementptr inbounds %struct.node** %67, i64 %66
  store %struct.node* %64, %struct.node** %68, align 8
  br label %69

; <label>:69                                      ; preds = %56
  %70 = load i32* %i, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i, align 4
  %72 = load i32* %j, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %j, align 4
  br label %41

; <label>:74                                      ; preds = %41
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %75

; <label>:75                                      ; preds = %100, %74
  %76 = load i32* %i, align 4
  %77 = load %struct.node** %2, align 8
  %78 = getelementptr inbounds %struct.node* %77, i32 0, i32 4
  %79 = load i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %105

; <label>:81                                      ; preds = %75
  %82 = load i32* %j, align 4
  %83 = load i32* %3, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

; <label>:85                                      ; preds = %81
  %86 = load i32* %j, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %j, align 4
  br label %88

; <label>:88                                      ; preds = %85, %81
  %89 = load i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.node** %2, align 8
  %92 = getelementptr inbounds %struct.node* %91, i32 0, i32 1
  %93 = load i32** %92, align 8
  %94 = getelementptr inbounds i32* %93, i64 %90
  %95 = load i32* %94, align 4
  %96 = load i32* %j, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32** %temp_keys, align 8
  %99 = getelementptr inbounds i32* %98, i64 %97
  store i32 %95, i32* %99, align 4
  br label %100

; <label>:100                                     ; preds = %88
  %101 = load i32* %i, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %i, align 4
  %103 = load i32* %j, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %j, align 4
  br label %75

; <label>:105                                     ; preds = %75
  %106 = load %struct.node** %5, align 8
  %107 = load i32* %3, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = load %struct.node*** %temp_pointers, align 8
  %111 = getelementptr inbounds %struct.node** %110, i64 %109
  store %struct.node* %106, %struct.node** %111, align 8
  %112 = load i32* %4, align 4
  %113 = load i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32** %temp_keys, align 8
  %116 = getelementptr inbounds i32* %115, i64 %114
  store i32 %112, i32* %116, align 4
  %117 = load i32* @order, align 4
  %118 = call i32 @cut(i32 %117)
  store i32 %118, i32* %split, align 4
  %119 = call %struct.node* @make_node()
  store %struct.node* %119, %struct.node** %new_node, align 8
  %120 = load %struct.node** %2, align 8
  %121 = getelementptr inbounds %struct.node* %120, i32 0, i32 4
  store i32 0, i32* %121, align 4
  store i32 0, i32* %i, align 4
  br label %122

; <label>:122                                     ; preds = %155, %105
  %123 = load i32* %i, align 4
  %124 = load i32* %split, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %158

; <label>:127                                     ; preds = %122
  %128 = load i32* %i, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.node*** %temp_pointers, align 8
  %131 = getelementptr inbounds %struct.node** %130, i64 %129
  %132 = load %struct.node** %131, align 8
  %133 = bitcast %struct.node* %132 to i8*
  %134 = load i32* %i, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.node** %2, align 8
  %137 = getelementptr inbounds %struct.node* %136, i32 0, i32 0
  %138 = load i8*** %137, align 8
  %139 = getelementptr inbounds i8** %138, i64 %135
  store i8* %133, i8** %139, align 8
  %140 = load i32* %i, align 4
  %141 = sext i32 %140 to i64
  %142 = load i32** %temp_keys, align 8
  %143 = getelementptr inbounds i32* %142, i64 %141
  %144 = load i32* %143, align 4
  %145 = load i32* %i, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.node** %2, align 8
  %148 = getelementptr inbounds %struct.node* %147, i32 0, i32 1
  %149 = load i32** %148, align 8
  %150 = getelementptr inbounds i32* %149, i64 %146
  store i32 %144, i32* %150, align 4
  %151 = load %struct.node** %2, align 8
  %152 = getelementptr inbounds %struct.node* %151, i32 0, i32 4
  %153 = load i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

; <label>:155                                     ; preds = %127
  %156 = load i32* %i, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %i, align 4
  br label %122

; <label>:158                                     ; preds = %122
  %159 = load i32* %i, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.node*** %temp_pointers, align 8
  %162 = getelementptr inbounds %struct.node** %161, i64 %160
  %163 = load %struct.node** %162, align 8
  %164 = bitcast %struct.node* %163 to i8*
  %165 = load i32* %i, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.node** %2, align 8
  %168 = getelementptr inbounds %struct.node* %167, i32 0, i32 0
  %169 = load i8*** %168, align 8
  %170 = getelementptr inbounds i8** %169, i64 %166
  store i8* %164, i8** %170, align 8
  %171 = load i32* %split, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = load i32** %temp_keys, align 8
  %175 = getelementptr inbounds i32* %174, i64 %173
  %176 = load i32* %175, align 4
  store i32 %176, i32* %k_prime, align 4
  %177 = load i32* %i, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %179

; <label>:179                                     ; preds = %211, %158
  %180 = load i32* %i, align 4
  %181 = load i32* @order, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %216

; <label>:183                                     ; preds = %179
  %184 = load i32* %i, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.node*** %temp_pointers, align 8
  %187 = getelementptr inbounds %struct.node** %186, i64 %185
  %188 = load %struct.node** %187, align 8
  %189 = bitcast %struct.node* %188 to i8*
  %190 = load i32* %j, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.node** %new_node, align 8
  %193 = getelementptr inbounds %struct.node* %192, i32 0, i32 0
  %194 = load i8*** %193, align 8
  %195 = getelementptr inbounds i8** %194, i64 %191
  store i8* %189, i8** %195, align 8
  %196 = load i32* %i, align 4
  %197 = sext i32 %196 to i64
  %198 = load i32** %temp_keys, align 8
  %199 = getelementptr inbounds i32* %198, i64 %197
  %200 = load i32* %199, align 4
  %201 = load i32* %j, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.node** %new_node, align 8
  %204 = getelementptr inbounds %struct.node* %203, i32 0, i32 1
  %205 = load i32** %204, align 8
  %206 = getelementptr inbounds i32* %205, i64 %202
  store i32 %200, i32* %206, align 4
  %207 = load %struct.node** %new_node, align 8
  %208 = getelementptr inbounds %struct.node* %207, i32 0, i32 4
  %209 = load i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %211

; <label>:211                                     ; preds = %183
  %212 = load i32* %i, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %i, align 4
  %214 = load i32* %j, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %j, align 4
  br label %179

; <label>:216                                     ; preds = %179
  %217 = load i32* %i, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.node*** %temp_pointers, align 8
  %220 = getelementptr inbounds %struct.node** %219, i64 %218
  %221 = load %struct.node** %220, align 8
  %222 = bitcast %struct.node* %221 to i8*
  %223 = load i32* %j, align 4
  %224 = sext i32 %223 to i64
  %225 = load %struct.node** %new_node, align 8
  %226 = getelementptr inbounds %struct.node* %225, i32 0, i32 0
  %227 = load i8*** %226, align 8
  %228 = getelementptr inbounds i8** %227, i64 %224
  store i8* %222, i8** %228, align 8
  %229 = load %struct.node*** %temp_pointers, align 8
  %230 = bitcast %struct.node** %229 to i8*
  call void @free(i8* %230) #5
  %231 = load i32** %temp_keys, align 8
  %232 = bitcast i32* %231 to i8*
  call void @free(i8* %232) #5
  %233 = load %struct.node** %2, align 8
  %234 = getelementptr inbounds %struct.node* %233, i32 0, i32 2
  %235 = load %struct.node** %234, align 8
  %236 = load %struct.node** %new_node, align 8
  %237 = getelementptr inbounds %struct.node* %236, i32 0, i32 2
  store %struct.node* %235, %struct.node** %237, align 8
  store i32 0, i32* %i, align 4
  br label %238

; <label>:238                                     ; preds = %256, %216
  %239 = load i32* %i, align 4
  %240 = load %struct.node** %new_node, align 8
  %241 = getelementptr inbounds %struct.node* %240, i32 0, i32 4
  %242 = load i32* %241, align 4
  %243 = icmp sle i32 %239, %242
  br i1 %243, label %244, label %259

; <label>:244                                     ; preds = %238
  %245 = load i32* %i, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.node** %new_node, align 8
  %248 = getelementptr inbounds %struct.node* %247, i32 0, i32 0
  %249 = load i8*** %248, align 8
  %250 = getelementptr inbounds i8** %249, i64 %246
  %251 = load i8** %250, align 8
  %252 = bitcast i8* %251 to %struct.node*
  store %struct.node* %252, %struct.node** %child, align 8
  %253 = load %struct.node** %new_node, align 8
  %254 = load %struct.node** %child, align 8
  %255 = getelementptr inbounds %struct.node* %254, i32 0, i32 2
  store %struct.node* %253, %struct.node** %255, align 8
  br label %256

; <label>:256                                     ; preds = %244
  %257 = load i32* %i, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4
  br label %238

; <label>:259                                     ; preds = %238
  %260 = load %struct.node** %1, align 8
  %261 = load %struct.node** %2, align 8
  %262 = load i32* %k_prime, align 4
  %263 = load %struct.node** %new_node, align 8
  %264 = call %struct.node* @insert_into_parent(%struct.node* %260, %struct.node* %261, i32 %262, %struct.node* %263)
  ret %struct.node* %264
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert_into_new_root(%struct.node* %left, i32 %key, %struct.node* %right) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  store %struct.node* %left, %struct.node** %1, align 8
  store i32 %key, i32* %2, align 4
  store %struct.node* %right, %struct.node** %3, align 8
  %4 = call %struct.node* @make_node()
  store %struct.node* %4, %struct.node** %root, align 8
  %5 = load i32* %2, align 4
  %6 = load %struct.node** %root, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 1
  %8 = load i32** %7, align 8
  %9 = getelementptr inbounds i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.node** %1, align 8
  %11 = bitcast %struct.node* %10 to i8*
  %12 = load %struct.node** %root, align 8
  %13 = getelementptr inbounds %struct.node* %12, i32 0, i32 0
  %14 = load i8*** %13, align 8
  %15 = getelementptr inbounds i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load %struct.node** %3, align 8
  %17 = bitcast %struct.node* %16 to i8*
  %18 = load %struct.node** %root, align 8
  %19 = getelementptr inbounds %struct.node* %18, i32 0, i32 0
  %20 = load i8*** %19, align 8
  %21 = getelementptr inbounds i8** %20, i64 1
  store i8* %17, i8** %21, align 8
  %22 = load %struct.node** %root, align 8
  %23 = getelementptr inbounds %struct.node* %22, i32 0, i32 4
  %24 = load i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.node** %root, align 8
  %27 = getelementptr inbounds %struct.node* %26, i32 0, i32 2
  store %struct.node* null, %struct.node** %27, align 8
  %28 = load %struct.node** %root, align 8
  %29 = load %struct.node** %1, align 8
  %30 = getelementptr inbounds %struct.node* %29, i32 0, i32 2
  store %struct.node* %28, %struct.node** %30, align 8
  %31 = load %struct.node** %root, align 8
  %32 = load %struct.node** %3, align 8
  %33 = getelementptr inbounds %struct.node* %32, i32 0, i32 2
  store %struct.node* %31, %struct.node** %33, align 8
  %34 = load %struct.node** %root, align 8
  ret %struct.node* %34
}

; Function Attrs: nounwind uwtable
define %struct.node* @start_new_tree(i32 %key, %struct.record* %pointer) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.record*, align 8
  %root = alloca %struct.node*, align 8
  store i32 %key, i32* %1, align 4
  store %struct.record* %pointer, %struct.record** %2, align 8
  %3 = call %struct.node* @make_leaf()
  store %struct.node* %3, %struct.node** %root, align 8
  %4 = load i32* %1, align 4
  %5 = load %struct.node** %root, align 8
  %6 = getelementptr inbounds %struct.node* %5, i32 0, i32 1
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds i32* %7, i64 0
  store i32 %4, i32* %8, align 4
  %9 = load %struct.record** %2, align 8
  %10 = bitcast %struct.record* %9 to i8*
  %11 = load %struct.node** %root, align 8
  %12 = getelementptr inbounds %struct.node* %11, i32 0, i32 0
  %13 = load i8*** %12, align 8
  %14 = getelementptr inbounds i8** %13, i64 0
  store i8* %10, i8** %14, align 8
  %15 = load i32* @order, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load %struct.node** %root, align 8
  %19 = getelementptr inbounds %struct.node* %18, i32 0, i32 0
  %20 = load i8*** %19, align 8
  %21 = getelementptr inbounds i8** %20, i64 %17
  store i8* null, i8** %21, align 8
  %22 = load %struct.node** %root, align 8
  %23 = getelementptr inbounds %struct.node* %22, i32 0, i32 2
  store %struct.node* null, %struct.node** %23, align 8
  %24 = load %struct.node** %root, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.node** %root, align 8
  ret %struct.node* %28
}

; Function Attrs: nounwind uwtable
define %struct.node* @insert(%struct.node* %root, i32 %key, i32 %value) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pointer = alloca %struct.record*, align 8
  %leaf = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store i32 %key, i32* %3, align 4
  store i32 %value, i32* %4, align 4
  %5 = load %struct.node** %2, align 8
  %6 = load i32* %3, align 4
  %7 = call %struct.record* @find(%struct.node* %5, i32 %6, i1 zeroext false)
  %8 = icmp ne %struct.record* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load %struct.node** %2, align 8
  store %struct.node* %10, %struct.node** %1
  br label %42

; <label>:11                                      ; preds = %0
  %12 = load i32* %4, align 4
  %13 = call %struct.record* @make_record(i32 %12)
  store %struct.record* %13, %struct.record** %pointer, align 8
  %14 = load %struct.node** %2, align 8
  %15 = icmp eq %struct.node* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %11
  %17 = load i32* %3, align 4
  %18 = load %struct.record** %pointer, align 8
  %19 = call %struct.node* @start_new_tree(i32 %17, %struct.record* %18)
  store %struct.node* %19, %struct.node** %1
  br label %42

; <label>:20                                      ; preds = %11
  %21 = load %struct.node** %2, align 8
  %22 = load i32* %3, align 4
  %23 = call %struct.node* @find_leaf(%struct.node* %21, i32 %22, i1 zeroext false)
  store %struct.node* %23, %struct.node** %leaf, align 8
  %24 = load %struct.node** %leaf, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  %27 = load i32* @order, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %36

; <label>:30                                      ; preds = %20
  %31 = load %struct.node** %leaf, align 8
  %32 = load i32* %3, align 4
  %33 = load %struct.record** %pointer, align 8
  %34 = call %struct.node* @insert_into_leaf(%struct.node* %31, i32 %32, %struct.record* %33)
  store %struct.node* %34, %struct.node** %leaf, align 8
  %35 = load %struct.node** %2, align 8
  store %struct.node* %35, %struct.node** %1
  br label %42

; <label>:36                                      ; preds = %20
  %37 = load %struct.node** %2, align 8
  %38 = load %struct.node** %leaf, align 8
  %39 = load i32* %3, align 4
  %40 = load %struct.record** %pointer, align 8
  %41 = call %struct.node* @insert_into_leaf_after_splitting(%struct.node* %37, %struct.node* %38, i32 %39, %struct.record* %40)
  store %struct.node* %41, %struct.node** %1
  br label %42

; <label>:42                                      ; preds = %36, %30, %16, %9
  %43 = load %struct.node** %1
  ret %struct.node* %43
}

; Function Attrs: nounwind uwtable
define i32 @get_neighbor_index(%struct.node* %n) #0 {
  %1 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %n, %struct.node** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %27, %0
  %3 = load i32* %i, align 4
  %4 = load %struct.node** %1, align 8
  %5 = getelementptr inbounds %struct.node* %4, i32 0, i32 2
  %6 = load %struct.node** %5, align 8
  %7 = getelementptr inbounds %struct.node* %6, i32 0, i32 4
  %8 = load i32* %7, align 4
  %9 = icmp sle i32 %3, %8
  br i1 %9, label %10, label %30

; <label>:10                                      ; preds = %2
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.node** %1, align 8
  %14 = getelementptr inbounds %struct.node* %13, i32 0, i32 2
  %15 = load %struct.node** %14, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 0
  %17 = load i8*** %16, align 8
  %18 = getelementptr inbounds i8** %17, i64 %12
  %19 = load i8** %18, align 8
  %20 = load %struct.node** %1, align 8
  %21 = bitcast %struct.node* %20 to i8*
  %22 = icmp eq i8* %19, %21
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %10
  %24 = load i32* %i, align 4
  %25 = sub nsw i32 %24, 1
  ret i32 %25

; <label>:26                                      ; preds = %10
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %2

; <label>:30                                      ; preds = %2
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str56, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct.node* @remove_entry_from_node(%struct.node* %n, i32 %key, %struct.node* %pointer) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %num_pointers = alloca i32, align 4
  store %struct.node* %n, %struct.node** %1, align 8
  store i32 %key, i32* %2, align 4
  store %struct.node* %pointer, %struct.node** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.node** %1, align 8
  %8 = getelementptr inbounds %struct.node* %7, i32 0, i32 1
  %9 = load i32** %8, align 8
  %10 = getelementptr inbounds i32* %9, i64 %6
  %11 = load i32* %10, align 4
  %12 = load i32* %2, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %4
  %15 = load i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %4

; <label>:17                                      ; preds = %4
  %18 = load i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %20

; <label>:20                                      ; preds = %41, %17
  %21 = load i32* %i, align 4
  %22 = load %struct.node** %1, align 8
  %23 = getelementptr inbounds %struct.node* %22, i32 0, i32 4
  %24 = load i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %44

; <label>:26                                      ; preds = %20
  %27 = load i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.node** %1, align 8
  %30 = getelementptr inbounds %struct.node* %29, i32 0, i32 1
  %31 = load i32** %30, align 8
  %32 = getelementptr inbounds i32* %31, i64 %28
  %33 = load i32* %32, align 4
  %34 = load i32* %i, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load %struct.node** %1, align 8
  %38 = getelementptr inbounds %struct.node* %37, i32 0, i32 1
  %39 = load i32** %38, align 8
  %40 = getelementptr inbounds i32* %39, i64 %36
  store i32 %33, i32* %40, align 4
  br label %41

; <label>:41                                      ; preds = %26
  %42 = load i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %20

; <label>:44                                      ; preds = %20
  %45 = load %struct.node** %1, align 8
  %46 = getelementptr inbounds %struct.node* %45, i32 0, i32 3
  %47 = load i8* %46, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %53

; <label>:49                                      ; preds = %44
  %50 = load %struct.node** %1, align 8
  %51 = getelementptr inbounds %struct.node* %50, i32 0, i32 4
  %52 = load i32* %51, align 4
  br label %58

; <label>:53                                      ; preds = %44
  %54 = load %struct.node** %1, align 8
  %55 = getelementptr inbounds %struct.node* %54, i32 0, i32 4
  %56 = load i32* %55, align 4
  %57 = add nsw i32 %56, 1
  br label %58

; <label>:58                                      ; preds = %53, %49
  %59 = phi i32 [ %52, %49 ], [ %57, %53 ]
  store i32 %59, i32* %num_pointers, align 4
  store i32 0, i32* %i, align 4
  br label %60

; <label>:60                                      ; preds = %71, %58
  %61 = load i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.node** %1, align 8
  %64 = getelementptr inbounds %struct.node* %63, i32 0, i32 0
  %65 = load i8*** %64, align 8
  %66 = getelementptr inbounds i8** %65, i64 %62
  %67 = load i8** %66, align 8
  %68 = load %struct.node** %3, align 8
  %69 = bitcast %struct.node* %68 to i8*
  %70 = icmp ne i8* %67, %69
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %60
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %60

; <label>:74                                      ; preds = %60
  %75 = load i32* %i, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %i, align 4
  br label %77

; <label>:77                                      ; preds = %96, %74
  %78 = load i32* %i, align 4
  %79 = load i32* %num_pointers, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

; <label>:81                                      ; preds = %77
  %82 = load i32* %i, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.node** %1, align 8
  %85 = getelementptr inbounds %struct.node* %84, i32 0, i32 0
  %86 = load i8*** %85, align 8
  %87 = getelementptr inbounds i8** %86, i64 %83
  %88 = load i8** %87, align 8
  %89 = load i32* %i, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load %struct.node** %1, align 8
  %93 = getelementptr inbounds %struct.node* %92, i32 0, i32 0
  %94 = load i8*** %93, align 8
  %95 = getelementptr inbounds i8** %94, i64 %91
  store i8* %88, i8** %95, align 8
  br label %96

; <label>:96                                      ; preds = %81
  %97 = load i32* %i, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %i, align 4
  br label %77

; <label>:99                                      ; preds = %77
  %100 = load %struct.node** %1, align 8
  %101 = getelementptr inbounds %struct.node* %100, i32 0, i32 4
  %102 = load i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.node** %1, align 8
  %105 = getelementptr inbounds %struct.node* %104, i32 0, i32 3
  %106 = load i8* %105, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %108, label %128

; <label>:108                                     ; preds = %99
  %109 = load %struct.node** %1, align 8
  %110 = getelementptr inbounds %struct.node* %109, i32 0, i32 4
  %111 = load i32* %110, align 4
  store i32 %111, i32* %i, align 4
  br label %112

; <label>:112                                     ; preds = %124, %108
  %113 = load i32* %i, align 4
  %114 = load i32* @order, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %127

; <label>:117                                     ; preds = %112
  %118 = load i32* %i, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.node** %1, align 8
  %121 = getelementptr inbounds %struct.node* %120, i32 0, i32 0
  %122 = load i8*** %121, align 8
  %123 = getelementptr inbounds i8** %122, i64 %119
  store i8* null, i8** %123, align 8
  br label %124

; <label>:124                                     ; preds = %117
  %125 = load i32* %i, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %i, align 4
  br label %112

; <label>:127                                     ; preds = %112
  br label %148

; <label>:128                                     ; preds = %99
  %129 = load %struct.node** %1, align 8
  %130 = getelementptr inbounds %struct.node* %129, i32 0, i32 4
  %131 = load i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4
  br label %133

; <label>:133                                     ; preds = %144, %128
  %134 = load i32* %i, align 4
  %135 = load i32* @order, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %147

; <label>:137                                     ; preds = %133
  %138 = load i32* %i, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.node** %1, align 8
  %141 = getelementptr inbounds %struct.node* %140, i32 0, i32 0
  %142 = load i8*** %141, align 8
  %143 = getelementptr inbounds i8** %142, i64 %139
  store i8* null, i8** %143, align 8
  br label %144

; <label>:144                                     ; preds = %137
  %145 = load i32* %i, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i, align 4
  br label %133

; <label>:147                                     ; preds = %133
  br label %148

; <label>:148                                     ; preds = %147, %127
  %149 = load %struct.node** %1, align 8
  ret %struct.node* %149
}

; Function Attrs: nounwind uwtable
define %struct.node* @adjust_root(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %new_root = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  %3 = load %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node* %3, i32 0, i32 4
  %5 = load i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = load %struct.node** %2, align 8
  store %struct.node* %8, %struct.node** %1
  br label %36

; <label>:9                                       ; preds = %0
  %10 = load %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node* %10, i32 0, i32 3
  %12 = load i8* %11, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %23, label %14

; <label>:14                                      ; preds = %9
  %15 = load %struct.node** %2, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 0
  %17 = load i8*** %16, align 8
  %18 = getelementptr inbounds i8** %17, i64 0
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %new_root, align 8
  %21 = load %struct.node** %new_root, align 8
  %22 = getelementptr inbounds %struct.node* %21, i32 0, i32 2
  store %struct.node* null, %struct.node** %22, align 8
  br label %24

; <label>:23                                      ; preds = %9
  store %struct.node* null, %struct.node** %new_root, align 8
  br label %24

; <label>:24                                      ; preds = %23, %14
  %25 = load %struct.node** %2, align 8
  %26 = getelementptr inbounds %struct.node* %25, i32 0, i32 1
  %27 = load i32** %26, align 8
  %28 = bitcast i32* %27 to i8*
  call void @free(i8* %28) #5
  %29 = load %struct.node** %2, align 8
  %30 = getelementptr inbounds %struct.node* %29, i32 0, i32 0
  %31 = load i8*** %30, align 8
  %32 = bitcast i8** %31 to i8*
  call void @free(i8* %32) #5
  %33 = load %struct.node** %2, align 8
  %34 = bitcast %struct.node* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load %struct.node** %new_root, align 8
  store %struct.node* %35, %struct.node** %1
  br label %36

; <label>:36                                      ; preds = %24, %7
  %37 = load %struct.node** %1
  ret %struct.node* %37
}

; Function Attrs: nounwind uwtable
define %struct.node* @coalesce_nodes(%struct.node* %root, %struct.node* %n, %struct.node* %neighbor, i32 %neighbor_index, i32 %k_prime) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %neighbor_insertion_index = alloca i32, align 4
  %n_start = alloca i32, align 4
  %n_end = alloca i32, align 4
  %new_k_prime = alloca i32, align 4
  %tmp = alloca %struct.node*, align 8
  %split = alloca i8, align 1
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %n, %struct.node** %2, align 8
  store %struct.node* %neighbor, %struct.node** %3, align 8
  store i32 %neighbor_index, i32* %4, align 4
  store i32 %k_prime, i32* %5, align 4
  %6 = load i32* %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.node** %2, align 8
  store %struct.node* %9, %struct.node** %tmp, align 8
  %10 = load %struct.node** %3, align 8
  store %struct.node* %10, %struct.node** %2, align 8
  %11 = load %struct.node** %tmp, align 8
  store %struct.node* %11, %struct.node** %3, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node* %13, i32 0, i32 4
  %15 = load i32* %14, align 4
  store i32 %15, i32* %neighbor_insertion_index, align 4
  store i8 0, i8* %split, align 1
  %16 = load %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 0, i32 3
  %18 = load i8* %17, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %203, label %20

; <label>:20                                      ; preds = %12
  %21 = load i32* %5, align 4
  %22 = load i32* %neighbor_insertion_index, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.node** %3, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 1
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i64 %23
  store i32 %21, i32* %27, align 4
  %28 = load %struct.node** %3, align 8
  %29 = getelementptr inbounds %struct.node* %28, i32 0, i32 4
  %30 = load i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.node** %2, align 8
  %33 = getelementptr inbounds %struct.node* %32, i32 0, i32 4
  %34 = load i32* %33, align 4
  store i32 %34, i32* %n_end, align 4
  store i32 0, i32* %n_start, align 4
  %35 = load %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node* %35, i32 0, i32 4
  %37 = load i32* %36, align 4
  %38 = load %struct.node** %3, align 8
  %39 = getelementptr inbounds %struct.node* %38, i32 0, i32 4
  %40 = load i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32* @order, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

; <label>:44                                      ; preds = %20
  store i8 1, i8* %split, align 1
  %45 = load i32* @order, align 4
  %46 = call i32 @cut(i32 %45)
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %n_end, align 4
  br label %48

; <label>:48                                      ; preds = %44, %20
  %49 = load i32* %neighbor_insertion_index, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %51

; <label>:51                                      ; preds = %92, %48
  %52 = load i32* %j, align 4
  %53 = load i32* %n_end, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %97

; <label>:55                                      ; preds = %51
  %56 = load i32* %j, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.node** %2, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 1
  %60 = load i32** %59, align 8
  %61 = getelementptr inbounds i32* %60, i64 %57
  %62 = load i32* %61, align 4
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.node** %3, align 8
  %66 = getelementptr inbounds %struct.node* %65, i32 0, i32 1
  %67 = load i32** %66, align 8
  %68 = getelementptr inbounds i32* %67, i64 %64
  store i32 %62, i32* %68, align 4
  %69 = load i32* %j, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.node** %2, align 8
  %72 = getelementptr inbounds %struct.node* %71, i32 0, i32 0
  %73 = load i8*** %72, align 8
  %74 = getelementptr inbounds i8** %73, i64 %70
  %75 = load i8** %74, align 8
  %76 = load i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.node** %3, align 8
  %79 = getelementptr inbounds %struct.node* %78, i32 0, i32 0
  %80 = load i8*** %79, align 8
  %81 = getelementptr inbounds i8** %80, i64 %77
  store i8* %75, i8** %81, align 8
  %82 = load %struct.node** %3, align 8
  %83 = getelementptr inbounds %struct.node* %82, i32 0, i32 4
  %84 = load i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.node** %2, align 8
  %87 = getelementptr inbounds %struct.node* %86, i32 0, i32 4
  %88 = load i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  %90 = load i32* %n_start, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %n_start, align 4
  br label %92

; <label>:92                                      ; preds = %55
  %93 = load i32* %i, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %i, align 4
  %95 = load i32* %j, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %j, align 4
  br label %51

; <label>:97                                      ; preds = %51
  %98 = load i32* %j, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.node** %2, align 8
  %101 = getelementptr inbounds %struct.node* %100, i32 0, i32 0
  %102 = load i8*** %101, align 8
  %103 = getelementptr inbounds i8** %102, i64 %99
  %104 = load i8** %103, align 8
  %105 = load i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.node** %3, align 8
  %108 = getelementptr inbounds %struct.node* %107, i32 0, i32 0
  %109 = load i8*** %108, align 8
  %110 = getelementptr inbounds i8** %109, i64 %106
  store i8* %104, i8** %110, align 8
  %111 = load i8* %split, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %179

; <label>:113                                     ; preds = %97
  %114 = load i32* %n_start, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.node** %2, align 8
  %117 = getelementptr inbounds %struct.node* %116, i32 0, i32 1
  %118 = load i32** %117, align 8
  %119 = getelementptr inbounds i32* %118, i64 %115
  %120 = load i32* %119, align 4
  store i32 %120, i32* %new_k_prime, align 4
  store i32 0, i32* %i, align 4
  %121 = load i32* %n_start, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %j, align 4
  br label %123

; <label>:123                                     ; preds = %156, %113
  %124 = load i32* %i, align 4
  %125 = load %struct.node** %2, align 8
  %126 = getelementptr inbounds %struct.node* %125, i32 0, i32 4
  %127 = load i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %161

; <label>:129                                     ; preds = %123
  %130 = load i32* %j, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.node** %2, align 8
  %133 = getelementptr inbounds %struct.node* %132, i32 0, i32 1
  %134 = load i32** %133, align 8
  %135 = getelementptr inbounds i32* %134, i64 %131
  %136 = load i32* %135, align 4
  %137 = load i32* %i, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.node** %2, align 8
  %140 = getelementptr inbounds %struct.node* %139, i32 0, i32 1
  %141 = load i32** %140, align 8
  %142 = getelementptr inbounds i32* %141, i64 %138
  store i32 %136, i32* %142, align 4
  %143 = load i32* %j, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.node** %2, align 8
  %146 = getelementptr inbounds %struct.node* %145, i32 0, i32 0
  %147 = load i8*** %146, align 8
  %148 = getelementptr inbounds i8** %147, i64 %144
  %149 = load i8** %148, align 8
  %150 = load i32* %i, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.node** %2, align 8
  %153 = getelementptr inbounds %struct.node* %152, i32 0, i32 0
  %154 = load i8*** %153, align 8
  %155 = getelementptr inbounds i8** %154, i64 %151
  store i8* %149, i8** %155, align 8
  br label %156

; <label>:156                                     ; preds = %129
  %157 = load i32* %i, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %i, align 4
  %159 = load i32* %j, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %j, align 4
  br label %123

; <label>:161                                     ; preds = %123
  %162 = load i32* %j, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.node** %2, align 8
  %165 = getelementptr inbounds %struct.node* %164, i32 0, i32 0
  %166 = load i8*** %165, align 8
  %167 = getelementptr inbounds i8** %166, i64 %163
  %168 = load i8** %167, align 8
  %169 = load i32* %i, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.node** %2, align 8
  %172 = getelementptr inbounds %struct.node* %171, i32 0, i32 0
  %173 = load i8*** %172, align 8
  %174 = getelementptr inbounds i8** %173, i64 %170
  store i8* %168, i8** %174, align 8
  %175 = load %struct.node** %2, align 8
  %176 = getelementptr inbounds %struct.node* %175, i32 0, i32 4
  %177 = load i32* %176, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 4
  br label %179

; <label>:179                                     ; preds = %161, %97
  store i32 0, i32* %i, align 4
  br label %180

; <label>:180                                     ; preds = %199, %179
  %181 = load i32* %i, align 4
  %182 = load %struct.node** %3, align 8
  %183 = getelementptr inbounds %struct.node* %182, i32 0, i32 4
  %184 = load i32* %183, align 4
  %185 = add nsw i32 %184, 1
  %186 = icmp slt i32 %181, %185
  br i1 %186, label %187, label %202

; <label>:187                                     ; preds = %180
  %188 = load i32* %i, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.node** %3, align 8
  %191 = getelementptr inbounds %struct.node* %190, i32 0, i32 0
  %192 = load i8*** %191, align 8
  %193 = getelementptr inbounds i8** %192, i64 %189
  %194 = load i8** %193, align 8
  %195 = bitcast i8* %194 to %struct.node*
  store %struct.node* %195, %struct.node** %tmp, align 8
  %196 = load %struct.node** %3, align 8
  %197 = load %struct.node** %tmp, align 8
  %198 = getelementptr inbounds %struct.node* %197, i32 0, i32 2
  store %struct.node* %196, %struct.node** %198, align 8
  br label %199

; <label>:199                                     ; preds = %187
  %200 = load i32* %i, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %i, align 4
  br label %180

; <label>:202                                     ; preds = %180
  br label %263

; <label>:203                                     ; preds = %12
  %204 = load i32* %neighbor_insertion_index, align 4
  store i32 %204, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %205

; <label>:205                                     ; preds = %242, %203
  %206 = load i32* %j, align 4
  %207 = load %struct.node** %2, align 8
  %208 = getelementptr inbounds %struct.node* %207, i32 0, i32 4
  %209 = load i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %247

; <label>:211                                     ; preds = %205
  %212 = load i32* %j, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.node** %2, align 8
  %215 = getelementptr inbounds %struct.node* %214, i32 0, i32 1
  %216 = load i32** %215, align 8
  %217 = getelementptr inbounds i32* %216, i64 %213
  %218 = load i32* %217, align 4
  %219 = load i32* %i, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.node** %3, align 8
  %222 = getelementptr inbounds %struct.node* %221, i32 0, i32 1
  %223 = load i32** %222, align 8
  %224 = getelementptr inbounds i32* %223, i64 %220
  store i32 %218, i32* %224, align 4
  %225 = load i32* %j, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.node** %2, align 8
  %228 = getelementptr inbounds %struct.node* %227, i32 0, i32 0
  %229 = load i8*** %228, align 8
  %230 = getelementptr inbounds i8** %229, i64 %226
  %231 = load i8** %230, align 8
  %232 = load i32* %i, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.node** %3, align 8
  %235 = getelementptr inbounds %struct.node* %234, i32 0, i32 0
  %236 = load i8*** %235, align 8
  %237 = getelementptr inbounds i8** %236, i64 %233
  store i8* %231, i8** %237, align 8
  %238 = load %struct.node** %3, align 8
  %239 = getelementptr inbounds %struct.node* %238, i32 0, i32 4
  %240 = load i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %242

; <label>:242                                     ; preds = %211
  %243 = load i32* %i, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %i, align 4
  %245 = load i32* %j, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %j, align 4
  br label %205

; <label>:247                                     ; preds = %205
  %248 = load i32* @order, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = load %struct.node** %2, align 8
  %252 = getelementptr inbounds %struct.node* %251, i32 0, i32 0
  %253 = load i8*** %252, align 8
  %254 = getelementptr inbounds i8** %253, i64 %250
  %255 = load i8** %254, align 8
  %256 = load i32* @order, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = load %struct.node** %3, align 8
  %260 = getelementptr inbounds %struct.node* %259, i32 0, i32 0
  %261 = load i8*** %260, align 8
  %262 = getelementptr inbounds i8** %261, i64 %258
  store i8* %255, i8** %262, align 8
  br label %263

; <label>:263                                     ; preds = %247, %202
  %264 = load i8* %split, align 1
  %265 = trunc i8 %264 to i1
  br i1 %265, label %285, label %266

; <label>:266                                     ; preds = %263
  %267 = load %struct.node** %1, align 8
  %268 = load %struct.node** %2, align 8
  %269 = getelementptr inbounds %struct.node* %268, i32 0, i32 2
  %270 = load %struct.node** %269, align 8
  %271 = load i32* %5, align 4
  %272 = load %struct.node** %2, align 8
  %273 = bitcast %struct.node* %272 to i8*
  %274 = call %struct.node* @delete_entry(%struct.node* %267, %struct.node* %270, i32 %271, i8* %273)
  store %struct.node* %274, %struct.node** %1, align 8
  %275 = load %struct.node** %2, align 8
  %276 = getelementptr inbounds %struct.node* %275, i32 0, i32 1
  %277 = load i32** %276, align 8
  %278 = bitcast i32* %277 to i8*
  call void @free(i8* %278) #5
  %279 = load %struct.node** %2, align 8
  %280 = getelementptr inbounds %struct.node* %279, i32 0, i32 0
  %281 = load i8*** %280, align 8
  %282 = bitcast i8** %281 to i8*
  call void @free(i8* %282) #5
  %283 = load %struct.node** %2, align 8
  %284 = bitcast %struct.node* %283 to i8*
  call void @free(i8* %284) #5
  br label %323

; <label>:285                                     ; preds = %263
  store i32 0, i32* %i, align 4
  br label %286

; <label>:286                                     ; preds = %319, %285
  %287 = load i32* %i, align 4
  %288 = load %struct.node** %2, align 8
  %289 = getelementptr inbounds %struct.node* %288, i32 0, i32 2
  %290 = load %struct.node** %289, align 8
  %291 = getelementptr inbounds %struct.node* %290, i32 0, i32 4
  %292 = load i32* %291, align 4
  %293 = icmp slt i32 %287, %292
  br i1 %293, label %294, label %322

; <label>:294                                     ; preds = %286
  %295 = load i32* %i, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = load %struct.node** %2, align 8
  %299 = getelementptr inbounds %struct.node* %298, i32 0, i32 2
  %300 = load %struct.node** %299, align 8
  %301 = getelementptr inbounds %struct.node* %300, i32 0, i32 0
  %302 = load i8*** %301, align 8
  %303 = getelementptr inbounds i8** %302, i64 %297
  %304 = load i8** %303, align 8
  %305 = load %struct.node** %2, align 8
  %306 = bitcast %struct.node* %305 to i8*
  %307 = icmp eq i8* %304, %306
  br i1 %307, label %308, label %318

; <label>:308                                     ; preds = %294
  %309 = load i32* %new_k_prime, align 4
  %310 = load i32* %i, align 4
  %311 = sext i32 %310 to i64
  %312 = load %struct.node** %2, align 8
  %313 = getelementptr inbounds %struct.node* %312, i32 0, i32 2
  %314 = load %struct.node** %313, align 8
  %315 = getelementptr inbounds %struct.node* %314, i32 0, i32 1
  %316 = load i32** %315, align 8
  %317 = getelementptr inbounds i32* %316, i64 %311
  store i32 %309, i32* %317, align 4
  br label %322

; <label>:318                                     ; preds = %294
  br label %319

; <label>:319                                     ; preds = %318
  %320 = load i32* %i, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %i, align 4
  br label %286

; <label>:322                                     ; preds = %308, %286
  br label %323

; <label>:323                                     ; preds = %322, %266
  %324 = load %struct.node** %1, align 8
  ret %struct.node* %324
}

; Function Attrs: nounwind uwtable
define %struct.node* @delete_entry(%struct.node* %root, %struct.node* %n, i32 %key, i8* %pointer) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %min_keys = alloca i32, align 4
  %neighbor = alloca %struct.node*, align 8
  %neighbor_index = alloca i32, align 4
  %k_prime_index = alloca i32, align 4
  %k_prime = alloca i32, align 4
  %capacity = alloca i32, align 4
  store %struct.node* %root, %struct.node** %2, align 8
  store %struct.node* %n, %struct.node** %3, align 8
  store i32 %key, i32* %4, align 4
  store i8* %pointer, i8** %5, align 8
  %6 = load %struct.node** %3, align 8
  %7 = load i32* %4, align 4
  %8 = load i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.node*
  %10 = call %struct.node* @remove_entry_from_node(%struct.node* %6, i32 %7, %struct.node* %9)
  store %struct.node* %10, %struct.node** %3, align 8
  %11 = load %struct.node** %3, align 8
  %12 = load %struct.node** %2, align 8
  %13 = icmp eq %struct.node* %11, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = load %struct.node** %2, align 8
  %16 = call %struct.node* @adjust_root(%struct.node* %15)
  store %struct.node* %16, %struct.node** %1
  br label %117

; <label>:17                                      ; preds = %0
  %18 = load %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node* %18, i32 0, i32 3
  %20 = load i8* %19, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %17
  %23 = load i32* @order, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @cut(i32 %24)
  br label %30

; <label>:26                                      ; preds = %17
  %27 = load i32* @order, align 4
  %28 = call i32 @cut(i32 %27)
  %29 = sub nsw i32 %28, 1
  br label %30

; <label>:30                                      ; preds = %26, %22
  %31 = phi i32 [ %25, %22 ], [ %29, %26 ]
  store i32 %31, i32* %min_keys, align 4
  %32 = load %struct.node** %3, align 8
  %33 = getelementptr inbounds %struct.node* %32, i32 0, i32 4
  %34 = load i32* %33, align 4
  %35 = load i32* %min_keys, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %30
  %38 = load %struct.node** %2, align 8
  store %struct.node* %38, %struct.node** %1
  br label %117

; <label>:39                                      ; preds = %30
  %40 = load %struct.node** %3, align 8
  %41 = call i32 @get_neighbor_index(%struct.node* %40)
  store i32 %41, i32* %neighbor_index, align 4
  %42 = load i32* %neighbor_index, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %39
  br label %47

; <label>:45                                      ; preds = %39
  %46 = load i32* %neighbor_index, align 4
  br label %47

; <label>:47                                      ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  store i32 %48, i32* %k_prime_index, align 4
  %49 = load i32* %k_prime_index, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.node** %3, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 2
  %53 = load %struct.node** %52, align 8
  %54 = getelementptr inbounds %struct.node* %53, i32 0, i32 1
  %55 = load i32** %54, align 8
  %56 = getelementptr inbounds i32* %55, i64 %50
  %57 = load i32* %56, align 4
  store i32 %57, i32* %k_prime, align 4
  %58 = load i32* %neighbor_index, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %69

; <label>:60                                      ; preds = %47
  %61 = load %struct.node** %3, align 8
  %62 = getelementptr inbounds %struct.node* %61, i32 0, i32 2
  %63 = load %struct.node** %62, align 8
  %64 = getelementptr inbounds %struct.node* %63, i32 0, i32 0
  %65 = load i8*** %64, align 8
  %66 = getelementptr inbounds i8** %65, i64 1
  %67 = load i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.node*
  br label %80

; <label>:69                                      ; preds = %47
  %70 = load i32* %neighbor_index, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.node** %3, align 8
  %73 = getelementptr inbounds %struct.node* %72, i32 0, i32 2
  %74 = load %struct.node** %73, align 8
  %75 = getelementptr inbounds %struct.node* %74, i32 0, i32 0
  %76 = load i8*** %75, align 8
  %77 = getelementptr inbounds i8** %76, i64 %71
  %78 = load i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.node*
  br label %80

; <label>:80                                      ; preds = %69, %60
  %81 = phi %struct.node* [ %68, %60 ], [ %79, %69 ]
  store %struct.node* %81, %struct.node** %neighbor, align 8
  %82 = load %struct.node** %3, align 8
  %83 = getelementptr inbounds %struct.node* %82, i32 0, i32 3
  %84 = load i8* %83, align 1
  %85 = trunc i8 %84 to i1
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %80
  %87 = load i32* @order, align 4
  br label %91

; <label>:88                                      ; preds = %80
  %89 = load i32* @order, align 4
  %90 = sub nsw i32 %89, 1
  br label %91

; <label>:91                                      ; preds = %88, %86
  %92 = phi i32 [ %87, %86 ], [ %90, %88 ]
  store i32 %92, i32* %capacity, align 4
  %93 = load %struct.node** %neighbor, align 8
  %94 = getelementptr inbounds %struct.node* %93, i32 0, i32 4
  %95 = load i32* %94, align 4
  %96 = load %struct.node** %3, align 8
  %97 = getelementptr inbounds %struct.node* %96, i32 0, i32 4
  %98 = load i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32* %capacity, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %109

; <label>:102                                     ; preds = %91
  %103 = load %struct.node** %2, align 8
  %104 = load %struct.node** %3, align 8
  %105 = load %struct.node** %neighbor, align 8
  %106 = load i32* %neighbor_index, align 4
  %107 = load i32* %k_prime, align 4
  %108 = call %struct.node* @coalesce_nodes(%struct.node* %103, %struct.node* %104, %struct.node* %105, i32 %106, i32 %107)
  store %struct.node* %108, %struct.node** %1
  br label %117

; <label>:109                                     ; preds = %91
  %110 = load %struct.node** %2, align 8
  %111 = load %struct.node** %3, align 8
  %112 = load %struct.node** %neighbor, align 8
  %113 = load i32* %neighbor_index, align 4
  %114 = load i32* %k_prime_index, align 4
  %115 = load i32* %k_prime, align 4
  %116 = call %struct.node* @redistribute_nodes(%struct.node* %110, %struct.node* %111, %struct.node* %112, i32 %113, i32 %114, i32 %115)
  store %struct.node* %116, %struct.node** %1
  br label %117

; <label>:117                                     ; preds = %109, %102, %37, %14
  %118 = load %struct.node** %1
  ret %struct.node* %118
}

; Function Attrs: nounwind uwtable
define %struct.node* @redistribute_nodes(%struct.node* %root, %struct.node* %n, %struct.node* %neighbor, i32 %neighbor_index, i32 %k_prime_index, i32 %k_prime) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store %struct.node* %n, %struct.node** %2, align 8
  store %struct.node* %neighbor, %struct.node** %3, align 8
  store i32 %neighbor_index, i32* %4, align 4
  store i32 %k_prime_index, i32* %5, align 4
  store i32 %k_prime, i32* %6, align 4
  %7 = load i32* %4, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %183

; <label>:9                                       ; preds = %0
  %10 = load %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node* %10, i32 0, i32 3
  %12 = load i8* %11, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %33, label %14

; <label>:14                                      ; preds = %9
  %15 = load %struct.node** %2, align 8
  %16 = getelementptr inbounds %struct.node* %15, i32 0, i32 4
  %17 = load i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.node** %2, align 8
  %20 = getelementptr inbounds %struct.node* %19, i32 0, i32 0
  %21 = load i8*** %20, align 8
  %22 = getelementptr inbounds i8** %21, i64 %18
  %23 = load i8** %22, align 8
  %24 = load %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node* %24, i32 0, i32 4
  %26 = load i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load %struct.node** %2, align 8
  %30 = getelementptr inbounds %struct.node* %29, i32 0, i32 0
  %31 = load i8*** %30, align 8
  %32 = getelementptr inbounds i8** %31, i64 %28
  store i8* %23, i8** %32, align 8
  br label %33

; <label>:33                                      ; preds = %14, %9
  %34 = load %struct.node** %2, align 8
  %35 = getelementptr inbounds %struct.node* %34, i32 0, i32 4
  %36 = load i32* %35, align 4
  store i32 %36, i32* %i, align 4
  br label %37

; <label>:37                                      ; preds = %69, %33
  %38 = load i32* %i, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %72

; <label>:40                                      ; preds = %37
  %41 = load i32* %i, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load %struct.node** %2, align 8
  %45 = getelementptr inbounds %struct.node* %44, i32 0, i32 1
  %46 = load i32** %45, align 8
  %47 = getelementptr inbounds i32* %46, i64 %43
  %48 = load i32* %47, align 4
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 1
  %53 = load i32** %52, align 8
  %54 = getelementptr inbounds i32* %53, i64 %50
  store i32 %48, i32* %54, align 4
  %55 = load i32* %i, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load %struct.node** %2, align 8
  %59 = getelementptr inbounds %struct.node* %58, i32 0, i32 0
  %60 = load i8*** %59, align 8
  %61 = getelementptr inbounds i8** %60, i64 %57
  %62 = load i8** %61, align 8
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.node** %2, align 8
  %66 = getelementptr inbounds %struct.node* %65, i32 0, i32 0
  %67 = load i8*** %66, align 8
  %68 = getelementptr inbounds i8** %67, i64 %64
  store i8* %62, i8** %68, align 8
  br label %69

; <label>:69                                      ; preds = %40
  %70 = load i32* %i, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %i, align 4
  br label %37

; <label>:72                                      ; preds = %37
  %73 = load %struct.node** %2, align 8
  %74 = getelementptr inbounds %struct.node* %73, i32 0, i32 3
  %75 = load i8* %74, align 1
  %76 = trunc i8 %75 to i1
  br i1 %76, label %131, label %77

; <label>:77                                      ; preds = %72
  %78 = load %struct.node** %3, align 8
  %79 = getelementptr inbounds %struct.node* %78, i32 0, i32 4
  %80 = load i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.node** %3, align 8
  %83 = getelementptr inbounds %struct.node* %82, i32 0, i32 0
  %84 = load i8*** %83, align 8
  %85 = getelementptr inbounds i8** %84, i64 %81
  %86 = load i8** %85, align 8
  %87 = load %struct.node** %2, align 8
  %88 = getelementptr inbounds %struct.node* %87, i32 0, i32 0
  %89 = load i8*** %88, align 8
  %90 = getelementptr inbounds i8** %89, i64 0
  store i8* %86, i8** %90, align 8
  %91 = load %struct.node** %2, align 8
  %92 = getelementptr inbounds %struct.node* %91, i32 0, i32 0
  %93 = load i8*** %92, align 8
  %94 = getelementptr inbounds i8** %93, i64 0
  %95 = load i8** %94, align 8
  %96 = bitcast i8* %95 to %struct.node*
  store %struct.node* %96, %struct.node** %tmp, align 8
  %97 = load %struct.node** %2, align 8
  %98 = load %struct.node** %tmp, align 8
  %99 = getelementptr inbounds %struct.node* %98, i32 0, i32 2
  store %struct.node* %97, %struct.node** %99, align 8
  %100 = load %struct.node** %3, align 8
  %101 = getelementptr inbounds %struct.node* %100, i32 0, i32 4
  %102 = load i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.node** %3, align 8
  %105 = getelementptr inbounds %struct.node* %104, i32 0, i32 0
  %106 = load i8*** %105, align 8
  %107 = getelementptr inbounds i8** %106, i64 %103
  store i8* null, i8** %107, align 8
  %108 = load i32* %6, align 4
  %109 = load %struct.node** %2, align 8
  %110 = getelementptr inbounds %struct.node* %109, i32 0, i32 1
  %111 = load i32** %110, align 8
  %112 = getelementptr inbounds i32* %111, i64 0
  store i32 %108, i32* %112, align 4
  %113 = load %struct.node** %3, align 8
  %114 = getelementptr inbounds %struct.node* %113, i32 0, i32 4
  %115 = load i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = load %struct.node** %3, align 8
  %119 = getelementptr inbounds %struct.node* %118, i32 0, i32 1
  %120 = load i32** %119, align 8
  %121 = getelementptr inbounds i32* %120, i64 %117
  %122 = load i32* %121, align 4
  %123 = load i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.node** %2, align 8
  %126 = getelementptr inbounds %struct.node* %125, i32 0, i32 2
  %127 = load %struct.node** %126, align 8
  %128 = getelementptr inbounds %struct.node* %127, i32 0, i32 1
  %129 = load i32** %128, align 8
  %130 = getelementptr inbounds i32* %129, i64 %124
  store i32 %122, i32* %130, align 4
  br label %182

; <label>:131                                     ; preds = %72
  %132 = load %struct.node** %3, align 8
  %133 = getelementptr inbounds %struct.node* %132, i32 0, i32 4
  %134 = load i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = load %struct.node** %3, align 8
  %138 = getelementptr inbounds %struct.node* %137, i32 0, i32 0
  %139 = load i8*** %138, align 8
  %140 = getelementptr inbounds i8** %139, i64 %136
  %141 = load i8** %140, align 8
  %142 = load %struct.node** %2, align 8
  %143 = getelementptr inbounds %struct.node* %142, i32 0, i32 0
  %144 = load i8*** %143, align 8
  %145 = getelementptr inbounds i8** %144, i64 0
  store i8* %141, i8** %145, align 8
  %146 = load %struct.node** %3, align 8
  %147 = getelementptr inbounds %struct.node* %146, i32 0, i32 4
  %148 = load i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = load %struct.node** %3, align 8
  %152 = getelementptr inbounds %struct.node* %151, i32 0, i32 0
  %153 = load i8*** %152, align 8
  %154 = getelementptr inbounds i8** %153, i64 %150
  store i8* null, i8** %154, align 8
  %155 = load %struct.node** %3, align 8
  %156 = getelementptr inbounds %struct.node* %155, i32 0, i32 4
  %157 = load i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = load %struct.node** %3, align 8
  %161 = getelementptr inbounds %struct.node* %160, i32 0, i32 1
  %162 = load i32** %161, align 8
  %163 = getelementptr inbounds i32* %162, i64 %159
  %164 = load i32* %163, align 4
  %165 = load %struct.node** %2, align 8
  %166 = getelementptr inbounds %struct.node* %165, i32 0, i32 1
  %167 = load i32** %166, align 8
  %168 = getelementptr inbounds i32* %167, i64 0
  store i32 %164, i32* %168, align 4
  %169 = load %struct.node** %2, align 8
  %170 = getelementptr inbounds %struct.node* %169, i32 0, i32 1
  %171 = load i32** %170, align 8
  %172 = getelementptr inbounds i32* %171, i64 0
  %173 = load i32* %172, align 4
  %174 = load i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.node** %2, align 8
  %177 = getelementptr inbounds %struct.node* %176, i32 0, i32 2
  %178 = load %struct.node** %177, align 8
  %179 = getelementptr inbounds %struct.node* %178, i32 0, i32 1
  %180 = load i32** %179, align 8
  %181 = getelementptr inbounds i32* %180, i64 %175
  store i32 %173, i32* %181, align 4
  br label %182

; <label>:182                                     ; preds = %131, %77
  br label %339

; <label>:183                                     ; preds = %0
  %184 = load %struct.node** %2, align 8
  %185 = getelementptr inbounds %struct.node* %184, i32 0, i32 3
  %186 = load i8* %185, align 1
  %187 = trunc i8 %186 to i1
  br i1 %187, label %188, label %228

; <label>:188                                     ; preds = %183
  %189 = load %struct.node** %3, align 8
  %190 = getelementptr inbounds %struct.node* %189, i32 0, i32 1
  %191 = load i32** %190, align 8
  %192 = getelementptr inbounds i32* %191, i64 0
  %193 = load i32* %192, align 4
  %194 = load %struct.node** %2, align 8
  %195 = getelementptr inbounds %struct.node* %194, i32 0, i32 4
  %196 = load i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.node** %2, align 8
  %199 = getelementptr inbounds %struct.node* %198, i32 0, i32 1
  %200 = load i32** %199, align 8
  %201 = getelementptr inbounds i32* %200, i64 %197
  store i32 %193, i32* %201, align 4
  %202 = load %struct.node** %3, align 8
  %203 = getelementptr inbounds %struct.node* %202, i32 0, i32 0
  %204 = load i8*** %203, align 8
  %205 = getelementptr inbounds i8** %204, i64 0
  %206 = load i8** %205, align 8
  %207 = load %struct.node** %2, align 8
  %208 = getelementptr inbounds %struct.node* %207, i32 0, i32 4
  %209 = load i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.node** %2, align 8
  %212 = getelementptr inbounds %struct.node* %211, i32 0, i32 0
  %213 = load i8*** %212, align 8
  %214 = getelementptr inbounds i8** %213, i64 %210
  store i8* %206, i8** %214, align 8
  %215 = load %struct.node** %3, align 8
  %216 = getelementptr inbounds %struct.node* %215, i32 0, i32 1
  %217 = load i32** %216, align 8
  %218 = getelementptr inbounds i32* %217, i64 1
  %219 = load i32* %218, align 4
  %220 = load i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.node** %2, align 8
  %223 = getelementptr inbounds %struct.node* %222, i32 0, i32 2
  %224 = load %struct.node** %223, align 8
  %225 = getelementptr inbounds %struct.node* %224, i32 0, i32 1
  %226 = load i32** %225, align 8
  %227 = getelementptr inbounds i32* %226, i64 %221
  store i32 %219, i32* %227, align 4
  br label %279

; <label>:228                                     ; preds = %183
  %229 = load i32* %6, align 4
  %230 = load %struct.node** %2, align 8
  %231 = getelementptr inbounds %struct.node* %230, i32 0, i32 4
  %232 = load i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.node** %2, align 8
  %235 = getelementptr inbounds %struct.node* %234, i32 0, i32 1
  %236 = load i32** %235, align 8
  %237 = getelementptr inbounds i32* %236, i64 %233
  store i32 %229, i32* %237, align 4
  %238 = load %struct.node** %3, align 8
  %239 = getelementptr inbounds %struct.node* %238, i32 0, i32 0
  %240 = load i8*** %239, align 8
  %241 = getelementptr inbounds i8** %240, i64 0
  %242 = load i8** %241, align 8
  %243 = load %struct.node** %2, align 8
  %244 = getelementptr inbounds %struct.node* %243, i32 0, i32 4
  %245 = load i32* %244, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = load %struct.node** %2, align 8
  %249 = getelementptr inbounds %struct.node* %248, i32 0, i32 0
  %250 = load i8*** %249, align 8
  %251 = getelementptr inbounds i8** %250, i64 %247
  store i8* %242, i8** %251, align 8
  %252 = load %struct.node** %2, align 8
  %253 = getelementptr inbounds %struct.node* %252, i32 0, i32 4
  %254 = load i32* %253, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = load %struct.node** %2, align 8
  %258 = getelementptr inbounds %struct.node* %257, i32 0, i32 0
  %259 = load i8*** %258, align 8
  %260 = getelementptr inbounds i8** %259, i64 %256
  %261 = load i8** %260, align 8
  %262 = bitcast i8* %261 to %struct.node*
  store %struct.node* %262, %struct.node** %tmp, align 8
  %263 = load %struct.node** %2, align 8
  %264 = load %struct.node** %tmp, align 8
  %265 = getelementptr inbounds %struct.node* %264, i32 0, i32 2
  store %struct.node* %263, %struct.node** %265, align 8
  %266 = load %struct.node** %3, align 8
  %267 = getelementptr inbounds %struct.node* %266, i32 0, i32 1
  %268 = load i32** %267, align 8
  %269 = getelementptr inbounds i32* %268, i64 0
  %270 = load i32* %269, align 4
  %271 = load i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = load %struct.node** %2, align 8
  %274 = getelementptr inbounds %struct.node* %273, i32 0, i32 2
  %275 = load %struct.node** %274, align 8
  %276 = getelementptr inbounds %struct.node* %275, i32 0, i32 1
  %277 = load i32** %276, align 8
  %278 = getelementptr inbounds i32* %277, i64 %272
  store i32 %270, i32* %278, align 4
  br label %279

; <label>:279                                     ; preds = %228, %188
  store i32 0, i32* %i, align 4
  br label %280

; <label>:280                                     ; preds = %315, %279
  %281 = load i32* %i, align 4
  %282 = load %struct.node** %3, align 8
  %283 = getelementptr inbounds %struct.node* %282, i32 0, i32 4
  %284 = load i32* %283, align 4
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %318

; <label>:286                                     ; preds = %280
  %287 = load i32* %i, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = load %struct.node** %3, align 8
  %291 = getelementptr inbounds %struct.node* %290, i32 0, i32 1
  %292 = load i32** %291, align 8
  %293 = getelementptr inbounds i32* %292, i64 %289
  %294 = load i32* %293, align 4
  %295 = load i32* %i, align 4
  %296 = sext i32 %295 to i64
  %297 = load %struct.node** %3, align 8
  %298 = getelementptr inbounds %struct.node* %297, i32 0, i32 1
  %299 = load i32** %298, align 8
  %300 = getelementptr inbounds i32* %299, i64 %296
  store i32 %294, i32* %300, align 4
  %301 = load i32* %i, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = load %struct.node** %3, align 8
  %305 = getelementptr inbounds %struct.node* %304, i32 0, i32 0
  %306 = load i8*** %305, align 8
  %307 = getelementptr inbounds i8** %306, i64 %303
  %308 = load i8** %307, align 8
  %309 = load i32* %i, align 4
  %310 = sext i32 %309 to i64
  %311 = load %struct.node** %3, align 8
  %312 = getelementptr inbounds %struct.node* %311, i32 0, i32 0
  %313 = load i8*** %312, align 8
  %314 = getelementptr inbounds i8** %313, i64 %310
  store i8* %308, i8** %314, align 8
  br label %315

; <label>:315                                     ; preds = %286
  %316 = load i32* %i, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %i, align 4
  br label %280

; <label>:318                                     ; preds = %280
  %319 = load %struct.node** %2, align 8
  %320 = getelementptr inbounds %struct.node* %319, i32 0, i32 3
  %321 = load i8* %320, align 1
  %322 = trunc i8 %321 to i1
  br i1 %322, label %338, label %323

; <label>:323                                     ; preds = %318
  %324 = load i32* %i, align 4
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = load %struct.node** %3, align 8
  %328 = getelementptr inbounds %struct.node* %327, i32 0, i32 0
  %329 = load i8*** %328, align 8
  %330 = getelementptr inbounds i8** %329, i64 %326
  %331 = load i8** %330, align 8
  %332 = load i32* %i, align 4
  %333 = sext i32 %332 to i64
  %334 = load %struct.node** %3, align 8
  %335 = getelementptr inbounds %struct.node* %334, i32 0, i32 0
  %336 = load i8*** %335, align 8
  %337 = getelementptr inbounds i8** %336, i64 %333
  store i8* %331, i8** %337, align 8
  br label %338

; <label>:338                                     ; preds = %323, %318
  br label %339

; <label>:339                                     ; preds = %338, %182
  %340 = load %struct.node** %2, align 8
  %341 = getelementptr inbounds %struct.node* %340, i32 0, i32 4
  %342 = load i32* %341, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %341, align 4
  %344 = load %struct.node** %3, align 8
  %345 = getelementptr inbounds %struct.node* %344, i32 0, i32 4
  %346 = load i32* %345, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %345, align 4
  %348 = load %struct.node** %1, align 8
  ret %struct.node* %348
}

; Function Attrs: nounwind uwtable
define %struct.node* @deleteVal(%struct.node* %root, i32 %key) #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i32, align 4
  %key_leaf = alloca %struct.node*, align 8
  %key_record = alloca %struct.record*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  store i32 %key, i32* %2, align 4
  %3 = load %struct.node** %1, align 8
  %4 = load i32* %2, align 4
  %5 = call %struct.record* @find(%struct.node* %3, i32 %4, i1 zeroext false)
  store %struct.record* %5, %struct.record** %key_record, align 8
  %6 = load %struct.node** %1, align 8
  %7 = load i32* %2, align 4
  %8 = call %struct.node* @find_leaf(%struct.node* %6, i32 %7, i1 zeroext false)
  store %struct.node* %8, %struct.node** %key_leaf, align 8
  %9 = load %struct.record** %key_record, align 8
  %10 = icmp ne %struct.record* %9, null
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %0
  %12 = load %struct.node** %key_leaf, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %11
  %15 = load %struct.record** %key_record, align 8
  %16 = bitcast %struct.record* %15 to i8*
  call void @free(i8* %16) #5
  %17 = load %struct.node** %1, align 8
  %18 = load %struct.node** %key_leaf, align 8
  %19 = load i32* %2, align 4
  %20 = load %struct.record** %key_record, align 8
  %21 = bitcast %struct.record* %20 to i8*
  %22 = call %struct.node* @delete_entry(%struct.node* %17, %struct.node* %18, i32 %19, i8* %21)
  store %struct.node* %22, %struct.node** %1, align 8
  br label %23

; <label>:23                                      ; preds = %14, %11, %0
  %24 = load %struct.node** %1, align 8
  ret %struct.node* %24
}

; Function Attrs: nounwind uwtable
define void @destroy_tree_nodes(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %root, %struct.node** %1, align 8
  %2 = load %struct.node** %1, align 8
  %3 = getelementptr inbounds %struct.node* %2, i32 0, i32 3
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %25

; <label>:6                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %21, %6
  %8 = load i32* %i, align 4
  %9 = load %struct.node** %1, align 8
  %10 = getelementptr inbounds %struct.node* %9, i32 0, i32 4
  %11 = load i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %7
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.node** %1, align 8
  %17 = getelementptr inbounds %struct.node* %16, i32 0, i32 0
  %18 = load i8*** %17, align 8
  %19 = getelementptr inbounds i8** %18, i64 %15
  %20 = load i8** %19, align 8
  call void @free(i8* %20) #5
  br label %21

; <label>:21                                      ; preds = %13
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %7

; <label>:24                                      ; preds = %7
  br label %46

; <label>:25                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %26

; <label>:26                                      ; preds = %42, %25
  %27 = load i32* %i, align 4
  %28 = load %struct.node** %1, align 8
  %29 = getelementptr inbounds %struct.node* %28, i32 0, i32 4
  %30 = load i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %26
  %34 = load i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.node** %1, align 8
  %37 = getelementptr inbounds %struct.node* %36, i32 0, i32 0
  %38 = load i8*** %37, align 8
  %39 = getelementptr inbounds i8** %38, i64 %35
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.node*
  call void @destroy_tree_nodes(%struct.node* %41)
  br label %42

; <label>:42                                      ; preds = %33
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %26

; <label>:45                                      ; preds = %26
  br label %46

; <label>:46                                      ; preds = %45, %24
  %47 = load %struct.node** %1, align 8
  %48 = getelementptr inbounds %struct.node* %47, i32 0, i32 0
  %49 = load i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #5
  %51 = load %struct.node** %1, align 8
  %52 = getelementptr inbounds %struct.node* %51, i32 0, i32 1
  %53 = load i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load %struct.node** %1, align 8
  %56 = bitcast %struct.node* %55 to i8*
  call void @free(i8* %56) #5
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.node* @destroy_tree(%struct.node* %root) #0 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %1, align 8
  %2 = load %struct.node** %1, align 8
  call void @destroy_tree_nodes(%struct.node* %2)
  ret %struct.node* null
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %cur_arg = alloca i32, align 4
  %input_file = alloca i8*, align 8
  %command_file = alloca i8*, align 8
  %output = alloca i8*, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %commandFile = alloca %struct._IO_FILE*, align 8
  %lSize = alloca i64, align 8
  %commandBuffer = alloca i8*, align 8
  %result = alloca i64, align 8
  %_tmp = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %sPointer = alloca i8*, align 8
  %file_pointer = alloca %struct._IO_FILE*, align 8
  %root = alloca %struct.node*, align 8
  %r = alloca %struct.record*, align 8
  %input = alloca i32, align 4
  %instruction = alloca i8, align 1
  %mem_used = alloca i64, align 8
  %rootLoc = alloca i64, align 8
  %commandPointer = alloca i8*, align 8
  %count = alloca i32, align 4
  %records = alloca %struct.record*, align 8
  %records_elem = alloca i64, align 8
  %records_mem = alloca i64, align 8
  %knodes = alloca %struct.knode*, align 8
  %knodes_elem = alloca i64, align 8
  %knodes_mem = alloca i64, align 8
  %currKnode = alloca i64*, align 8
  %_tmp1 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %offset = alloca i64*, align 8
  %_tmp2 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %keys = alloca i32*, align 8
  %_tmp3 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %i = alloca i32, align 4
  %ans = alloca %struct.record*, align 8
  %_tmp4 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ansList = alloca %struct.list_t*, align 8
  %count5 = alloca i32, align 4
  %rSize = alloca i32, align 4
  %knodes6 = alloca %struct.knode*, align 8
  %knodes_elem7 = alloca i64, align 8
  %knodes_mem8 = alloca i64, align 8
  %currKnode9 = alloca i64*, align 8
  %_tmp10 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %offset11 = alloca i64*, align 8
  %_tmp12 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %lastKnode = alloca i64*, align 8
  %_tmp13 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %offset_2 = alloca i64*, align 8
  %_tmp14 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %start15 = alloca i32*, align 8
  %_tmp16 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %end17 = alloca i32*, align 8
  %_tmp18 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %i19 = alloca i32, align 4
  %recstart = alloca i32*, align 8
  %_tmp20 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %reclength = alloca i32*, align 8
  %_tmp21 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i8* null, i8** %input_file, align 8
  store i8* null, i8** %command_file, align 8
  store i8* getelementptr inbounds ([11 x i8]* @.str38, i32 0, i32 0), i8** %output, align 8
  store i32 1, i32* %cur_arg, align 4
  br label %17

; <label>:17                                      ; preds = %73, %0
  %18 = load i32* %cur_arg, align 4
  %19 = load i32* %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %76

; <label>:21                                      ; preds = %17
  %22 = load i32* %cur_arg, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8*** %3, align 8
  %25 = getelementptr inbounds i8** %24, i64 %23
  %26 = load i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0)) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

; <label>:29                                      ; preds = %21
  %30 = load i32* %2, align 4
  %31 = load i32* %cur_arg, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %29
  %35 = load i32* %cur_arg, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load i8*** %3, align 8
  %39 = getelementptr inbounds i8** %38, i64 %37
  %40 = load i8** %39, align 8
  store i8* %40, i8** %input_file, align 8
  %41 = load i32* %cur_arg, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %cur_arg, align 4
  br label %45

; <label>:43                                      ; preds = %29
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str58, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %846

; <label>:45                                      ; preds = %34
  br label %72

; <label>:46                                      ; preds = %21
  %47 = load i32* %cur_arg, align 4
  %48 = sext i32 %47 to i64
  %49 = load i8*** %3, align 8
  %50 = getelementptr inbounds i8** %49, i64 %48
  %51 = load i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8]* @.str59, i32 0, i32 0)) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

; <label>:54                                      ; preds = %46
  %55 = load i32* %2, align 4
  %56 = load i32* %cur_arg, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %54
  %60 = load i32* %cur_arg, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i8*** %3, align 8
  %64 = getelementptr inbounds i8** %63, i64 %62
  %65 = load i8** %64, align 8
  store i8* %65, i8** %command_file, align 8
  %66 = load i32* %cur_arg, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %cur_arg, align 4
  br label %70

; <label>:68                                      ; preds = %54
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str60, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %846

; <label>:70                                      ; preds = %59
  br label %71

; <label>:71                                      ; preds = %70, %46
  br label %72

; <label>:72                                      ; preds = %71, %45
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32* %cur_arg, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %cur_arg, align 4
  br label %17

; <label>:76                                      ; preds = %17
  %77 = load i8** %input_file, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %82, label %79

; <label>:79                                      ; preds = %76
  %80 = load i8** %command_file, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %79, %76
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str61, i32 0, i32 0))
  br label %84

; <label>:84                                      ; preds = %82, %79
  %85 = load i8** %input_file, align 8
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str62, i32 0, i32 0), i8* %85)
  %87 = load i8** %command_file, align 8
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str63, i32 0, i32 0), i8* %87)
  %89 = load i8** %command_file, align 8
  %90 = call %struct._IO_FILE* @fopen(i8* %89, i8* getelementptr inbounds ([3 x i8]* @.str64, i32 0, i32 0))
  store %struct._IO_FILE* %90, %struct._IO_FILE** %commandFile, align 8
  %91 = load %struct._IO_FILE** %commandFile, align 8
  %92 = icmp eq %struct._IO_FILE* %91, null
  br i1 %92, label %93, label %96

; <label>:93                                      ; preds = %84
  %94 = load %struct._IO_FILE** @stderr, align 8
  %95 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8]* @.str65, i32 0, i32 0), %struct._IO_FILE* %94)
  call void @exit(i32 1) #6
  unreachable

; <label>:96                                      ; preds = %84
  %97 = load %struct._IO_FILE** %commandFile, align 8
  %98 = call i32 @fseek(%struct._IO_FILE* %97, i64 0, i32 2)
  %99 = load %struct._IO_FILE** %commandFile, align 8
  %100 = call i64 @ftell(%struct._IO_FILE* %99)
  store i64 %100, i64* %lSize, align 8
  %101 = load %struct._IO_FILE** %commandFile, align 8
  call void @rewind(%struct._IO_FILE* %101)
  %102 = load i64* %lSize, align 8
  %103 = mul i64 1, %102
  %104 = call noalias i8* @malloc(i64 %103) #5
  store i8* %104, i8** %_tmp, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %109, label %106

; <label>:106                                     ; preds = %96
  %107 = load %struct._IO_FILE** @stderr, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1710)
  call void @exit(i32 -1) #6
  unreachable

; <label>:109                                     ; preds = %96
  %110 = load i8** %_tmp, align 8
  store i8* %110, i8** %4
  %111 = load i8** %4
  store i8* %111, i8** %commandBuffer, align 8
  %112 = load i8** %commandBuffer, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %109
  %115 = load %struct._IO_FILE** @stderr, align 8
  %116 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8]* @.str66, i32 0, i32 0), %struct._IO_FILE* %115)
  call void @exit(i32 2) #6
  unreachable

; <label>:117                                     ; preds = %109
  %118 = load i8** %commandBuffer, align 8
  %119 = load i64* %lSize, align 8
  %120 = load %struct._IO_FILE** %commandFile, align 8
  %121 = call i64 @fread(i8* %118, i64 1, i64 %119, %struct._IO_FILE* %120)
  store i64 %121, i64* %result, align 8
  %122 = load i64* %result, align 8
  %123 = load i64* %lSize, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

; <label>:125                                     ; preds = %117
  %126 = load %struct._IO_FILE** @stderr, align 8
  %127 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8]* @.str67, i32 0, i32 0), %struct._IO_FILE* %126)
  call void @exit(i32 3) #6
  unreachable

; <label>:128                                     ; preds = %117
  %129 = load %struct._IO_FILE** %commandFile, align 8
  %130 = call i32 @fclose(%struct._IO_FILE* %129)
  %131 = load i8** %commandBuffer, align 8
  store i8* %131, i8** %sPointer, align 8
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str68, i32 0, i32 0))
  %133 = load i8** %commandBuffer, align 8
  %134 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str69, i32 0, i32 0), i8* %133)
  %135 = load i8** %output, align 8
  %136 = call %struct._IO_FILE* @fopen(i8* %135, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0))
  store %struct._IO_FILE* %136, %struct._IO_FILE** %pFile, align 8
  %137 = load %struct._IO_FILE** %pFile, align 8
  %138 = icmp eq %struct._IO_FILE* %137, null
  br i1 %138, label %139, label %143

; <label>:139                                     ; preds = %128
  %140 = load i8** %output, align 8
  %141 = bitcast i8* %140 to %struct._IO_FILE*
  %142 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8]* @.str70, i32 0, i32 0), %struct._IO_FILE* %141)
  br label %143

; <label>:143                                     ; preds = %139, %128
  %144 = load %struct._IO_FILE** %pFile, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([22 x i8]* @.str71, i32 0, i32 0))
  %146 = load %struct._IO_FILE** %pFile, align 8
  %147 = call i32 @fclose(%struct._IO_FILE* %146)
  store %struct.node* null, %struct.node** %root, align 8
  store i32 256, i32* @order, align 4
  store i8 0, i8* @verbose_output, align 1
  %148 = load i8** %input_file, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %178

; <label>:150                                     ; preds = %143
  %151 = load i8** %input_file, align 8
  %152 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str72, i32 0, i32 0), i8* %151)
  %153 = load i8** %input_file, align 8
  %154 = call %struct._IO_FILE* @fopen(i8* %153, i8* getelementptr inbounds ([2 x i8]* @.str73, i32 0, i32 0))
  store %struct._IO_FILE* %154, %struct._IO_FILE** %file_pointer, align 8
  %155 = load %struct._IO_FILE** %file_pointer, align 8
  %156 = icmp eq %struct._IO_FILE* %155, null
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %150
  call void @perror(i8* getelementptr inbounds ([28 x i8]* @.str74, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:158                                     ; preds = %150
  %159 = load %struct._IO_FILE** %file_pointer, align 8
  %160 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([4 x i8]* @.str75, i32 0, i32 0), i32* %input)
  %161 = load i32* %input, align 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* @size, align 8
  br label %163

; <label>:163                                     ; preds = %168, %158
  %164 = load %struct._IO_FILE** %file_pointer, align 8
  %165 = call i32 @feof(%struct._IO_FILE* %164) #5
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br i1 %167, label %168, label %175

; <label>:168                                     ; preds = %163
  %169 = load %struct._IO_FILE** %file_pointer, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([4 x i8]* @.str75, i32 0, i32 0), i32* %input)
  %171 = load %struct.node** %root, align 8
  %172 = load i32* %input, align 4
  %173 = load i32* %input, align 4
  %174 = call %struct.node* @insert(%struct.node* %171, i32 %172, i32 %173)
  store %struct.node* %174, %struct.node** %root, align 8
  br label %163

; <label>:175                                     ; preds = %163
  %176 = load %struct._IO_FILE** %file_pointer, align 8
  %177 = call i32 @fclose(%struct._IO_FILE* %176)
  br label %180

; <label>:178                                     ; preds = %143
  %179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str76, i32 0, i32 0))
  store i32 0, i32* %1
  br label %846

; <label>:180                                     ; preds = %175
  %181 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str77, i32 0, i32 0))
  %182 = load %struct.node** %root, align 8
  %183 = call i64 @transform_to_cuda(%struct.node* %182, i1 zeroext false)
  store i64 %183, i64* %mem_used, align 8
  %184 = load %struct.node** %root, align 8
  %185 = call i32 @height(%struct.node* %184)
  %186 = sext i32 %185 to i64
  store i64 %186, i64* @maxheight, align 8
  %187 = load %struct.knode** @knodes, align 8
  %188 = ptrtoint %struct.knode* %187 to i64
  %189 = load i8** @mem, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = sub nsw i64 %188, %190
  store i64 %191, i64* %rootLoc, align 8
  %192 = load i8** %commandBuffer, align 8
  store i8* %192, i8** %commandPointer, align 8
  %193 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str78, i32 0, i32 0))
  %194 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0))
  br label %195

; <label>:195                                     ; preds = %836, %180
  %196 = load i8** %commandPointer, align 8
  %197 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %196, i8* getelementptr inbounds ([3 x i8]* @.str80, i32 0, i32 0), i8* %instruction) #5
  %198 = icmp ne i32 %197, -1
  br i1 %198, label %199, label %838

; <label>:199                                     ; preds = %195
  %200 = load i8** %commandPointer, align 8
  %201 = getelementptr inbounds i8* %200, i32 1
  store i8* %201, i8** %commandPointer, align 8
  %202 = load i8* %instruction, align 1
  %203 = sext i8 %202 to i32
  switch i32 %203, label %835 [
    i32 105, label %204
    i32 102, label %216
    i32 112, label %217
    i32 100, label %241
    i32 120, label %252
    i32 108, label %261
    i32 116, label %268
    i32 118, label %275
    i32 113, label %285
    i32 107, label %291
    i32 114, label %482
    i32 106, label %505
  ]

; <label>:204                                     ; preds = %199
  %205 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %input)
  br label %206

; <label>:206                                     ; preds = %209, %204
  %207 = call i32 @getchar()
  %208 = icmp ne i32 %207, 10
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %206
  br label %206

; <label>:210                                     ; preds = %206
  %211 = load %struct.node** %root, align 8
  %212 = load i32* %input, align 4
  %213 = load i32* %input, align 4
  %214 = call %struct.node* @insert(%struct.node* %211, i32 %212, i32 %213)
  store %struct.node* %214, %struct.node** %root, align 8
  %215 = load %struct.node** %root, align 8
  call void @print_tree(%struct.node* %215)
  br label %836

; <label>:216                                     ; preds = %199
  br label %217

; <label>:217                                     ; preds = %216, %199
  %218 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %input)
  br label %219

; <label>:219                                     ; preds = %222, %217
  %220 = call i32 @getchar()
  %221 = icmp ne i32 %220, 10
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %219
  br label %219

; <label>:223                                     ; preds = %219
  %224 = load %struct.node** %root, align 8
  %225 = load i32* %input, align 4
  %226 = load i8* %instruction, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 112
  %229 = call %struct.record* @find(%struct.node* %224, i32 %225, i1 zeroext %228)
  store %struct.record* %229, %struct.record** %r, align 8
  %230 = load %struct.record** %r, align 8
  %231 = icmp eq %struct.record* %230, null
  br i1 %231, label %232, label %235

; <label>:232                                     ; preds = %223
  %233 = load i32* %input, align 4
  %234 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str82, i32 0, i32 0), i32 %233)
  br label %240

; <label>:235                                     ; preds = %223
  %236 = load %struct.record** %r, align 8
  %237 = getelementptr inbounds %struct.record* %236, i32 0, i32 0
  %238 = load i32* %237, align 4
  %239 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str83, i32 0, i32 0), i32 %238)
  br label %240

; <label>:240                                     ; preds = %235, %232
  br label %836

; <label>:241                                     ; preds = %199
  %242 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %input)
  br label %243

; <label>:243                                     ; preds = %246, %241
  %244 = call i32 @getchar()
  %245 = icmp ne i32 %244, 10
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %243
  br label %243

; <label>:247                                     ; preds = %243
  %248 = load %struct.node** %root, align 8
  %249 = load i32* %input, align 4
  %250 = call %struct.node* @deleteVal(%struct.node* %248, i32 %249)
  store %struct.node* %250, %struct.node** %root, align 8
  %251 = load %struct.node** %root, align 8
  call void @print_tree(%struct.node* %251)
  br label %836

; <label>:252                                     ; preds = %199
  br label %253

; <label>:253                                     ; preds = %256, %252
  %254 = call i32 @getchar()
  %255 = icmp ne i32 %254, 10
  br i1 %255, label %256, label %257

; <label>:256                                     ; preds = %253
  br label %253

; <label>:257                                     ; preds = %253
  %258 = load %struct.node** %root, align 8
  %259 = call %struct.node* @destroy_tree(%struct.node* %258)
  store %struct.node* %259, %struct.node** %root, align 8
  %260 = load %struct.node** %root, align 8
  call void @print_tree(%struct.node* %260)
  br label %836

; <label>:261                                     ; preds = %199
  br label %262

; <label>:262                                     ; preds = %265, %261
  %263 = call i32 @getchar()
  %264 = icmp ne i32 %263, 10
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %262
  br label %262

; <label>:266                                     ; preds = %262
  %267 = load %struct.node** %root, align 8
  call void @print_leaves(%struct.node* %267)
  br label %836

; <label>:268                                     ; preds = %199
  br label %269

; <label>:269                                     ; preds = %272, %268
  %270 = call i32 @getchar()
  %271 = icmp ne i32 %270, 10
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %269
  br label %269

; <label>:273                                     ; preds = %269
  %274 = load %struct.node** %root, align 8
  call void @print_tree(%struct.node* %274)
  br label %836

; <label>:275                                     ; preds = %199
  br label %276

; <label>:276                                     ; preds = %279, %275
  %277 = call i32 @getchar()
  %278 = icmp ne i32 %277, 10
  br i1 %278, label %279, label %280

; <label>:279                                     ; preds = %276
  br label %276

; <label>:280                                     ; preds = %276
  %281 = load i8* @verbose_output, align 1
  %282 = trunc i8 %281 to i1
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i8
  store i8 %284, i8* @verbose_output, align 1
  br label %836

; <label>:285                                     ; preds = %199
  br label %286

; <label>:286                                     ; preds = %289, %285
  %287 = call i32 @getchar()
  %288 = icmp ne i32 %287, 10
  br i1 %288, label %289, label %290

; <label>:289                                     ; preds = %286
  br label %286

; <label>:290                                     ; preds = %286
  store i32 0, i32* %1
  br label %846

; <label>:291                                     ; preds = %199
  %292 = load i8** %commandPointer, align 8
  %293 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %292, i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %count) #5
  br label %294

; <label>:294                                     ; preds = %304, %291
  %295 = load i8** %commandPointer, align 8
  %296 = load i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp ne i32 %297, 32
  br i1 %298, label %299, label %302

; <label>:299                                     ; preds = %294
  %300 = load i8** %commandPointer, align 8
  %301 = icmp ne i8* %300, inttoptr (i64 10 to i8*)
  br label %302

; <label>:302                                     ; preds = %299, %294
  %303 = phi i1 [ false, %294 ], [ %301, %299 ]
  br i1 %303, label %304, label %307

; <label>:304                                     ; preds = %302
  %305 = load i8** %commandPointer, align 8
  %306 = getelementptr inbounds i8* %305, i32 1
  store i8* %306, i8** %commandPointer, align 8
  br label %294

; <label>:307                                     ; preds = %302
  %308 = load i32* %count, align 4
  %309 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str84, i32 0, i32 0), i32 %308)
  %310 = load i32* %count, align 4
  %311 = icmp sgt i32 %310, 65535
  br i1 %311, label %312, label %314

; <label>:312                                     ; preds = %307
  %313 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([93 x i8]* @.str85, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

; <label>:314                                     ; preds = %307
  %315 = load i8** @mem, align 8
  %316 = bitcast i8* %315 to %struct.record*
  store %struct.record* %316, %struct.record** %records, align 8
  %317 = load i64* %rootLoc, align 8
  %318 = udiv i64 %317, 4
  store i64 %318, i64* %records_elem, align 8
  %319 = load i64* %rootLoc, align 8
  store i64 %319, i64* %records_mem, align 8
  %320 = load i64* %records_elem, align 8
  %321 = trunc i64 %320 to i32
  %322 = load i64* %records_mem, align 8
  %323 = trunc i64 %322 to i32
  %324 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str86, i32 0, i32 0), i32 %321, i32 4, i32 %323)
  %325 = load i8** @mem, align 8
  %326 = ptrtoint i8* %325 to i64
  %327 = load i64* %rootLoc, align 8
  %328 = add nsw i64 %326, %327
  %329 = inttoptr i64 %328 to %struct.knode*
  store %struct.knode* %329, %struct.knode** %knodes, align 8
  %330 = load i64* %mem_used, align 8
  %331 = load i64* %rootLoc, align 8
  %332 = sub nsw i64 %330, %331
  %333 = udiv i64 %332, 2068
  store i64 %333, i64* %knodes_elem, align 8
  %334 = load i64* %mem_used, align 8
  %335 = load i64* %rootLoc, align 8
  %336 = sub nsw i64 %334, %335
  store i64 %336, i64* %knodes_mem, align 8
  %337 = load i64* %knodes_elem, align 8
  %338 = trunc i64 %337 to i32
  %339 = load i64* %knodes_mem, align 8
  %340 = trunc i64 %339 to i32
  %341 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str87, i32 0, i32 0), i32 %338, i32 2068, i32 %340)
  %342 = load i32* %count, align 4
  %343 = sext i32 %342 to i64
  %344 = mul i64 %343, 8
  %345 = call noalias i8* @malloc(i64 %344) #5
  store i8* %345, i8** %_tmp1, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %350, label %347

; <label>:347                                     ; preds = %314
  %348 = load %struct._IO_FILE** @stderr, align 8
  %349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1953)
  call void @exit(i32 -1) #6
  unreachable

; <label>:350                                     ; preds = %314
  %351 = load i8** %_tmp1, align 8
  store i8* %351, i8** %5
  %352 = load i8** %5
  %353 = bitcast i8* %352 to i64*
  store i64* %353, i64** %currKnode, align 8
  %354 = load i64** %currKnode, align 8
  %355 = bitcast i64* %354 to i8*
  %356 = load i32* %count, align 4
  %357 = sext i32 %356 to i64
  %358 = mul i64 %357, 8
  call void @llvm.memset.p0i8.i64(i8* %355, i8 0, i64 %358, i32 8, i1 false)
  %359 = load i32* %count, align 4
  %360 = sext i32 %359 to i64
  %361 = mul i64 %360, 8
  %362 = call noalias i8* @malloc(i64 %361) #5
  store i8* %362, i8** %_tmp2, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %367, label %364

; <label>:364                                     ; preds = %350
  %365 = load %struct._IO_FILE** @stderr, align 8
  %366 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %365, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1959)
  call void @exit(i32 -1) #6
  unreachable

; <label>:367                                     ; preds = %350
  %368 = load i8** %_tmp2, align 8
  store i8* %368, i8** %6
  %369 = load i8** %6
  %370 = bitcast i8* %369 to i64*
  store i64* %370, i64** %offset, align 8
  %371 = load i64** %offset, align 8
  %372 = bitcast i64* %371 to i8*
  %373 = load i32* %count, align 4
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 8
  call void @llvm.memset.p0i8.i64(i8* %372, i8 0, i64 %375, i32 8, i1 false)
  %376 = load i32* %count, align 4
  %377 = sext i32 %376 to i64
  %378 = mul i64 %377, 4
  %379 = call noalias i8* @malloc(i64 %378) #5
  store i8* %379, i8** %_tmp3, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %384, label %381

; <label>:381                                     ; preds = %367
  %382 = load %struct._IO_FILE** @stderr, align 8
  %383 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %382, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1965)
  call void @exit(i32 -1) #6
  unreachable

; <label>:384                                     ; preds = %367
  %385 = load i8** %_tmp3, align 8
  store i8* %385, i8** %7
  %386 = load i8** %7
  %387 = bitcast i8* %386 to i32*
  store i32* %387, i32** %keys, align 8
  store i32 0, i32* %i, align 4
  br label %388

; <label>:388                                     ; preds = %400, %384
  %389 = load i32* %i, align 4
  %390 = load i32* %count, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %403

; <label>:392                                     ; preds = %388
  %393 = load i64* @size, align 8
  %394 = mul nsw i64 20, %393
  %395 = trunc i64 %394 to i32
  %396 = load i32* %i, align 4
  %397 = sext i32 %396 to i64
  %398 = load i32** %keys, align 8
  %399 = getelementptr inbounds i32* %398, i64 %397
  store i32 %395, i32* %399, align 4
  br label %400

; <label>:400                                     ; preds = %392
  %401 = load i32* %i, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i, align 4
  br label %388

; <label>:403                                     ; preds = %388
  %404 = load i32* %count, align 4
  %405 = sext i32 %404 to i64
  %406 = mul i64 4, %405
  %407 = call noalias i8* @malloc(i64 %406) #5
  store i8* %407, i8** %_tmp4, align 8
  %408 = icmp ne i8* %407, null
  br i1 %408, label %412, label %409

; <label>:409                                     ; preds = %403
  %410 = load %struct._IO_FILE** @stderr, align 8
  %411 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %410, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 1973)
  call void @exit(i32 -1) #6
  unreachable

; <label>:412                                     ; preds = %403
  %413 = load i8** %_tmp4, align 8
  store i8* %413, i8** %8
  %414 = load i8** %8
  %415 = bitcast i8* %414 to %struct.record*
  store %struct.record* %415, %struct.record** %ans, align 8
  store i32 0, i32* %i, align 4
  br label %416

; <label>:416                                     ; preds = %426, %412
  %417 = load i32* %i, align 4
  %418 = load i32* %count, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %429

; <label>:420                                     ; preds = %416
  %421 = load i32* %i, align 4
  %422 = sext i32 %421 to i64
  %423 = load %struct.record** %ans, align 8
  %424 = getelementptr inbounds %struct.record* %423, i64 %422
  %425 = getelementptr inbounds %struct.record* %424, i32 0, i32 0
  store i32 -1, i32* %425, align 4
  br label %426

; <label>:426                                     ; preds = %420
  %427 = load i32* %i, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %i, align 4
  br label %416

; <label>:429                                     ; preds = %416
  %430 = load %struct.record** %records, align 8
  %431 = load %struct.knode** %knodes, align 8
  %432 = load i64* %knodes_elem, align 8
  %433 = load i32* @order, align 4
  %434 = load i64* @maxheight, align 8
  %435 = load i32* %count, align 4
  %436 = load i64** %currKnode, align 8
  %437 = load i64** %offset, align 8
  %438 = load i32** %keys, align 8
  %439 = load %struct.record** %ans, align 8
  call void @kernel_cpu(%struct.record* %430, %struct.knode* %431, i64 %432, i32 %433, i64 %434, i32 %435, i64* %436, i64* %437, i32* %438, %struct.record* %439)
  %440 = load i8** %output, align 8
  %441 = call %struct._IO_FILE* @fopen(i8* %440, i8* getelementptr inbounds ([4 x i8]* @.str88, i32 0, i32 0))
  store %struct._IO_FILE* %441, %struct._IO_FILE** %pFile, align 8
  %442 = load %struct._IO_FILE** %pFile, align 8
  %443 = icmp eq %struct._IO_FILE* %442, null
  br i1 %443, label %444, label %448

; <label>:444                                     ; preds = %429
  %445 = load i8** %output, align 8
  %446 = bitcast i8* %445 to %struct._IO_FILE*
  %447 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8]* @.str70, i32 0, i32 0), %struct._IO_FILE* %446)
  br label %448

; <label>:448                                     ; preds = %444, %429
  %449 = load %struct._IO_FILE** %pFile, align 8
  %450 = load i32* %count, align 4
  %451 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([30 x i8]* @.str84, i32 0, i32 0), i32 %450)
  store i32 0, i32* %i, align 4
  br label %452

; <label>:452                                     ; preds = %466, %448
  %453 = load i32* %i, align 4
  %454 = load i32* %count, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %469

; <label>:456                                     ; preds = %452
  %457 = load %struct._IO_FILE** %pFile, align 8
  %458 = load i32* %i, align 4
  %459 = load i32* %i, align 4
  %460 = sext i32 %459 to i64
  %461 = load %struct.record** %ans, align 8
  %462 = getelementptr inbounds %struct.record* %461, i64 %460
  %463 = getelementptr inbounds %struct.record* %462, i32 0, i32 0
  %464 = load i32* %463, align 4
  %465 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([10 x i8]* @.str89, i32 0, i32 0), i32 %458, i32 %464)
  br label %466

; <label>:466                                     ; preds = %456
  %467 = load i32* %i, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %i, align 4
  br label %452

; <label>:469                                     ; preds = %452
  %470 = load %struct._IO_FILE** %pFile, align 8
  %471 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %470, i8* getelementptr inbounds ([3 x i8]* @.str90, i32 0, i32 0))
  %472 = load %struct._IO_FILE** %pFile, align 8
  %473 = call i32 @fclose(%struct._IO_FILE* %472)
  %474 = load i64** %currKnode, align 8
  %475 = bitcast i64* %474 to i8*
  call void @free(i8* %475) #5
  %476 = load i64** %offset, align 8
  %477 = bitcast i64* %476 to i8*
  call void @free(i8* %477) #5
  %478 = load i32** %keys, align 8
  %479 = bitcast i32* %478 to i8*
  call void @free(i8* %479) #5
  %480 = load %struct.record** %ans, align 8
  %481 = bitcast %struct.record* %480 to i8*
  call void @free(i8* %481) #5
  br label %836

; <label>:482                                     ; preds = %199
  %483 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %start)
  %484 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %end)
  %485 = load i32* %start, align 4
  %486 = load i32* %end, align 4
  %487 = icmp sgt i32 %485, %486
  br i1 %487, label %488, label %492

; <label>:488                                     ; preds = %482
  %489 = load i32* %start, align 4
  store i32 %489, i32* %input, align 4
  %490 = load i32* %end, align 4
  store i32 %490, i32* %start, align 4
  %491 = load i32* %input, align 4
  store i32 %491, i32* %end, align 4
  br label %492

; <label>:492                                     ; preds = %488, %482
  %493 = load i32* %start, align 4
  %494 = load i32* %end, align 4
  %495 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str91, i32 0, i32 0), i32 %493, i32 %494)
  %496 = load %struct.node** %root, align 8
  %497 = load i32* %start, align 4
  %498 = load i32* %end, align 4
  %499 = call %struct.list_t* @findRange(%struct.node* %496, i32 %497, i32 %498)
  store %struct.list_t* %499, %struct.list_t** %ansList, align 8
  %500 = load %struct.list_t** %ansList, align 8
  %501 = call i32 @list_get_length(%struct.list_t* %500)
  %502 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str92, i32 0, i32 0), i32 %501)
  %503 = load %struct.list_t** %ansList, align 8
  %504 = bitcast %struct.list_t* %503 to i8*
  call void @free(i8* %504) #5
  br label %836

; <label>:505                                     ; preds = %199
  %506 = load i8** %commandPointer, align 8
  %507 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %506, i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %count5) #5
  br label %508

; <label>:508                                     ; preds = %518, %505
  %509 = load i8** %commandPointer, align 8
  %510 = load i8* %509, align 1
  %511 = sext i8 %510 to i32
  %512 = icmp ne i32 %511, 32
  br i1 %512, label %513, label %516

; <label>:513                                     ; preds = %508
  %514 = load i8** %commandPointer, align 8
  %515 = icmp ne i8* %514, inttoptr (i64 10 to i8*)
  br label %516

; <label>:516                                     ; preds = %513, %508
  %517 = phi i1 [ false, %508 ], [ %515, %513 ]
  br i1 %517, label %518, label %521

; <label>:518                                     ; preds = %516
  %519 = load i8** %commandPointer, align 8
  %520 = getelementptr inbounds i8* %519, i32 1
  store i8* %520, i8** %commandPointer, align 8
  br label %508

; <label>:521                                     ; preds = %516
  %522 = load i8** %commandPointer, align 8
  %523 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %522, i8* getelementptr inbounds ([3 x i8]* @.str81, i32 0, i32 0), i32* %rSize) #5
  br label %524

; <label>:524                                     ; preds = %534, %521
  %525 = load i8** %commandPointer, align 8
  %526 = load i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp ne i32 %527, 32
  br i1 %528, label %529, label %532

; <label>:529                                     ; preds = %524
  %530 = load i8** %commandPointer, align 8
  %531 = icmp ne i8* %530, inttoptr (i64 10 to i8*)
  br label %532

; <label>:532                                     ; preds = %529, %524
  %533 = phi i1 [ false, %524 ], [ %531, %529 ]
  br i1 %533, label %534, label %537

; <label>:534                                     ; preds = %532
  %535 = load i8** %commandPointer, align 8
  %536 = getelementptr inbounds i8* %535, i32 1
  store i8* %536, i8** %commandPointer, align 8
  br label %524

; <label>:537                                     ; preds = %532
  %538 = load i32* %count5, align 4
  %539 = load i32* %rSize, align 4
  %540 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str93, i32 0, i32 0), i32 %538, i32 %539)
  %541 = load i32* %rSize, align 4
  %542 = sext i32 %541 to i64
  %543 = load i64* @size, align 8
  %544 = icmp sgt i64 %542, %543
  br i1 %544, label %548, label %545

; <label>:545                                     ; preds = %537
  %546 = load i32* %rSize, align 4
  %547 = icmp slt i32 %546, 0
  br i1 %547, label %548, label %552

; <label>:548                                     ; preds = %545, %537
  %549 = load i64* @size, align 8
  %550 = trunc i64 %549 to i32
  %551 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str94, i32 0, i32 0), i32 %550)
  call void @exit(i32 0) #6
  unreachable

; <label>:552                                     ; preds = %545
  %553 = load i8** @mem, align 8
  %554 = ptrtoint i8* %553 to i64
  %555 = load i64* %rootLoc, align 8
  %556 = add nsw i64 %554, %555
  %557 = inttoptr i64 %556 to %struct.knode*
  store %struct.knode* %557, %struct.knode** %knodes6, align 8
  %558 = load i64* %mem_used, align 8
  %559 = load i64* %rootLoc, align 8
  %560 = sub nsw i64 %558, %559
  %561 = udiv i64 %560, 2068
  store i64 %561, i64* %knodes_elem7, align 8
  %562 = load i64* %mem_used, align 8
  %563 = load i64* %rootLoc, align 8
  %564 = sub nsw i64 %562, %563
  store i64 %564, i64* %knodes_mem8, align 8
  %565 = load i64* %knodes_elem7, align 8
  %566 = trunc i64 %565 to i32
  %567 = load i64* %knodes_mem8, align 8
  %568 = trunc i64 %567 to i32
  %569 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str87, i32 0, i32 0), i32 %566, i32 2068, i32 %568)
  %570 = load i32* %count5, align 4
  %571 = sext i32 %570 to i64
  %572 = mul i64 %571, 8
  %573 = call noalias i8* @malloc(i64 %572) #5
  store i8* %573, i8** %_tmp10, align 8
  %574 = icmp ne i8* %573, null
  br i1 %574, label %578, label %575

; <label>:575                                     ; preds = %552
  %576 = load %struct._IO_FILE** @stderr, align 8
  %577 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %576, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2065)
  call void @exit(i32 -1) #6
  unreachable

; <label>:578                                     ; preds = %552
  %579 = load i8** %_tmp10, align 8
  store i8* %579, i8** %9
  %580 = load i8** %9
  %581 = bitcast i8* %580 to i64*
  store i64* %581, i64** %currKnode9, align 8
  %582 = load i64** %currKnode9, align 8
  %583 = bitcast i64* %582 to i8*
  %584 = load i32* %count5, align 4
  %585 = sext i32 %584 to i64
  %586 = mul i64 %585, 8
  call void @llvm.memset.p0i8.i64(i8* %583, i8 0, i64 %586, i32 8, i1 false)
  %587 = load i32* %count5, align 4
  %588 = sext i32 %587 to i64
  %589 = mul i64 %588, 8
  %590 = call noalias i8* @malloc(i64 %589) #5
  store i8* %590, i8** %_tmp12, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %595, label %592

; <label>:592                                     ; preds = %578
  %593 = load %struct._IO_FILE** @stderr, align 8
  %594 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %593, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2071)
  call void @exit(i32 -1) #6
  unreachable

; <label>:595                                     ; preds = %578
  %596 = load i8** %_tmp12, align 8
  store i8* %596, i8** %10
  %597 = load i8** %10
  %598 = bitcast i8* %597 to i64*
  store i64* %598, i64** %offset11, align 8
  %599 = load i64** %offset11, align 8
  %600 = bitcast i64* %599 to i8*
  %601 = load i32* %count5, align 4
  %602 = sext i32 %601 to i64
  %603 = mul i64 %602, 8
  call void @llvm.memset.p0i8.i64(i8* %600, i8 0, i64 %603, i32 8, i1 false)
  %604 = load i32* %count5, align 4
  %605 = sext i32 %604 to i64
  %606 = mul i64 %605, 8
  %607 = call noalias i8* @malloc(i64 %606) #5
  store i8* %607, i8** %_tmp13, align 8
  %608 = icmp ne i8* %607, null
  br i1 %608, label %612, label %609

; <label>:609                                     ; preds = %595
  %610 = load %struct._IO_FILE** @stderr, align 8
  %611 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %610, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2077)
  call void @exit(i32 -1) #6
  unreachable

; <label>:612                                     ; preds = %595
  %613 = load i8** %_tmp13, align 8
  store i8* %613, i8** %11
  %614 = load i8** %11
  %615 = bitcast i8* %614 to i64*
  store i64* %615, i64** %lastKnode, align 8
  %616 = load i64** %lastKnode, align 8
  %617 = bitcast i64* %616 to i8*
  %618 = load i32* %count5, align 4
  %619 = sext i32 %618 to i64
  %620 = mul i64 %619, 8
  call void @llvm.memset.p0i8.i64(i8* %617, i8 0, i64 %620, i32 8, i1 false)
  %621 = load i32* %count5, align 4
  %622 = sext i32 %621 to i64
  %623 = mul i64 %622, 8
  %624 = call noalias i8* @malloc(i64 %623) #5
  store i8* %624, i8** %_tmp14, align 8
  %625 = icmp ne i8* %624, null
  br i1 %625, label %629, label %626

; <label>:626                                     ; preds = %612
  %627 = load %struct._IO_FILE** @stderr, align 8
  %628 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2083)
  call void @exit(i32 -1) #6
  unreachable

; <label>:629                                     ; preds = %612
  %630 = load i8** %_tmp14, align 8
  store i8* %630, i8** %12
  %631 = load i8** %12
  %632 = bitcast i8* %631 to i64*
  store i64* %632, i64** %offset_2, align 8
  %633 = load i64** %offset_2, align 8
  %634 = bitcast i64* %633 to i8*
  %635 = load i32* %count5, align 4
  %636 = sext i32 %635 to i64
  %637 = mul i64 %636, 8
  call void @llvm.memset.p0i8.i64(i8* %634, i8 0, i64 %637, i32 8, i1 false)
  %638 = load i32* %count5, align 4
  %639 = sext i32 %638 to i64
  %640 = mul i64 %639, 4
  %641 = call noalias i8* @malloc(i64 %640) #5
  store i8* %641, i8** %_tmp16, align 8
  %642 = icmp ne i8* %641, null
  br i1 %642, label %646, label %643

; <label>:643                                     ; preds = %629
  %644 = load %struct._IO_FILE** @stderr, align 8
  %645 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %644, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2089)
  call void @exit(i32 -1) #6
  unreachable

; <label>:646                                     ; preds = %629
  %647 = load i8** %_tmp16, align 8
  store i8* %647, i8** %13
  %648 = load i8** %13
  %649 = bitcast i8* %648 to i32*
  store i32* %649, i32** %start15, align 8
  %650 = load i32* %count5, align 4
  %651 = sext i32 %650 to i64
  %652 = mul i64 %651, 4
  %653 = call noalias i8* @malloc(i64 %652) #5
  store i8* %653, i8** %_tmp18, align 8
  %654 = icmp ne i8* %653, null
  br i1 %654, label %658, label %655

; <label>:655                                     ; preds = %646
  %656 = load %struct._IO_FILE** @stderr, align 8
  %657 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %656, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2091)
  call void @exit(i32 -1) #6
  unreachable

; <label>:658                                     ; preds = %646
  %659 = load i8** %_tmp18, align 8
  store i8* %659, i8** %14
  %660 = load i8** %14
  %661 = bitcast i8* %660 to i32*
  store i32* %661, i32** %end17, align 8
  store i32 0, i32* %i19, align 4
  br label %662

; <label>:662                                     ; preds = %722, %658
  %663 = load i32* %i19, align 4
  %664 = load i32* %count5, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %725

; <label>:666                                     ; preds = %662
  %667 = load i64* @size, align 8
  %668 = mul nsw i64 20, %667
  %669 = trunc i64 %668 to i32
  %670 = load i32* %i19, align 4
  %671 = sext i32 %670 to i64
  %672 = load i32** %start15, align 8
  %673 = getelementptr inbounds i32* %672, i64 %671
  store i32 %669, i32* %673, align 4
  %674 = load i32* %i19, align 4
  %675 = sext i32 %674 to i64
  %676 = load i32** %start15, align 8
  %677 = getelementptr inbounds i32* %676, i64 %675
  %678 = load i32* %677, align 4
  %679 = load i32* %rSize, align 4
  %680 = add nsw i32 %678, %679
  %681 = load i32* %i19, align 4
  %682 = sext i32 %681 to i64
  %683 = load i32** %end17, align 8
  %684 = getelementptr inbounds i32* %683, i64 %682
  store i32 %680, i32* %684, align 4
  %685 = load i32* %i19, align 4
  %686 = sext i32 %685 to i64
  %687 = load i32** %end17, align 8
  %688 = getelementptr inbounds i32* %687, i64 %686
  %689 = load i32* %688, align 4
  %690 = sext i32 %689 to i64
  %691 = load i64* @size, align 8
  %692 = icmp sge i64 %690, %691
  br i1 %692, label %693, label %721

; <label>:693                                     ; preds = %666
  %694 = load i32* %i19, align 4
  %695 = sext i32 %694 to i64
  %696 = load i32** %start15, align 8
  %697 = getelementptr inbounds i32* %696, i64 %695
  %698 = load i32* %697, align 4
  %699 = sext i32 %698 to i64
  %700 = load i32* %i19, align 4
  %701 = sext i32 %700 to i64
  %702 = load i32** %end17, align 8
  %703 = getelementptr inbounds i32* %702, i64 %701
  %704 = load i32* %703, align 4
  %705 = sext i32 %704 to i64
  %706 = load i64* @size, align 8
  %707 = sub nsw i64 %705, %706
  %708 = sub nsw i64 %699, %707
  %709 = trunc i64 %708 to i32
  %710 = load i32* %i19, align 4
  %711 = sext i32 %710 to i64
  %712 = load i32** %start15, align 8
  %713 = getelementptr inbounds i32* %712, i64 %711
  store i32 %709, i32* %713, align 4
  %714 = load i64* @size, align 8
  %715 = sub nsw i64 %714, 1
  %716 = trunc i64 %715 to i32
  %717 = load i32* %i19, align 4
  %718 = sext i32 %717 to i64
  %719 = load i32** %end17, align 8
  %720 = getelementptr inbounds i32* %719, i64 %718
  store i32 %716, i32* %720, align 4
  br label %721

; <label>:721                                     ; preds = %693, %666
  br label %722

; <label>:722                                     ; preds = %721
  %723 = load i32* %i19, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %i19, align 4
  br label %662

; <label>:725                                     ; preds = %662
  %726 = load i32* %count5, align 4
  %727 = sext i32 %726 to i64
  %728 = mul i64 %727, 4
  %729 = call noalias i8* @malloc(i64 %728) #5
  store i8* %729, i8** %_tmp20, align 8
  %730 = icmp ne i8* %729, null
  br i1 %730, label %734, label %731

; <label>:731                                     ; preds = %725
  %732 = load %struct._IO_FILE** @stderr, align 8
  %733 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %732, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2105)
  call void @exit(i32 -1) #6
  unreachable

; <label>:734                                     ; preds = %725
  %735 = load i8** %_tmp20, align 8
  store i8* %735, i8** %15
  %736 = load i8** %15
  %737 = bitcast i8* %736 to i32*
  store i32* %737, i32** %recstart, align 8
  %738 = load i32* %count5, align 4
  %739 = sext i32 %738 to i64
  %740 = mul i64 %739, 4
  %741 = call noalias i8* @malloc(i64 %740) #5
  store i8* %741, i8** %_tmp21, align 8
  %742 = icmp ne i8* %741, null
  br i1 %742, label %746, label %743

; <label>:743                                     ; preds = %734
  %744 = load %struct._IO_FILE** @stderr, align 8
  %745 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %744, i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 2107)
  call void @exit(i32 -1) #6
  unreachable

; <label>:746                                     ; preds = %734
  %747 = load i8** %_tmp21, align 8
  store i8* %747, i8** %16
  %748 = load i8** %16
  %749 = bitcast i8* %748 to i32*
  store i32* %749, i32** %reclength, align 8
  store i32 0, i32* %i19, align 4
  br label %750

; <label>:750                                     ; preds = %763, %746
  %751 = load i32* %i19, align 4
  %752 = load i32* %count5, align 4
  %753 = icmp slt i32 %751, %752
  br i1 %753, label %754, label %766

; <label>:754                                     ; preds = %750
  %755 = load i32* %i19, align 4
  %756 = sext i32 %755 to i64
  %757 = load i32** %recstart, align 8
  %758 = getelementptr inbounds i32* %757, i64 %756
  store i32 0, i32* %758, align 4
  %759 = load i32* %i19, align 4
  %760 = sext i32 %759 to i64
  %761 = load i32** %reclength, align 8
  %762 = getelementptr inbounds i32* %761, i64 %760
  store i32 0, i32* %762, align 4
  br label %763

; <label>:763                                     ; preds = %754
  %764 = load i32* %i19, align 4
  %765 = add nsw i32 %764, 1
  store i32 %765, i32* %i19, align 4
  br label %750

; <label>:766                                     ; preds = %750
  %767 = load %struct.knode** %knodes6, align 8
  %768 = load i64* %knodes_elem7, align 8
  %769 = load i32* @order, align 4
  %770 = load i64* @maxheight, align 8
  %771 = load i32* %count5, align 4
  %772 = load i64** %currKnode9, align 8
  %773 = load i64** %offset11, align 8
  %774 = load i64** %lastKnode, align 8
  %775 = load i64** %offset_2, align 8
  %776 = load i32** %start15, align 8
  %777 = load i32** %end17, align 8
  %778 = load i32** %recstart, align 8
  %779 = load i32** %reclength, align 8
  call void @kernel_cpu_2(%struct.knode* %767, i64 %768, i32 %769, i64 %770, i32 %771, i64* %772, i64* %773, i64* %774, i64* %775, i32* %776, i32* %777, i32* %778, i32* %779)
  %780 = load i8** %output, align 8
  %781 = call %struct._IO_FILE* @fopen(i8* %780, i8* getelementptr inbounds ([4 x i8]* @.str88, i32 0, i32 0))
  store %struct._IO_FILE* %781, %struct._IO_FILE** %pFile, align 8
  %782 = load %struct._IO_FILE** %pFile, align 8
  %783 = icmp eq %struct._IO_FILE* %782, null
  br i1 %783, label %784, label %788

; <label>:784                                     ; preds = %766
  %785 = load i8** %output, align 8
  %786 = bitcast i8* %785 to %struct._IO_FILE*
  %787 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8]* @.str70, i32 0, i32 0), %struct._IO_FILE* %786)
  br label %788

; <label>:788                                     ; preds = %784, %766
  %789 = load %struct._IO_FILE** %pFile, align 8
  %790 = load i32* %count5, align 4
  %791 = load i32* %rSize, align 4
  %792 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %789, i8* getelementptr inbounds ([39 x i8]* @.str93, i32 0, i32 0), i32 %790, i32 %791)
  store i32 0, i32* %i19, align 4
  br label %793

; <label>:793                                     ; preds = %811, %788
  %794 = load i32* %i19, align 4
  %795 = load i32* %count5, align 4
  %796 = icmp slt i32 %794, %795
  br i1 %796, label %797, label %814

; <label>:797                                     ; preds = %793
  %798 = load %struct._IO_FILE** %pFile, align 8
  %799 = load i32* %i19, align 4
  %800 = load i32* %i19, align 4
  %801 = sext i32 %800 to i64
  %802 = load i32** %recstart, align 8
  %803 = getelementptr inbounds i32* %802, i64 %801
  %804 = load i32* %803, align 4
  %805 = load i32* %i19, align 4
  %806 = sext i32 %805 to i64
  %807 = load i32** %reclength, align 8
  %808 = getelementptr inbounds i32* %807, i64 %806
  %809 = load i32* %808, align 4
  %810 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %798, i8* getelementptr inbounds ([16 x i8]* @.str95, i32 0, i32 0), i32 %799, i32 %804, i32 %809)
  br label %811

; <label>:811                                     ; preds = %797
  %812 = load i32* %i19, align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, i32* %i19, align 4
  br label %793

; <label>:814                                     ; preds = %793
  %815 = load %struct._IO_FILE** %pFile, align 8
  %816 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %815, i8* getelementptr inbounds ([3 x i8]* @.str90, i32 0, i32 0))
  %817 = load %struct._IO_FILE** %pFile, align 8
  %818 = call i32 @fclose(%struct._IO_FILE* %817)
  %819 = load i64** %currKnode9, align 8
  %820 = bitcast i64* %819 to i8*
  call void @free(i8* %820) #5
  %821 = load i64** %offset11, align 8
  %822 = bitcast i64* %821 to i8*
  call void @free(i8* %822) #5
  %823 = load i64** %lastKnode, align 8
  %824 = bitcast i64* %823 to i8*
  call void @free(i8* %824) #5
  %825 = load i64** %offset_2, align 8
  %826 = bitcast i64* %825 to i8*
  call void @free(i8* %826) #5
  %827 = load i32** %start15, align 8
  %828 = bitcast i32* %827 to i8*
  call void @free(i8* %828) #5
  %829 = load i32** %end17, align 8
  %830 = bitcast i32* %829 to i8*
  call void @free(i8* %830) #5
  %831 = load i32** %recstart, align 8
  %832 = bitcast i32* %831 to i8*
  call void @free(i8* %832) #5
  %833 = load i32** %reclength, align 8
  %834 = bitcast i32* %833 to i8*
  call void @free(i8* %834) #5
  br label %836

; <label>:835                                     ; preds = %199
  br label %836

; <label>:836                                     ; preds = %835, %814, %492, %469, %280, %273, %266, %257, %247, %240, %210
  %837 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str79, i32 0, i32 0))
  br label %195

; <label>:838                                     ; preds = %195
  %839 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str37, i32 0, i32 0))
  %840 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8]* @.str96, i32 0, i32 0)) #5
  %841 = icmp ne i8* %840, null
  br i1 %841, label %842, label %844

; <label>:842                                     ; preds = %838
  %843 = load %struct.node** %root, align 8
  call void @print_tree(%struct.node* %843)
  br label %844

; <label>:844                                     ; preds = %842, %838
  %845 = load i8** @mem, align 8
  call void @free(i8* %845) #5
  store i32 0, i32* %1
  br label %846

; <label>:846                                     ; preds = %844, %290, %178, %68, %43
  %847 = load i32* %1
  ret i32 %847
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare void @rewind(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #2

declare i32 @getchar() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind uwtable
define void @kernel_cpu_2(%struct.knode* %knodes, i64 %knodes_elem, i32 %order, i64 %maxheight, i32 %count, i64* %currKnode, i64* %offset, i64* %lastKnode, i64* %offset_2, i32* %start, i32* %end, i32* %recstart, i32* %reclength) #0 {
  %1 = alloca %struct.knode*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %time0 = alloca i64, align 8
  %time1 = alloca i64, align 8
  %time2 = alloca i64, align 8
  %i = alloca i32, align 4
  %threadsPerBlock = alloca i32, align 4
  %thid = alloca i32, align 4
  %bid = alloca i32, align 4
  store %struct.knode* %knodes, %struct.knode** %1, align 8
  store i64 %knodes_elem, i64* %2, align 8
  store i32 %order, i32* %3, align 4
  store i64 %maxheight, i64* %4, align 8
  store i32 %count, i32* %5, align 4
  store i64* %currKnode, i64** %6, align 8
  store i64* %offset, i64** %7, align 8
  store i64* %lastKnode, i64** %8, align 8
  store i64* %offset_2, i64** %9, align 8
  store i32* %start, i32** %10, align 8
  store i32* %end, i32** %11, align 8
  store i32* %recstart, i32** %12, align 8
  store i32* %reclength, i32** %13, align 8
  %14 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %14, i64* %time0, align 8
  %15 = load i32* %3, align 4
  %16 = icmp slt i32 %15, 1024
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = load i32* %3, align 4
  br label %20

; <label>:19                                      ; preds = %0
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 1024, %19 ]
  store i32 %21, i32* %threadsPerBlock, align 4
  %22 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %22, i64* %time1, align 8
  store i32 0, i32* %bid, align 4
  br label %23

; <label>:23                                      ; preds = %310, %20
  %24 = load i32* %bid, align 4
  %25 = load i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %313

; <label>:27                                      ; preds = %23
  store i32 0, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %209, %27
  %29 = load i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64* %4, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %212

; <label>:33                                      ; preds = %28
  store i32 0, i32* %thid, align 4
  br label %34

; <label>:34                                      ; preds = %187, %33
  %35 = load i32* %thid, align 4
  %36 = load i32* %threadsPerBlock, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %190

; <label>:38                                      ; preds = %34
  %39 = load i32* %thid, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32* %bid, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64** %6, align 8
  %44 = getelementptr inbounds i64* %43, i64 %42
  %45 = load i64* %44, align 8
  %46 = load %struct.knode** %1, align 8
  %47 = getelementptr inbounds %struct.knode* %46, i64 %45
  %48 = getelementptr inbounds %struct.knode* %47, i32 0, i32 2
  %49 = getelementptr inbounds [257 x i32]* %48, i32 0, i64 %40
  %50 = load i32* %49, align 4
  %51 = load i32* %bid, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32** %10, align 8
  %54 = getelementptr inbounds i32* %53, i64 %52
  %55 = load i32* %54, align 4
  %56 = icmp sle i32 %50, %55
  br i1 %56, label %57, label %112

; <label>:57                                      ; preds = %38
  %58 = load i32* %thid, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load i32* %bid, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64** %6, align 8
  %64 = getelementptr inbounds i64* %63, i64 %62
  %65 = load i64* %64, align 8
  %66 = load %struct.knode** %1, align 8
  %67 = getelementptr inbounds %struct.knode* %66, i64 %65
  %68 = getelementptr inbounds %struct.knode* %67, i32 0, i32 2
  %69 = getelementptr inbounds [257 x i32]* %68, i32 0, i64 %60
  %70 = load i32* %69, align 4
  %71 = load i32* %bid, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32** %10, align 8
  %74 = getelementptr inbounds i32* %73, i64 %72
  %75 = load i32* %74, align 4
  %76 = icmp sgt i32 %70, %75
  br i1 %76, label %77, label %112

; <label>:77                                      ; preds = %57
  %78 = load i32* %thid, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32* %bid, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64** %6, align 8
  %83 = getelementptr inbounds i64* %82, i64 %81
  %84 = load i64* %83, align 8
  %85 = load %struct.knode** %1, align 8
  %86 = getelementptr inbounds %struct.knode* %85, i64 %84
  %87 = getelementptr inbounds %struct.knode* %86, i32 0, i32 1
  %88 = getelementptr inbounds [257 x i32]* %87, i32 0, i64 %79
  %89 = load i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64* %2, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %111

; <label>:93                                      ; preds = %77
  %94 = load i32* %thid, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32* %bid, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64** %6, align 8
  %99 = getelementptr inbounds i64* %98, i64 %97
  %100 = load i64* %99, align 8
  %101 = load %struct.knode** %1, align 8
  %102 = getelementptr inbounds %struct.knode* %101, i64 %100
  %103 = getelementptr inbounds %struct.knode* %102, i32 0, i32 1
  %104 = getelementptr inbounds [257 x i32]* %103, i32 0, i64 %95
  %105 = load i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32* %bid, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64** %7, align 8
  %110 = getelementptr inbounds i64* %109, i64 %108
  store i64 %106, i64* %110, align 8
  br label %111

; <label>:111                                     ; preds = %93, %77
  br label %112

; <label>:112                                     ; preds = %111, %57, %38
  %113 = load i32* %thid, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32* %bid, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64** %8, align 8
  %118 = getelementptr inbounds i64* %117, i64 %116
  %119 = load i64* %118, align 8
  %120 = load %struct.knode** %1, align 8
  %121 = getelementptr inbounds %struct.knode* %120, i64 %119
  %122 = getelementptr inbounds %struct.knode* %121, i32 0, i32 2
  %123 = getelementptr inbounds [257 x i32]* %122, i32 0, i64 %114
  %124 = load i32* %123, align 4
  %125 = load i32* %bid, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32** %11, align 8
  %128 = getelementptr inbounds i32* %127, i64 %126
  %129 = load i32* %128, align 4
  %130 = icmp sle i32 %124, %129
  br i1 %130, label %131, label %186

; <label>:131                                     ; preds = %112
  %132 = load i32* %thid, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = load i32* %bid, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64** %8, align 8
  %138 = getelementptr inbounds i64* %137, i64 %136
  %139 = load i64* %138, align 8
  %140 = load %struct.knode** %1, align 8
  %141 = getelementptr inbounds %struct.knode* %140, i64 %139
  %142 = getelementptr inbounds %struct.knode* %141, i32 0, i32 2
  %143 = getelementptr inbounds [257 x i32]* %142, i32 0, i64 %134
  %144 = load i32* %143, align 4
  %145 = load i32* %bid, align 4
  %146 = sext i32 %145 to i64
  %147 = load i32** %11, align 8
  %148 = getelementptr inbounds i32* %147, i64 %146
  %149 = load i32* %148, align 4
  %150 = icmp sgt i32 %144, %149
  br i1 %150, label %151, label %186

; <label>:151                                     ; preds = %131
  %152 = load i32* %thid, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32* %bid, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64** %8, align 8
  %157 = getelementptr inbounds i64* %156, i64 %155
  %158 = load i64* %157, align 8
  %159 = load %struct.knode** %1, align 8
  %160 = getelementptr inbounds %struct.knode* %159, i64 %158
  %161 = getelementptr inbounds %struct.knode* %160, i32 0, i32 1
  %162 = getelementptr inbounds [257 x i32]* %161, i32 0, i64 %153
  %163 = load i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64* %2, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %185

; <label>:167                                     ; preds = %151
  %168 = load i32* %thid, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32* %bid, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64** %8, align 8
  %173 = getelementptr inbounds i64* %172, i64 %171
  %174 = load i64* %173, align 8
  %175 = load %struct.knode** %1, align 8
  %176 = getelementptr inbounds %struct.knode* %175, i64 %174
  %177 = getelementptr inbounds %struct.knode* %176, i32 0, i32 1
  %178 = getelementptr inbounds [257 x i32]* %177, i32 0, i64 %169
  %179 = load i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = load i32* %bid, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64** %9, align 8
  %184 = getelementptr inbounds i64* %183, i64 %182
  store i64 %180, i64* %184, align 8
  br label %185

; <label>:185                                     ; preds = %167, %151
  br label %186

; <label>:186                                     ; preds = %185, %131, %112
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i32* %thid, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %thid, align 4
  br label %34

; <label>:190                                     ; preds = %34
  %191 = load i32* %bid, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64** %7, align 8
  %194 = getelementptr inbounds i64* %193, i64 %192
  %195 = load i64* %194, align 8
  %196 = load i32* %bid, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64** %6, align 8
  %199 = getelementptr inbounds i64* %198, i64 %197
  store i64 %195, i64* %199, align 8
  %200 = load i32* %bid, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64** %9, align 8
  %203 = getelementptr inbounds i64* %202, i64 %201
  %204 = load i64* %203, align 8
  %205 = load i32* %bid, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64** %8, align 8
  %208 = getelementptr inbounds i64* %207, i64 %206
  store i64 %204, i64* %208, align 8
  br label %209

; <label>:209                                     ; preds = %190
  %210 = load i32* %i, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %i, align 4
  br label %28

; <label>:212                                     ; preds = %28
  store i32 0, i32* %thid, align 4
  br label %213

; <label>:213                                     ; preds = %254, %212
  %214 = load i32* %thid, align 4
  %215 = load i32* %threadsPerBlock, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %257

; <label>:217                                     ; preds = %213
  %218 = load i32* %thid, align 4
  %219 = sext i32 %218 to i64
  %220 = load i32* %bid, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64** %6, align 8
  %223 = getelementptr inbounds i64* %222, i64 %221
  %224 = load i64* %223, align 8
  %225 = load %struct.knode** %1, align 8
  %226 = getelementptr inbounds %struct.knode* %225, i64 %224
  %227 = getelementptr inbounds %struct.knode* %226, i32 0, i32 2
  %228 = getelementptr inbounds [257 x i32]* %227, i32 0, i64 %219
  %229 = load i32* %228, align 4
  %230 = load i32* %bid, align 4
  %231 = sext i32 %230 to i64
  %232 = load i32** %10, align 8
  %233 = getelementptr inbounds i32* %232, i64 %231
  %234 = load i32* %233, align 4
  %235 = icmp eq i32 %229, %234
  br i1 %235, label %236, label %253

; <label>:236                                     ; preds = %217
  %237 = load i32* %thid, align 4
  %238 = sext i32 %237 to i64
  %239 = load i32* %bid, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64** %6, align 8
  %242 = getelementptr inbounds i64* %241, i64 %240
  %243 = load i64* %242, align 8
  %244 = load %struct.knode** %1, align 8
  %245 = getelementptr inbounds %struct.knode* %244, i64 %243
  %246 = getelementptr inbounds %struct.knode* %245, i32 0, i32 1
  %247 = getelementptr inbounds [257 x i32]* %246, i32 0, i64 %238
  %248 = load i32* %247, align 4
  %249 = load i32* %bid, align 4
  %250 = sext i32 %249 to i64
  %251 = load i32** %12, align 8
  %252 = getelementptr inbounds i32* %251, i64 %250
  store i32 %248, i32* %252, align 4
  br label %253

; <label>:253                                     ; preds = %236, %217
  br label %254

; <label>:254                                     ; preds = %253
  %255 = load i32* %thid, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %thid, align 4
  br label %213

; <label>:257                                     ; preds = %213
  store i32 0, i32* %thid, align 4
  br label %258

; <label>:258                                     ; preds = %306, %257
  %259 = load i32* %thid, align 4
  %260 = load i32* %threadsPerBlock, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %309

; <label>:262                                     ; preds = %258
  %263 = load i32* %thid, align 4
  %264 = sext i32 %263 to i64
  %265 = load i32* %bid, align 4
  %266 = sext i32 %265 to i64
  %267 = load i64** %8, align 8
  %268 = getelementptr inbounds i64* %267, i64 %266
  %269 = load i64* %268, align 8
  %270 = load %struct.knode** %1, align 8
  %271 = getelementptr inbounds %struct.knode* %270, i64 %269
  %272 = getelementptr inbounds %struct.knode* %271, i32 0, i32 2
  %273 = getelementptr inbounds [257 x i32]* %272, i32 0, i64 %264
  %274 = load i32* %273, align 4
  %275 = load i32* %bid, align 4
  %276 = sext i32 %275 to i64
  %277 = load i32** %11, align 8
  %278 = getelementptr inbounds i32* %277, i64 %276
  %279 = load i32* %278, align 4
  %280 = icmp eq i32 %274, %279
  br i1 %280, label %281, label %305

; <label>:281                                     ; preds = %262
  %282 = load i32* %thid, align 4
  %283 = sext i32 %282 to i64
  %284 = load i32* %bid, align 4
  %285 = sext i32 %284 to i64
  %286 = load i64** %8, align 8
  %287 = getelementptr inbounds i64* %286, i64 %285
  %288 = load i64* %287, align 8
  %289 = load %struct.knode** %1, align 8
  %290 = getelementptr inbounds %struct.knode* %289, i64 %288
  %291 = getelementptr inbounds %struct.knode* %290, i32 0, i32 1
  %292 = getelementptr inbounds [257 x i32]* %291, i32 0, i64 %283
  %293 = load i32* %292, align 4
  %294 = load i32* %bid, align 4
  %295 = sext i32 %294 to i64
  %296 = load i32** %12, align 8
  %297 = getelementptr inbounds i32* %296, i64 %295
  %298 = load i32* %297, align 4
  %299 = sub nsw i32 %293, %298
  %300 = add nsw i32 %299, 1
  %301 = load i32* %bid, align 4
  %302 = sext i32 %301 to i64
  %303 = load i32** %13, align 8
  %304 = getelementptr inbounds i32* %303, i64 %302
  store i32 %300, i32* %304, align 4
  br label %305

; <label>:305                                     ; preds = %281, %262
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32* %thid, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %thid, align 4
  br label %258

; <label>:309                                     ; preds = %258
  br label %310

; <label>:310                                     ; preds = %309
  %311 = load i32* %bid, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %bid, align 4
  br label %23

; <label>:313                                     ; preds = %23
  %314 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %314, i64* %time2, align 8
  %315 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str97, i32 0, i32 0))
  %316 = load i64* %time1, align 8
  %317 = load i64* %time0, align 8
  %318 = sub nsw i64 %316, %317
  %319 = sitofp i64 %318 to float
  %320 = fdiv float %319, 1.000000e+06
  %321 = fpext float %320 to double
  %322 = load i64* %time1, align 8
  %323 = load i64* %time0, align 8
  %324 = sub nsw i64 %322, %323
  %325 = sitofp i64 %324 to float
  %326 = load i64* %time2, align 8
  %327 = load i64* %time0, align 8
  %328 = sub nsw i64 %326, %327
  %329 = sitofp i64 %328 to float
  %330 = fdiv float %325, %329
  %331 = fmul float %330, 1.000000e+02
  %332 = fpext float %331 to double
  %333 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str198, i32 0, i32 0), double %321, double %332)
  %334 = load i64* %time2, align 8
  %335 = load i64* %time1, align 8
  %336 = sub nsw i64 %334, %335
  %337 = sitofp i64 %336 to float
  %338 = fdiv float %337, 1.000000e+06
  %339 = fpext float %338 to double
  %340 = load i64* %time2, align 8
  %341 = load i64* %time1, align 8
  %342 = sub nsw i64 %340, %341
  %343 = sitofp i64 %342 to float
  %344 = load i64* %time2, align 8
  %345 = load i64* %time0, align 8
  %346 = sub nsw i64 %344, %345
  %347 = sitofp i64 %346 to float
  %348 = fdiv float %343, %347
  %349 = fmul float %348, 1.000000e+02
  %350 = fpext float %349 to double
  %351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str299, i32 0, i32 0), double %339, double %350)
  %352 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3100, i32 0, i32 0))
  %353 = load i64* %time2, align 8
  %354 = load i64* %time0, align 8
  %355 = sub nsw i64 %353, %354
  %356 = sitofp i64 %355 to float
  %357 = fdiv float %356, 1.000000e+06
  %358 = fpext float %357 to double
  %359 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4101, i32 0, i32 0), double %358)
  ret void
}

; Function Attrs: nounwind uwtable
define void @kernel_cpu(%struct.record* %records, %struct.knode* %knodes, i64 %knodes_elem, i32 %order, i64 %maxheight, i32 %count, i64* %currKnode, i64* %offset, i32* %keys, %struct.record* %ans) #0 {
  %1 = alloca %struct.record*, align 8
  %2 = alloca %struct.knode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.record*, align 8
  %time0 = alloca i64, align 8
  %time1 = alloca i64, align 8
  %time2 = alloca i64, align 8
  %threadsPerBlock = alloca i32, align 4
  %thid = alloca i32, align 4
  %bid = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.record* %records, %struct.record** %1, align 8
  store %struct.knode* %knodes, %struct.knode** %2, align 8
  store i64 %knodes_elem, i64* %3, align 8
  store i32 %order, i32* %4, align 4
  store i64 %maxheight, i64* %5, align 8
  store i32 %count, i32* %6, align 4
  store i64* %currKnode, i64** %7, align 8
  store i64* %offset, i64** %8, align 8
  store i32* %keys, i32** %9, align 8
  store %struct.record* %ans, %struct.record** %10, align 8
  %11 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %11, i64* %time0, align 8
  %12 = load i32* %4, align 4
  %13 = icmp slt i32 %12, 1024
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %0
  %15 = load i32* %4, align 4
  br label %17

; <label>:16                                      ; preds = %0
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 1024, %16 ]
  store i32 %18, i32* %threadsPerBlock, align 4
  %19 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %19, i64* %time1, align 8
  store i32 0, i32* %bid, align 4
  br label %20

; <label>:20                                      ; preds = %178, %17
  %21 = load i32* %bid, align 4
  %22 = load i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %181

; <label>:24                                      ; preds = %20
  store i32 0, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %123, %24
  %26 = load i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64* %5, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %126

; <label>:30                                      ; preds = %25
  store i32 0, i32* %thid, align 4
  br label %31

; <label>:31                                      ; preds = %110, %30
  %32 = load i32* %thid, align 4
  %33 = load i32* %threadsPerBlock, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %113

; <label>:35                                      ; preds = %31
  %36 = load i32* %thid, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32* %bid, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64** %7, align 8
  %41 = getelementptr inbounds i64* %40, i64 %39
  %42 = load i64* %41, align 8
  %43 = load %struct.knode** %2, align 8
  %44 = getelementptr inbounds %struct.knode* %43, i64 %42
  %45 = getelementptr inbounds %struct.knode* %44, i32 0, i32 2
  %46 = getelementptr inbounds [257 x i32]* %45, i32 0, i64 %37
  %47 = load i32* %46, align 4
  %48 = load i32* %bid, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32** %9, align 8
  %51 = getelementptr inbounds i32* %50, i64 %49
  %52 = load i32* %51, align 4
  %53 = icmp sle i32 %47, %52
  br i1 %53, label %54, label %109

; <label>:54                                      ; preds = %35
  %55 = load i32* %thid, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load i32* %bid, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64** %7, align 8
  %61 = getelementptr inbounds i64* %60, i64 %59
  %62 = load i64* %61, align 8
  %63 = load %struct.knode** %2, align 8
  %64 = getelementptr inbounds %struct.knode* %63, i64 %62
  %65 = getelementptr inbounds %struct.knode* %64, i32 0, i32 2
  %66 = getelementptr inbounds [257 x i32]* %65, i32 0, i64 %57
  %67 = load i32* %66, align 4
  %68 = load i32* %bid, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32** %9, align 8
  %71 = getelementptr inbounds i32* %70, i64 %69
  %72 = load i32* %71, align 4
  %73 = icmp sgt i32 %67, %72
  br i1 %73, label %74, label %109

; <label>:74                                      ; preds = %54
  %75 = load i32* %thid, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32* %bid, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64** %8, align 8
  %80 = getelementptr inbounds i64* %79, i64 %78
  %81 = load i64* %80, align 8
  %82 = load %struct.knode** %2, align 8
  %83 = getelementptr inbounds %struct.knode* %82, i64 %81
  %84 = getelementptr inbounds %struct.knode* %83, i32 0, i32 1
  %85 = getelementptr inbounds [257 x i32]* %84, i32 0, i64 %76
  %86 = load i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64* %3, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %108

; <label>:90                                      ; preds = %74
  %91 = load i32* %thid, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32* %bid, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64** %8, align 8
  %96 = getelementptr inbounds i64* %95, i64 %94
  %97 = load i64* %96, align 8
  %98 = load %struct.knode** %2, align 8
  %99 = getelementptr inbounds %struct.knode* %98, i64 %97
  %100 = getelementptr inbounds %struct.knode* %99, i32 0, i32 1
  %101 = getelementptr inbounds [257 x i32]* %100, i32 0, i64 %92
  %102 = load i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32* %bid, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64** %8, align 8
  %107 = getelementptr inbounds i64* %106, i64 %105
  store i64 %103, i64* %107, align 8
  br label %108

; <label>:108                                     ; preds = %90, %74
  br label %109

; <label>:109                                     ; preds = %108, %54, %35
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32* %thid, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %thid, align 4
  br label %31

; <label>:113                                     ; preds = %31
  %114 = load i32* %bid, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64** %8, align 8
  %117 = getelementptr inbounds i64* %116, i64 %115
  %118 = load i64* %117, align 8
  %119 = load i32* %bid, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64** %7, align 8
  %122 = getelementptr inbounds i64* %121, i64 %120
  store i64 %118, i64* %122, align 8
  br label %123

; <label>:123                                     ; preds = %113
  %124 = load i32* %i, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %i, align 4
  br label %25

; <label>:126                                     ; preds = %25
  store i32 0, i32* %thid, align 4
  br label %127

; <label>:127                                     ; preds = %174, %126
  %128 = load i32* %thid, align 4
  %129 = load i32* %threadsPerBlock, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %177

; <label>:131                                     ; preds = %127
  %132 = load i32* %thid, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32* %bid, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64** %7, align 8
  %137 = getelementptr inbounds i64* %136, i64 %135
  %138 = load i64* %137, align 8
  %139 = load %struct.knode** %2, align 8
  %140 = getelementptr inbounds %struct.knode* %139, i64 %138
  %141 = getelementptr inbounds %struct.knode* %140, i32 0, i32 2
  %142 = getelementptr inbounds [257 x i32]* %141, i32 0, i64 %133
  %143 = load i32* %142, align 4
  %144 = load i32* %bid, align 4
  %145 = sext i32 %144 to i64
  %146 = load i32** %9, align 8
  %147 = getelementptr inbounds i32* %146, i64 %145
  %148 = load i32* %147, align 4
  %149 = icmp eq i32 %143, %148
  br i1 %149, label %150, label %173

; <label>:150                                     ; preds = %131
  %151 = load i32* %thid, align 4
  %152 = sext i32 %151 to i64
  %153 = load i32* %bid, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64** %7, align 8
  %156 = getelementptr inbounds i64* %155, i64 %154
  %157 = load i64* %156, align 8
  %158 = load %struct.knode** %2, align 8
  %159 = getelementptr inbounds %struct.knode* %158, i64 %157
  %160 = getelementptr inbounds %struct.knode* %159, i32 0, i32 1
  %161 = getelementptr inbounds [257 x i32]* %160, i32 0, i64 %152
  %162 = load i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.record** %1, align 8
  %165 = getelementptr inbounds %struct.record* %164, i64 %163
  %166 = getelementptr inbounds %struct.record* %165, i32 0, i32 0
  %167 = load i32* %166, align 4
  %168 = load i32* %bid, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.record** %10, align 8
  %171 = getelementptr inbounds %struct.record* %170, i64 %169
  %172 = getelementptr inbounds %struct.record* %171, i32 0, i32 0
  store i32 %167, i32* %172, align 4
  br label %173

; <label>:173                                     ; preds = %150, %131
  br label %174

; <label>:174                                     ; preds = %173
  %175 = load i32* %thid, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %thid, align 4
  br label %127

; <label>:177                                     ; preds = %127
  br label %178

; <label>:178                                     ; preds = %177
  %179 = load i32* %bid, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %bid, align 4
  br label %20

; <label>:181                                     ; preds = %20
  %182 = call i64 (...)* bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %182, i64* %time2, align 8
  %183 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str104, i32 0, i32 0))
  %184 = load i64* %time1, align 8
  %185 = load i64* %time0, align 8
  %186 = sub nsw i64 %184, %185
  %187 = sitofp i64 %186 to float
  %188 = fdiv float %187, 1.000000e+06
  %189 = fpext float %188 to double
  %190 = load i64* %time1, align 8
  %191 = load i64* %time0, align 8
  %192 = sub nsw i64 %190, %191
  %193 = sitofp i64 %192 to float
  %194 = load i64* %time2, align 8
  %195 = load i64* %time0, align 8
  %196 = sub nsw i64 %194, %195
  %197 = sitofp i64 %196 to float
  %198 = fdiv float %193, %197
  %199 = fmul float %198, 1.000000e+02
  %200 = fpext float %199 to double
  %201 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str1105, i32 0, i32 0), double %189, double %200)
  %202 = load i64* %time2, align 8
  %203 = load i64* %time1, align 8
  %204 = sub nsw i64 %202, %203
  %205 = sitofp i64 %204 to float
  %206 = fdiv float %205, 1.000000e+06
  %207 = fpext float %206 to double
  %208 = load i64* %time2, align 8
  %209 = load i64* %time1, align 8
  %210 = sub nsw i64 %208, %209
  %211 = sitofp i64 %210 to float
  %212 = load i64* %time2, align 8
  %213 = load i64* %time0, align 8
  %214 = sub nsw i64 %212, %213
  %215 = sitofp i64 %214 to float
  %216 = fdiv float %211, %215
  %217 = fmul float %216, 1.000000e+02
  %218 = fpext float %217 to double
  %219 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str2106, i32 0, i32 0), double %207, double %218)
  %220 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3107, i32 0, i32 0))
  %221 = load i64* %time2, align 8
  %222 = load i64* %time0, align 8
  %223 = sub nsw i64 %221, %222
  %224 = sitofp i64 %223 to float
  %225 = fdiv float %224, 1.000000e+06
  %226 = fpext float %225 to double
  %227 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4108, i32 0, i32 0), double %226)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isInteger(i8* %str) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* %str, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = load i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %30

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %26, %8
  %10 = load i8** %2, align 8
  %11 = load i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %9
  %15 = load i8** %2, align 8
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp slt i32 %17, 48
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %14
  %20 = load i8** %2, align 8
  %21 = load i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 57
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %19, %14
  store i32 0, i32* %1
  br label %30

; <label>:25                                      ; preds = %19
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load i8** %2, align 8
  %28 = getelementptr inbounds i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %9

; <label>:29                                      ; preds = %9
  store i32 1, i32* %1
  br label %30

; <label>:30                                      ; preds = %29, %24, %7
  %31 = load i32* %1
  ret i32 %31
}

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

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
