; ModuleID = 'kmeans.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [305 x i8] c"Usage: %s [switches] -i filename\0A       -i filename     \09\09: file containing data to be clustered\0A       -b                 \09: input file is in binary format\0A       -k                 \09: number of clusters (default is 5) \0A       -t threshold\09\09: threshold value\0A       -n no. of threads\09: number of threads\00", align 1
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [12 x i8] c"i:k:t:b:n:?\00", align 1
@optarg = external global i8*
@.str2 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c" ,\09\0A\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"I/O completed\0A\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @usage(i8* %argv0) #0 {
  %1 = alloca i8*, align 8
  %help = alloca i8*, align 8
  store i8* %argv0, i8** %1, align 8
  store i8* getelementptr inbounds ([305 x i8]* @.str, i32 0, i32 0), i8** %help, align 8
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %help, align 8
  %4 = load i8** %1, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4)
  call void @exit(i32 -1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %opt = alloca i32, align 4
  %nclusters = alloca i32, align 4
  %filename = alloca i8*, align 8
  %buf = alloca float*, align 8
  %attributes = alloca float**, align 8
  %cluster_centres = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %numAttributes = alloca i32, align 4
  %numObjects = alloca i32, align 4
  %line = alloca [1024 x i8], align 16
  %isBinaryFile = alloca i32, align 4
  %nloops = alloca i32, align 4
  %threshold = alloca float, align 4
  %timing = alloca double, align 8
  %infile = alloca i32, align 4
  %infile1 = alloca %struct._IO_FILE*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 5, i32* %nclusters, align 4
  store i8* null, i8** %filename, align 8
  store float** null, float*** %cluster_centres, align 8
  store i32 0, i32* %isBinaryFile, align 4
  store i32 1, i32* %nloops, align 4
  store float 0x3F50624DE0000000, float* %threshold, align 4
  br label %4

; <label>:4                                       ; preds = %29, %0
  %5 = load i32* %2, align 4
  %6 = load i8*** %3, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) #5
  store i32 %7, i32* %opt, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %4
  %10 = load i32* %opt, align 4
  switch i32 %10, label %25 [
    i32 105, label %11
    i32 98, label %13
    i32 116, label %14
    i32 107, label %18
    i32 63, label %21
  ]

; <label>:11                                      ; preds = %9
  %12 = load i8** @optarg, align 8
  store i8* %12, i8** %filename, align 8
  br label %29

; <label>:13                                      ; preds = %9
  store i32 1, i32* %isBinaryFile, align 4
  br label %29

; <label>:14                                      ; preds = %9
  %15 = load i8** @optarg, align 8
  %16 = call double @atof(i8* %15) #8
  %17 = fptrunc double %16 to float
  store float %17, float* %threshold, align 4
  br label %29

; <label>:18                                      ; preds = %9
  %19 = load i8** @optarg, align 8
  %20 = call i32 @atoi(i8* %19) #8
  store i32 %20, i32* %nclusters, align 4
  br label %29

; <label>:21                                      ; preds = %9
  %22 = load i8*** %3, align 8
  %23 = getelementptr inbounds i8** %22, i64 0
  %24 = load i8** %23, align 8
  call void @usage(i8* %24)
  br label %29

; <label>:25                                      ; preds = %9
  %26 = load i8*** %3, align 8
  %27 = getelementptr inbounds i8** %26, i64 0
  %28 = load i8** %27, align 8
  call void @usage(i8* %28)
  br label %29

; <label>:29                                      ; preds = %25, %21, %18, %14, %13, %11
  br label %4

; <label>:30                                      ; preds = %4
  %31 = load i8** %filename, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %30
  %34 = load i8*** %3, align 8
  %35 = getelementptr inbounds i8** %34, i64 0
  %36 = load i8** %35, align 8
  call void @usage(i8* %36)
  br label %37

; <label>:37                                      ; preds = %33, %30
  store i32 0, i32* %numObjects, align 4
  store i32 0, i32* %numAttributes, align 4
  %38 = load i32* %isBinaryFile, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

; <label>:40                                      ; preds = %37
  %41 = load i8** %filename, align 8
  %42 = call i32 (i8*, i32, ...)* @open(i8* %41, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0))
  store i32 %42, i32* %infile, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

; <label>:44                                      ; preds = %40
  %45 = load %struct._IO_FILE** @stderr, align 8
  %46 = load i8** %filename, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0), i8* %46)
  call void @exit(i32 1) #7
  unreachable

; <label>:48                                      ; preds = %40
  %49 = load i32* %infile, align 4
  %50 = bitcast i32* %numObjects to i8*
  %51 = call i64 @read(i32 %49, i8* %50, i64 4)
  %52 = load i32* %infile, align 4
  %53 = bitcast i32* %numAttributes to i8*
  %54 = call i64 @read(i32 %52, i8* %53, i64 4)
  %55 = load i32* %numObjects, align 4
  %56 = load i32* %numAttributes, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = call noalias i8* @malloc(i64 %59) #5
  %61 = bitcast i8* %60 to float*
  store float* %61, float** %buf, align 8
  %62 = load i32* %numObjects, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = call noalias i8* @malloc(i64 %64) #5
  %66 = bitcast i8* %65 to float**
  store float** %66, float*** %attributes, align 8
  %67 = load i32* %numObjects, align 4
  %68 = load i32* %numAttributes, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = call noalias i8* @malloc(i64 %71) #5
  %73 = bitcast i8* %72 to float*
  %74 = load float*** %attributes, align 8
  %75 = getelementptr inbounds float** %74, i64 0
  store float* %73, float** %75, align 8
  store i32 1, i32* %i, align 4
  br label %76

; <label>:76                                      ; preds = %94, %48
  %77 = load i32* %i, align 4
  %78 = load i32* %numObjects, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

; <label>:80                                      ; preds = %76
  %81 = load i32* %i, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = load float*** %attributes, align 8
  %85 = getelementptr inbounds float** %84, i64 %83
  %86 = load float** %85, align 8
  %87 = load i32* %numAttributes, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float* %86, i64 %88
  %90 = load i32* %i, align 4
  %91 = sext i32 %90 to i64
  %92 = load float*** %attributes, align 8
  %93 = getelementptr inbounds float** %92, i64 %91
  store float* %89, float** %93, align 8
  br label %94

; <label>:94                                      ; preds = %80
  %95 = load i32* %i, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %i, align 4
  br label %76

; <label>:97                                      ; preds = %76
  %98 = load i32* %infile, align 4
  %99 = load float** %buf, align 8
  %100 = bitcast float* %99 to i8*
  %101 = load i32* %numObjects, align 4
  %102 = load i32* %numAttributes, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = call i64 @read(i32 %98, i8* %100, i64 %105)
  %107 = load i32* %infile, align 4
  %108 = call i32 @close(i32 %107)
  br label %228

; <label>:109                                     ; preds = %37
  %110 = load i8** %filename, align 8
  %111 = call %struct._IO_FILE* @fopen(i8* %110, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0))
  store %struct._IO_FILE* %111, %struct._IO_FILE** %infile1, align 8
  %112 = icmp eq %struct._IO_FILE* %111, null
  br i1 %112, label %113, label %117

; <label>:113                                     ; preds = %109
  %114 = load %struct._IO_FILE** @stderr, align 8
  %115 = load i8** %filename, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0), i8* %115)
  call void @exit(i32 1) #7
  unreachable

; <label>:117                                     ; preds = %109
  br label %118

; <label>:118                                     ; preds = %130, %117
  %119 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %120 = load %struct._IO_FILE** %infile1, align 8
  %121 = call i8* @fgets(i8* %119, i32 1024, %struct._IO_FILE* %120)
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %131

; <label>:123                                     ; preds = %118
  %124 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %125 = call i8* @strtok(i8* %124, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) #5
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

; <label>:127                                     ; preds = %123
  %128 = load i32* %numObjects, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %numObjects, align 4
  br label %130

; <label>:130                                     ; preds = %127, %123
  br label %118

; <label>:131                                     ; preds = %118
  %132 = load %struct._IO_FILE** %infile1, align 8
  call void @rewind(%struct._IO_FILE* %132)
  br label %133

; <label>:133                                     ; preds = %150, %131
  %134 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %135 = load %struct._IO_FILE** %infile1, align 8
  %136 = call i8* @fgets(i8* %134, i32 1024, %struct._IO_FILE* %135)
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %151

; <label>:138                                     ; preds = %133
  %139 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %140 = call i8* @strtok(i8* %139, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) #5
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

; <label>:142                                     ; preds = %138
  br label %143

; <label>:143                                     ; preds = %146, %142
  %144 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) #5
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

; <label>:146                                     ; preds = %143
  %147 = load i32* %numAttributes, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %numAttributes, align 4
  br label %143

; <label>:149                                     ; preds = %143
  br label %151

; <label>:150                                     ; preds = %138
  br label %133

; <label>:151                                     ; preds = %149, %133
  %152 = load i32* %numObjects, align 4
  %153 = load i32* %numAttributes, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = call noalias i8* @malloc(i64 %156) #5
  %158 = bitcast i8* %157 to float*
  store float* %158, float** %buf, align 8
  %159 = load i32* %numObjects, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 8
  %162 = call noalias i8* @malloc(i64 %161) #5
  %163 = bitcast i8* %162 to float**
  store float** %163, float*** %attributes, align 8
  %164 = load i32* %numObjects, align 4
  %165 = load i32* %numAttributes, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = call noalias i8* @malloc(i64 %168) #5
  %170 = bitcast i8* %169 to float*
  %171 = load float*** %attributes, align 8
  %172 = getelementptr inbounds float** %171, i64 0
  store float* %170, float** %172, align 8
  store i32 1, i32* %i, align 4
  br label %173

; <label>:173                                     ; preds = %191, %151
  %174 = load i32* %i, align 4
  %175 = load i32* %numObjects, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %194

; <label>:177                                     ; preds = %173
  %178 = load i32* %i, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = load float*** %attributes, align 8
  %182 = getelementptr inbounds float** %181, i64 %180
  %183 = load float** %182, align 8
  %184 = load i32* %numAttributes, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float* %183, i64 %185
  %187 = load i32* %i, align 4
  %188 = sext i32 %187 to i64
  %189 = load float*** %attributes, align 8
  %190 = getelementptr inbounds float** %189, i64 %188
  store float* %186, float** %190, align 8
  br label %191

; <label>:191                                     ; preds = %177
  %192 = load i32* %i, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4
  br label %173

; <label>:194                                     ; preds = %173
  %195 = load %struct._IO_FILE** %infile1, align 8
  call void @rewind(%struct._IO_FILE* %195)
  store i32 0, i32* %i, align 4
  br label %196

; <label>:196                                     ; preds = %224, %205, %194
  %197 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %198 = load %struct._IO_FILE** %infile1, align 8
  %199 = call i8* @fgets(i8* %197, i32 1024, %struct._IO_FILE* %198)
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %225

; <label>:201                                     ; preds = %196
  %202 = getelementptr inbounds [1024 x i8]* %line, i32 0, i32 0
  %203 = call i8* @strtok(i8* %202, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) #5
  %204 = icmp eq i8* %203, null
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %201
  br label %196

; <label>:206                                     ; preds = %201
  store i32 0, i32* %j, align 4
  br label %207

; <label>:207                                     ; preds = %221, %206
  %208 = load i32* %j, align 4
  %209 = load i32* %numAttributes, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %224

; <label>:211                                     ; preds = %207
  %212 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) #5
  %213 = call double @atof(i8* %212) #8
  %214 = fptrunc double %213 to float
  %215 = load i32* %i, align 4
  %216 = sext i32 %215 to i64
  %217 = load float** %buf, align 8
  %218 = getelementptr inbounds float* %217, i64 %216
  store float %214, float* %218, align 4
  %219 = load i32* %i, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %i, align 4
  br label %221

; <label>:221                                     ; preds = %211
  %222 = load i32* %j, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %j, align 4
  br label %207

; <label>:224                                     ; preds = %207
  br label %196

; <label>:225                                     ; preds = %196
  %226 = load %struct._IO_FILE** %infile1, align 8
  %227 = call i32 @fclose(%struct._IO_FILE* %226)
  br label %228

; <label>:228                                     ; preds = %225, %97
  %229 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0))
  %230 = load float*** %attributes, align 8
  %231 = getelementptr inbounds float** %230, i64 0
  %232 = load float** %231, align 8
  %233 = bitcast float* %232 to i8*
  %234 = load float** %buf, align 8
  %235 = bitcast float* %234 to i8*
  %236 = load i32* %numObjects, align 4
  %237 = load i32* %numAttributes, align 4
  %238 = mul nsw i32 %236, %237
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %233, i8* %235, i64 %240, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %241

; <label>:241                                     ; preds = %252, %228
  %242 = load i32* %i, align 4
  %243 = load i32* %nloops, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %255

; <label>:245                                     ; preds = %241
  store float** null, float*** %cluster_centres, align 8
  %246 = load i32* %numObjects, align 4
  %247 = load i32* %numAttributes, align 4
  %248 = load float*** %attributes, align 8
  %249 = load i32* %nclusters, align 4
  %250 = load float* %threshold, align 4
  %251 = call i32 @cluster(i32 %246, i32 %247, float** %248, i32 %249, float %250, float*** %cluster_centres)
  br label %252

; <label>:252                                     ; preds = %245
  %253 = load i32* %i, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i, align 4
  br label %241

; <label>:255                                     ; preds = %241
  %256 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0))
  store %struct._IO_FILE* %256, %struct._IO_FILE** %file, align 8
  store i32 0, i32* %i, align 4
  br label %257

; <label>:257                                     ; preds = %302, %255
  %258 = load i32* %i, align 4
  %259 = load i32* %nclusters, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %305

; <label>:261                                     ; preds = %257
  %262 = load %struct._IO_FILE** %file, align 8
  %263 = load i32* %i, align 4
  %264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %262, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 %263)
  %265 = load i32* %i, align 4
  %266 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 %265)
  store i32 0, i32* %j, align 4
  br label %267

; <label>:267                                     ; preds = %295, %261
  %268 = load i32* %j, align 4
  %269 = load i32* %numAttributes, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %298

; <label>:271                                     ; preds = %267
  %272 = load %struct._IO_FILE** %file, align 8
  %273 = load i32* %j, align 4
  %274 = sext i32 %273 to i64
  %275 = load i32* %i, align 4
  %276 = sext i32 %275 to i64
  %277 = load float*** %cluster_centres, align 8
  %278 = getelementptr inbounds float** %277, i64 %276
  %279 = load float** %278, align 8
  %280 = getelementptr inbounds float* %279, i64 %274
  %281 = load float* %280, align 4
  %282 = fpext float %281 to double
  %283 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %272, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), double %282)
  %284 = load i32* %j, align 4
  %285 = sext i32 %284 to i64
  %286 = load i32* %i, align 4
  %287 = sext i32 %286 to i64
  %288 = load float*** %cluster_centres, align 8
  %289 = getelementptr inbounds float** %288, i64 %287
  %290 = load float** %289, align 8
  %291 = getelementptr inbounds float* %290, i64 %285
  %292 = load float* %291, align 4
  %293 = fpext float %292 to double
  %294 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), double %293)
  br label %295

; <label>:295                                     ; preds = %271
  %296 = load i32* %j, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %j, align 4
  br label %267

; <label>:298                                     ; preds = %267
  %299 = load %struct._IO_FILE** %file, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0))
  %301 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0))
  br label %302

; <label>:302                                     ; preds = %298
  %303 = load i32* %i, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %i, align 4
  br label %257

; <label>:305                                     ; preds = %257
  %306 = load %struct._IO_FILE** %file, align 8
  %307 = call i32 @fclose(%struct._IO_FILE* %306)
  %308 = load float*** %attributes, align 8
  %309 = bitcast float** %308 to i8*
  call void @free(i8* %309) #5
  %310 = load float*** %cluster_centres, align 8
  %311 = getelementptr inbounds float** %310, i64 0
  %312 = load float** %311, align 8
  %313 = bitcast float* %312 to i8*
  call void @free(i8* %313) #5
  %314 = load float*** %cluster_centres, align 8
  %315 = bitcast float** %314 to i8*
  call void @free(i8* %315) #5
  %316 = load float** %buf, align 8
  %317 = bitcast float* %316 to i8*
  call void @free(i8* %317) #5
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @open(i8*, i32, ...) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @close(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @cluster(i32 %numObjects, i32 %numAttributes, float** %attributes, i32 %nclusters, float %threshold, float*** %cluster_centres) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float***, align 8
  %membership = alloca i32*, align 8
  %tmp_cluster_centres = alloca float**, align 8
  store i32 %numObjects, i32* %1, align 4
  store i32 %numAttributes, i32* %2, align 4
  store float** %attributes, float*** %3, align 8
  store i32 %nclusters, i32* %4, align 4
  store float %threshold, float* %5, align 4
  store float*** %cluster_centres, float**** %6, align 8
  %7 = load i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = call noalias i8* @malloc(i64 %9) #5
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %membership, align 8
  %12 = load float*** %3, align 8
  %13 = load i32* %2, align 4
  %14 = load i32* %1, align 4
  %15 = load i32* %4, align 4
  %16 = load float* %5, align 4
  %17 = load i32** %membership, align 8
  %18 = call float** @kmeans_clustering(float** %12, i32 %13, i32 %14, i32 %15, float %16, i32* %17)
  store float** %18, float*** %tmp_cluster_centres, align 8
  %19 = load float**** %6, align 8
  %20 = load float*** %19, align 8
  %21 = icmp ne float** %20, null
  br i1 %21, label %22, label %31

; <label>:22                                      ; preds = %0
  %23 = load float**** %6, align 8
  %24 = load float*** %23, align 8
  %25 = getelementptr inbounds float** %24, i64 0
  %26 = load float** %25, align 8
  %27 = bitcast float* %26 to i8*
  call void @free(i8* %27) #5
  %28 = load float**** %6, align 8
  %29 = load float*** %28, align 8
  %30 = bitcast float** %29 to i8*
  call void @free(i8* %30) #5
  br label %31

; <label>:31                                      ; preds = %22, %0
  %32 = load float*** %tmp_cluster_centres, align 8
  %33 = load float**** %6, align 8
  store float** %32, float*** %33, align 8
  %34 = load i32** %membership, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @find_nearest_point(float* %pt, i32 %nfeatures, float** %pts, i32 %npts) #0 {
  %1 = alloca float*, align 8
  %2 = alloca i32, align 4
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %min_dist = alloca float, align 4
  %dist = alloca float, align 4
  store float* %pt, float** %1, align 8
  store i32 %nfeatures, i32* %2, align 4
  store float** %pts, float*** %3, align 8
  store i32 %npts, i32* %4, align 4
  store float 0x47EFFFFFE0000000, float* %min_dist, align 4
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %25, %0
  %6 = load i32* %i, align 4
  %7 = load i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %5
  %10 = load float** %1, align 8
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load float*** %3, align 8
  %14 = getelementptr inbounds float** %13, i64 %12
  %15 = load float** %14, align 8
  %16 = load i32* %2, align 4
  %17 = call float @euclid_dist_2(float* %10, float* %15, i32 %16)
  store float %17, float* %dist, align 4
  %18 = load float* %dist, align 4
  %19 = load float* %min_dist, align 4
  %20 = fcmp olt float %18, %19
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %9
  %22 = load float* %dist, align 4
  store float %22, float* %min_dist, align 4
  %23 = load i32* %i, align 4
  store i32 %23, i32* %index, align 4
  br label %24

; <label>:24                                      ; preds = %21, %9
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32* %i, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %5

; <label>:28                                      ; preds = %5
  %29 = load i32* %index, align 4
  ret i32 %29
}

; Function Attrs: inlinehint nounwind uwtable
define float @euclid_dist_2(float* %pt1, float* %pt2, i32 %numdims) #6 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %ans = alloca float, align 4
  store float* %pt1, float** %1, align 8
  store float* %pt2, float** %2, align 8
  store i32 %numdims, i32* %3, align 4
  store float 0.000000e+00, float* %ans, align 4
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %34, %0
  %5 = load i32* %i, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %37

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load float** %1, align 8
  %12 = getelementptr inbounds float* %11, i64 %10
  %13 = load float* %12, align 4
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load float** %2, align 8
  %17 = getelementptr inbounds float* %16, i64 %15
  %18 = load float* %17, align 4
  %19 = fsub float %13, %18
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load float** %1, align 8
  %23 = getelementptr inbounds float* %22, i64 %21
  %24 = load float* %23, align 4
  %25 = load i32* %i, align 4
  %26 = sext i32 %25 to i64
  %27 = load float** %2, align 8
  %28 = getelementptr inbounds float* %27, i64 %26
  %29 = load float* %28, align 4
  %30 = fsub float %24, %29
  %31 = fmul float %19, %30
  %32 = load float* %ans, align 4
  %33 = fadd float %32, %31
  store float %33, float* %ans, align 4
  br label %34

; <label>:34                                      ; preds = %8
  %35 = load i32* %i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4
  br label %4

; <label>:37                                      ; preds = %4
  %38 = load float* %ans, align 4
  ret float %38
}

; Function Attrs: nounwind uwtable
define float** @kmeans_clustering(float** %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* %membership) #0 {
  %1 = alloca float**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  %loop = alloca i32, align 4
  %new_centers_len = alloca i32*, align 8
  %new_centers = alloca float**, align 8
  %clusters = alloca float**, align 8
  %delta = alloca float, align 4
  %timing = alloca double, align 8
  %nthreads = alloca i32, align 4
  %partial_new_centers_len = alloca i32**, align 8
  %partial_new_centers = alloca float***, align 8
  %tid = alloca i32, align 4
  store float** %feature, float*** %1, align 8
  store i32 %nfeatures, i32* %2, align 4
  store i32 %npoints, i32* %3, align 4
  store i32 %nclusters, i32* %4, align 4
  store float %threshold, float* %5, align 4
  store i32* %membership, i32** %6, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %loop, align 4
  store i32 1, i32* %nthreads, align 4
  %7 = load i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = call noalias i8* @malloc(i64 %9) #5
  %11 = bitcast i8* %10 to float**
  store float** %11, float*** %clusters, align 8
  %12 = load i32* %4, align 4
  %13 = load i32* %2, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = call noalias i8* @malloc(i64 %16) #5
  %18 = bitcast i8* %17 to float*
  %19 = load float*** %clusters, align 8
  %20 = getelementptr inbounds float** %19, i64 0
  store float* %18, float** %20, align 8
  store i32 1, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %39, %0
  %22 = load i32* %i, align 4
  %23 = load i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

; <label>:25                                      ; preds = %21
  %26 = load i32* %i, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load float*** %clusters, align 8
  %30 = getelementptr inbounds float** %29, i64 %28
  %31 = load float** %30, align 8
  %32 = load i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float* %31, i64 %33
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = load float*** %clusters, align 8
  %38 = getelementptr inbounds float** %37, i64 %36
  store float* %34, float** %38, align 8
  br label %39

; <label>:39                                      ; preds = %25
  %40 = load i32* %i, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4
  br label %21

; <label>:42                                      ; preds = %21
  store i32 0, i32* %i, align 4
  br label %43

; <label>:43                                      ; preds = %80, %42
  %44 = load i32* %i, align 4
  %45 = load i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %83

; <label>:47                                      ; preds = %43
  %48 = load i32* %i, align 4
  %49 = load i32* %3, align 4
  %50 = srem i32 1, %49
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %52

; <label>:52                                      ; preds = %74, %47
  %53 = load i32* %j, align 4
  %54 = load i32* %2, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

; <label>:56                                      ; preds = %52
  %57 = load i32* %j, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32* %n, align 4
  %60 = sext i32 %59 to i64
  %61 = load float*** %1, align 8
  %62 = getelementptr inbounds float** %61, i64 %60
  %63 = load float** %62, align 8
  %64 = getelementptr inbounds float* %63, i64 %58
  %65 = load float* %64, align 4
  %66 = load i32* %j, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32* %i, align 4
  %69 = sext i32 %68 to i64
  %70 = load float*** %clusters, align 8
  %71 = getelementptr inbounds float** %70, i64 %69
  %72 = load float** %71, align 8
  %73 = getelementptr inbounds float* %72, i64 %67
  store float %65, float* %73, align 4
  br label %74

; <label>:74                                      ; preds = %56
  %75 = load i32* %j, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %j, align 4
  br label %52

; <label>:77                                      ; preds = %52
  %78 = load i32* %n, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %n, align 4
  br label %80

; <label>:80                                      ; preds = %77
  %81 = load i32* %i, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %i, align 4
  br label %43

; <label>:83                                      ; preds = %43
  store i32 0, i32* %i, align 4
  br label %84

; <label>:84                                      ; preds = %93, %83
  %85 = load i32* %i, align 4
  %86 = load i32* %3, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

; <label>:88                                      ; preds = %84
  %89 = load i32* %i, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32** %6, align 8
  %92 = getelementptr inbounds i32* %91, i64 %90
  store i32 -1, i32* %92, align 4
  br label %93

; <label>:93                                      ; preds = %88
  %94 = load i32* %i, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %i, align 4
  br label %84

; <label>:96                                      ; preds = %84
  %97 = load i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = call noalias i8* @calloc(i64 %98, i64 4) #5
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %new_centers_len, align 8
  %101 = load i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = call noalias i8* @malloc(i64 %103) #5
  %105 = bitcast i8* %104 to float**
  store float** %105, float*** %new_centers, align 8
  %106 = load i32* %4, align 4
  %107 = load i32* %2, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = call noalias i8* @calloc(i64 %109, i64 4) #5
  %111 = bitcast i8* %110 to float*
  %112 = load float*** %new_centers, align 8
  %113 = getelementptr inbounds float** %112, i64 0
  store float* %111, float** %113, align 8
  store i32 1, i32* %i, align 4
  br label %114

; <label>:114                                     ; preds = %132, %96
  %115 = load i32* %i, align 4
  %116 = load i32* %4, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

; <label>:118                                     ; preds = %114
  %119 = load i32* %i, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = load float*** %new_centers, align 8
  %123 = getelementptr inbounds float** %122, i64 %121
  %124 = load float** %123, align 8
  %125 = load i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float* %124, i64 %126
  %128 = load i32* %i, align 4
  %129 = sext i32 %128 to i64
  %130 = load float*** %new_centers, align 8
  %131 = getelementptr inbounds float** %130, i64 %129
  store float* %127, float** %131, align 8
  br label %132

; <label>:132                                     ; preds = %118
  %133 = load i32* %i, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %i, align 4
  br label %114

; <label>:135                                     ; preds = %114
  %136 = load i32* %nthreads, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = call noalias i8* @malloc(i64 %138) #5
  %140 = bitcast i8* %139 to i32**
  store i32** %140, i32*** %partial_new_centers_len, align 8
  %141 = load i32* %nthreads, align 4
  %142 = load i32* %4, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = call noalias i8* @calloc(i64 %144, i64 4) #5
  %146 = bitcast i8* %145 to i32*
  %147 = load i32*** %partial_new_centers_len, align 8
  %148 = getelementptr inbounds i32** %147, i64 0
  store i32* %146, i32** %148, align 8
  store i32 1, i32* %i, align 4
  br label %149

; <label>:149                                     ; preds = %167, %135
  %150 = load i32* %i, align 4
  %151 = load i32* %nthreads, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

; <label>:153                                     ; preds = %149
  %154 = load i32* %i, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = load i32*** %partial_new_centers_len, align 8
  %158 = getelementptr inbounds i32** %157, i64 %156
  %159 = load i32** %158, align 8
  %160 = load i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32* %159, i64 %161
  %163 = load i32* %i, align 4
  %164 = sext i32 %163 to i64
  %165 = load i32*** %partial_new_centers_len, align 8
  %166 = getelementptr inbounds i32** %165, i64 %164
  store i32* %162, i32** %166, align 8
  br label %167

; <label>:167                                     ; preds = %153
  %168 = load i32* %i, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %i, align 4
  br label %149

; <label>:170                                     ; preds = %149
  %171 = load i32* %nthreads, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = call noalias i8* @malloc(i64 %173) #5
  %175 = bitcast i8* %174 to float***
  store float*** %175, float**** %partial_new_centers, align 8
  %176 = load i32* %nthreads, align 4
  %177 = load i32* %4, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 8
  %181 = call noalias i8* @malloc(i64 %180) #5
  %182 = bitcast i8* %181 to float**
  %183 = load float**** %partial_new_centers, align 8
  %184 = getelementptr inbounds float*** %183, i64 0
  store float** %182, float*** %184, align 8
  store i32 1, i32* %i, align 4
  br label %185

; <label>:185                                     ; preds = %203, %170
  %186 = load i32* %i, align 4
  %187 = load i32* %nthreads, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

; <label>:189                                     ; preds = %185
  %190 = load i32* %i, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = load float**** %partial_new_centers, align 8
  %194 = getelementptr inbounds float*** %193, i64 %192
  %195 = load float*** %194, align 8
  %196 = load i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float** %195, i64 %197
  %199 = load i32* %i, align 4
  %200 = sext i32 %199 to i64
  %201 = load float**** %partial_new_centers, align 8
  %202 = getelementptr inbounds float*** %201, i64 %200
  store float** %198, float*** %202, align 8
  br label %203

; <label>:203                                     ; preds = %189
  %204 = load i32* %i, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %i, align 4
  br label %185

; <label>:206                                     ; preds = %185
  store i32 0, i32* %i, align 4
  br label %207

; <label>:207                                     ; preds = %233, %206
  %208 = load i32* %i, align 4
  %209 = load i32* %nthreads, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %236

; <label>:211                                     ; preds = %207
  store i32 0, i32* %j, align 4
  br label %212

; <label>:212                                     ; preds = %229, %211
  %213 = load i32* %j, align 4
  %214 = load i32* %4, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %232

; <label>:216                                     ; preds = %212
  %217 = load i32* %2, align 4
  %218 = sext i32 %217 to i64
  %219 = call noalias i8* @calloc(i64 %218, i64 4) #5
  %220 = bitcast i8* %219 to float*
  %221 = load i32* %j, align 4
  %222 = sext i32 %221 to i64
  %223 = load i32* %i, align 4
  %224 = sext i32 %223 to i64
  %225 = load float**** %partial_new_centers, align 8
  %226 = getelementptr inbounds float*** %225, i64 %224
  %227 = load float*** %226, align 8
  %228 = getelementptr inbounds float** %227, i64 %222
  store float* %220, float** %228, align 8
  br label %229

; <label>:229                                     ; preds = %216
  %230 = load i32* %j, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %j, align 4
  br label %212

; <label>:232                                     ; preds = %212
  br label %233

; <label>:233                                     ; preds = %232
  %234 = load i32* %i, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %i, align 4
  br label %207

; <label>:236                                     ; preds = %207
  br label %237

; <label>:237                                     ; preds = %462, %236
  store float 0.000000e+00, float* %delta, align 4
  store i32 0, i32* %tid, align 4
  store i32 0, i32* %i, align 4
  br label %238

; <label>:238                                     ; preds = %312, %237
  %239 = load i32* %i, align 4
  %240 = load i32* %3, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %315

; <label>:242                                     ; preds = %238
  %243 = load i32* %i, align 4
  %244 = sext i32 %243 to i64
  %245 = load float*** %1, align 8
  %246 = getelementptr inbounds float** %245, i64 %244
  %247 = load float** %246, align 8
  %248 = load i32* %2, align 4
  %249 = load float*** %clusters, align 8
  %250 = load i32* %4, align 4
  %251 = call i32 @find_nearest_point(float* %247, i32 %248, float** %249, i32 %250)
  store i32 %251, i32* %index, align 4
  %252 = load i32* %i, align 4
  %253 = sext i32 %252 to i64
  %254 = load i32** %6, align 8
  %255 = getelementptr inbounds i32* %254, i64 %253
  %256 = load i32* %255, align 4
  %257 = load i32* %index, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %264

; <label>:259                                     ; preds = %242
  %260 = load float* %delta, align 4
  %261 = fpext float %260 to double
  %262 = fadd double %261, 1.000000e+00
  %263 = fptrunc double %262 to float
  store float %263, float* %delta, align 4
  br label %264

; <label>:264                                     ; preds = %259, %242
  %265 = load i32* %index, align 4
  %266 = load i32* %i, align 4
  %267 = sext i32 %266 to i64
  %268 = load i32** %6, align 8
  %269 = getelementptr inbounds i32* %268, i64 %267
  store i32 %265, i32* %269, align 4
  %270 = load i32* %index, align 4
  %271 = sext i32 %270 to i64
  %272 = load i32* %tid, align 4
  %273 = sext i32 %272 to i64
  %274 = load i32*** %partial_new_centers_len, align 8
  %275 = getelementptr inbounds i32** %274, i64 %273
  %276 = load i32** %275, align 8
  %277 = getelementptr inbounds i32* %276, i64 %271
  %278 = load i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  store i32 0, i32* %j, align 4
  br label %280

; <label>:280                                     ; preds = %308, %264
  %281 = load i32* %j, align 4
  %282 = load i32* %2, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %311

; <label>:284                                     ; preds = %280
  %285 = load i32* %j, align 4
  %286 = sext i32 %285 to i64
  %287 = load i32* %i, align 4
  %288 = sext i32 %287 to i64
  %289 = load float*** %1, align 8
  %290 = getelementptr inbounds float** %289, i64 %288
  %291 = load float** %290, align 8
  %292 = getelementptr inbounds float* %291, i64 %286
  %293 = load float* %292, align 4
  %294 = load i32* %j, align 4
  %295 = sext i32 %294 to i64
  %296 = load i32* %index, align 4
  %297 = sext i32 %296 to i64
  %298 = load i32* %tid, align 4
  %299 = sext i32 %298 to i64
  %300 = load float**** %partial_new_centers, align 8
  %301 = getelementptr inbounds float*** %300, i64 %299
  %302 = load float*** %301, align 8
  %303 = getelementptr inbounds float** %302, i64 %297
  %304 = load float** %303, align 8
  %305 = getelementptr inbounds float* %304, i64 %295
  %306 = load float* %305, align 4
  %307 = fadd float %306, %293
  store float %307, float* %305, align 4
  br label %308

; <label>:308                                     ; preds = %284
  %309 = load i32* %j, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %j, align 4
  br label %280

; <label>:311                                     ; preds = %280
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32* %i, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %i, align 4
  br label %238

; <label>:315                                     ; preds = %238
  store i32 0, i32* %i, align 4
  br label %316

; <label>:316                                     ; preds = %388, %315
  %317 = load i32* %i, align 4
  %318 = load i32* %4, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %391

; <label>:320                                     ; preds = %316
  store i32 0, i32* %j, align 4
  %321 = load i32* %i, align 4
  %322 = sext i32 %321 to i64
  %323 = load i32* %j, align 4
  %324 = sext i32 %323 to i64
  %325 = load i32*** %partial_new_centers_len, align 8
  %326 = getelementptr inbounds i32** %325, i64 %324
  %327 = load i32** %326, align 8
  %328 = getelementptr inbounds i32* %327, i64 %322
  %329 = load i32* %328, align 4
  %330 = load i32* %i, align 4
  %331 = sext i32 %330 to i64
  %332 = load i32** %new_centers_len, align 8
  %333 = getelementptr inbounds i32* %332, i64 %331
  %334 = load i32* %333, align 4
  %335 = add nsw i32 %334, %329
  store i32 %335, i32* %333, align 4
  %336 = load i32* %i, align 4
  %337 = sext i32 %336 to i64
  %338 = load i32* %j, align 4
  %339 = sext i32 %338 to i64
  %340 = load i32*** %partial_new_centers_len, align 8
  %341 = getelementptr inbounds i32** %340, i64 %339
  %342 = load i32** %341, align 8
  %343 = getelementptr inbounds i32* %342, i64 %337
  store i32 0, i32* %343, align 4
  store i32 0, i32* %k, align 4
  br label %344

; <label>:344                                     ; preds = %384, %320
  %345 = load i32* %k, align 4
  %346 = load i32* %2, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %387

; <label>:348                                     ; preds = %344
  %349 = load i32* %k, align 4
  %350 = sext i32 %349 to i64
  %351 = load i32* %i, align 4
  %352 = sext i32 %351 to i64
  %353 = load i32* %j, align 4
  %354 = sext i32 %353 to i64
  %355 = load float**** %partial_new_centers, align 8
  %356 = getelementptr inbounds float*** %355, i64 %354
  %357 = load float*** %356, align 8
  %358 = getelementptr inbounds float** %357, i64 %352
  %359 = load float** %358, align 8
  %360 = getelementptr inbounds float* %359, i64 %350
  %361 = load float* %360, align 4
  %362 = load i32* %k, align 4
  %363 = sext i32 %362 to i64
  %364 = load i32* %i, align 4
  %365 = sext i32 %364 to i64
  %366 = load float*** %new_centers, align 8
  %367 = getelementptr inbounds float** %366, i64 %365
  %368 = load float** %367, align 8
  %369 = getelementptr inbounds float* %368, i64 %363
  %370 = load float* %369, align 4
  %371 = fadd float %370, %361
  store float %371, float* %369, align 4
  %372 = load i32* %k, align 4
  %373 = sext i32 %372 to i64
  %374 = load i32* %i, align 4
  %375 = sext i32 %374 to i64
  %376 = load i32* %j, align 4
  %377 = sext i32 %376 to i64
  %378 = load float**** %partial_new_centers, align 8
  %379 = getelementptr inbounds float*** %378, i64 %377
  %380 = load float*** %379, align 8
  %381 = getelementptr inbounds float** %380, i64 %375
  %382 = load float** %381, align 8
  %383 = getelementptr inbounds float* %382, i64 %373
  store float 0.000000e+00, float* %383, align 4
  br label %384

; <label>:384                                     ; preds = %348
  %385 = load i32* %k, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %k, align 4
  br label %344

; <label>:387                                     ; preds = %344
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32* %i, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i, align 4
  br label %316

; <label>:391                                     ; preds = %316
  store i32 0, i32* %i, align 4
  br label %392

; <label>:392                                     ; preds = %450, %391
  %393 = load i32* %i, align 4
  %394 = load i32* %4, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %453

; <label>:396                                     ; preds = %392
  store i32 0, i32* %j, align 4
  br label %397

; <label>:397                                     ; preds = %442, %396
  %398 = load i32* %j, align 4
  %399 = load i32* %2, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %445

; <label>:401                                     ; preds = %397
  %402 = load i32* %i, align 4
  %403 = sext i32 %402 to i64
  %404 = load i32** %new_centers_len, align 8
  %405 = getelementptr inbounds i32* %404, i64 %403
  %406 = load i32* %405, align 4
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %433

; <label>:408                                     ; preds = %401
  %409 = load i32* %j, align 4
  %410 = sext i32 %409 to i64
  %411 = load i32* %i, align 4
  %412 = sext i32 %411 to i64
  %413 = load float*** %new_centers, align 8
  %414 = getelementptr inbounds float** %413, i64 %412
  %415 = load float** %414, align 8
  %416 = getelementptr inbounds float* %415, i64 %410
  %417 = load float* %416, align 4
  %418 = load i32* %i, align 4
  %419 = sext i32 %418 to i64
  %420 = load i32** %new_centers_len, align 8
  %421 = getelementptr inbounds i32* %420, i64 %419
  %422 = load i32* %421, align 4
  %423 = sitofp i32 %422 to float
  %424 = fdiv float %417, %423
  %425 = load i32* %j, align 4
  %426 = sext i32 %425 to i64
  %427 = load i32* %i, align 4
  %428 = sext i32 %427 to i64
  %429 = load float*** %clusters, align 8
  %430 = getelementptr inbounds float** %429, i64 %428
  %431 = load float** %430, align 8
  %432 = getelementptr inbounds float* %431, i64 %426
  store float %424, float* %432, align 4
  br label %433

; <label>:433                                     ; preds = %408, %401
  %434 = load i32* %j, align 4
  %435 = sext i32 %434 to i64
  %436 = load i32* %i, align 4
  %437 = sext i32 %436 to i64
  %438 = load float*** %new_centers, align 8
  %439 = getelementptr inbounds float** %438, i64 %437
  %440 = load float** %439, align 8
  %441 = getelementptr inbounds float* %440, i64 %435
  store float 0.000000e+00, float* %441, align 4
  br label %442

; <label>:442                                     ; preds = %433
  %443 = load i32* %j, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %j, align 4
  br label %397

; <label>:445                                     ; preds = %397
  %446 = load i32* %i, align 4
  %447 = sext i32 %446 to i64
  %448 = load i32** %new_centers_len, align 8
  %449 = getelementptr inbounds i32* %448, i64 %447
  store i32 0, i32* %449, align 4
  br label %450

; <label>:450                                     ; preds = %445
  %451 = load i32* %i, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %i, align 4
  br label %392

; <label>:453                                     ; preds = %392
  br label %454

; <label>:454                                     ; preds = %453
  %455 = load float* %delta, align 4
  %456 = load float* %5, align 4
  %457 = fcmp ogt float %455, %456
  br i1 %457, label %458, label %462

; <label>:458                                     ; preds = %454
  %459 = load i32* %loop, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %loop, align 4
  %461 = icmp slt i32 %459, 500
  br label %462

; <label>:462                                     ; preds = %458, %454
  %463 = phi i1 [ false, %454 ], [ %461, %458 ]
  br i1 %463, label %237, label %464

; <label>:464                                     ; preds = %462
  %465 = load float*** %new_centers, align 8
  %466 = getelementptr inbounds float** %465, i64 0
  %467 = load float** %466, align 8
  %468 = bitcast float* %467 to i8*
  call void @free(i8* %468) #5
  %469 = load float*** %new_centers, align 8
  %470 = bitcast float** %469 to i8*
  call void @free(i8* %470) #5
  %471 = load i32** %new_centers_len, align 8
  %472 = bitcast i32* %471 to i8*
  call void @free(i8* %472) #5
  %473 = load float*** %clusters, align 8
  ret float** %473
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
