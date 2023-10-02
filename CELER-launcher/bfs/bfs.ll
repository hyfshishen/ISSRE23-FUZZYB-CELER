; ModuleID = 'bfs.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }

@fp = global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1

; Function Attrs: uwtable
define void @_Z5UsageiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load %struct._IO_FILE** @stderr, align 8
  %4 = load i8*** %2, align 8
  %5 = getelementptr inbounds i8** %4, i64 0
  %6 = load i8** %5, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0), i8* %6)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load i32* %1, align 4
  %4 = load i8*** %2, align 8
  call void @_Z8BFSGraphiPPc(i32 %3, i8** %4)
  ret i32 0
}

; Function Attrs: uwtable
define void @_Z8BFSGraphiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %no_of_nodes = alloca i32, align 4
  %edge_list_size = alloca i32, align 4
  %input_f = alloca i8*, align 8
  %source = alloca i32, align 4
  %h_graph_nodes = alloca %struct.Node*, align 8
  %h_graph_mask = alloca i8*, align 8
  %h_updating_graph_mask = alloca i8*, align 8
  %h_graph_visited = alloca i8*, align 8
  %start = alloca i32, align 4
  %edgeno = alloca i32, align 4
  %i = alloca i32, align 4
  %id = alloca i32, align 4
  %cost = alloca i32, align 4
  %h_graph_edges = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %h_cost = alloca i32*, align 8
  %i2 = alloca i32, align 4
  %k = alloca i32, align 4
  %stop = alloca i8, align 1
  %tid = alloca i32, align 4
  %i3 = alloca i32, align 4
  %id4 = alloca i32, align 4
  %tid5 = alloca i32, align 4
  %fpo = alloca %struct._IO_FILE*, align 8
  %i6 = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  store i32 0, i32* %no_of_nodes, align 4
  store i32 0, i32* %edge_list_size, align 4
  %3 = load i32* %1, align 4
  %4 = icmp ne i32 %3, 2
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  %7 = load i8*** %2, align 8
  call void @_Z5UsageiPPc(i32 %6, i8** %7)
  call void @exit(i32 0) #4
  unreachable

; <label>:8                                       ; preds = %0
  %9 = load i8*** %2, align 8
  %10 = getelementptr inbounds i8** %9, i64 1
  %11 = load i8** %10, align 8
  store i8* %11, i8** %input_f, align 8
  %12 = load i8** %input_f, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** @fp, align 8
  %14 = load %struct._IO_FILE** @fp, align 8
  %15 = icmp ne %struct._IO_FILE* %14, null
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %8
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0))
  br label %280

; <label>:18                                      ; preds = %8
  store i32 0, i32* %source, align 4
  %19 = load %struct._IO_FILE** @fp, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %no_of_nodes)
  %21 = load i32* %no_of_nodes, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = call noalias i8* @malloc(i64 %23) #5
  %25 = bitcast i8* %24 to %struct.Node*
  store %struct.Node* %25, %struct.Node** %h_graph_nodes, align 8
  %26 = load i32* %no_of_nodes, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 1, %27
  %29 = call noalias i8* @malloc(i64 %28) #5
  store i8* %29, i8** %h_graph_mask, align 8
  %30 = load i32* %no_of_nodes, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 1, %31
  %33 = call noalias i8* @malloc(i64 %32) #5
  store i8* %33, i8** %h_updating_graph_mask, align 8
  %34 = load i32* %no_of_nodes, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 1, %35
  %37 = call noalias i8* @malloc(i64 %36) #5
  store i8* %37, i8** %h_graph_visited, align 8
  store i32 0, i32* %i, align 4
  br label %38

; <label>:38                                      ; preds = %69, %18
  %39 = load i32* %i, align 4
  %40 = load i32* %no_of_nodes, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %72

; <label>:42                                      ; preds = %38
  %43 = load %struct._IO_FILE** @fp, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32* %start, i32* %edgeno)
  %45 = load i32* %start, align 4
  %46 = load i32* %i, align 4
  %47 = zext i32 %46 to i64
  %48 = load %struct.Node** %h_graph_nodes, align 8
  %49 = getelementptr inbounds %struct.Node* %48, i64 %47
  %50 = getelementptr inbounds %struct.Node* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load i32* %edgeno, align 4
  %52 = load i32* %i, align 4
  %53 = zext i32 %52 to i64
  %54 = load %struct.Node** %h_graph_nodes, align 8
  %55 = getelementptr inbounds %struct.Node* %54, i64 %53
  %56 = getelementptr inbounds %struct.Node* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load i32* %i, align 4
  %58 = zext i32 %57 to i64
  %59 = load i8** %h_graph_mask, align 8
  %60 = getelementptr inbounds i8* %59, i64 %58
  store i8 0, i8* %60, align 1
  %61 = load i32* %i, align 4
  %62 = zext i32 %61 to i64
  %63 = load i8** %h_updating_graph_mask, align 8
  %64 = getelementptr inbounds i8* %63, i64 %62
  store i8 0, i8* %64, align 1
  %65 = load i32* %i, align 4
  %66 = zext i32 %65 to i64
  %67 = load i8** %h_graph_visited, align 8
  %68 = getelementptr inbounds i8* %67, i64 %66
  store i8 0, i8* %68, align 1
  br label %69

; <label>:69                                      ; preds = %42
  %70 = load i32* %i, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %i, align 4
  br label %38

; <label>:72                                      ; preds = %38
  %73 = load %struct._IO_FILE** @fp, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %source)
  %75 = load i32* %source, align 4
  %76 = sext i32 %75 to i64
  %77 = load i8** %h_graph_mask, align 8
  %78 = getelementptr inbounds i8* %77, i64 %76
  store i8 1, i8* %78, align 1
  %79 = load i32* %source, align 4
  %80 = sext i32 %79 to i64
  %81 = load i8** %h_graph_visited, align 8
  %82 = getelementptr inbounds i8* %81, i64 %80
  store i8 1, i8* %82, align 1
  %83 = load %struct._IO_FILE** @fp, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %edge_list_size)
  %85 = load i32* %edge_list_size, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 4, %86
  %88 = call noalias i8* @malloc(i64 %87) #5
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %h_graph_edges, align 8
  store i32 0, i32* %i1, align 4
  br label %90

; <label>:90                                      ; preds = %104, %72
  %91 = load i32* %i1, align 4
  %92 = load i32* %edge_list_size, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

; <label>:94                                      ; preds = %90
  %95 = load %struct._IO_FILE** @fp, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %id)
  %97 = load %struct._IO_FILE** @fp, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %cost)
  %99 = load i32* %id, align 4
  %100 = load i32* %i1, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32** %h_graph_edges, align 8
  %103 = getelementptr inbounds i32* %102, i64 %101
  store i32 %99, i32* %103, align 4
  br label %104

; <label>:104                                     ; preds = %94
  %105 = load i32* %i1, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %i1, align 4
  br label %90

; <label>:107                                     ; preds = %90
  %108 = load %struct._IO_FILE** @fp, align 8
  %109 = icmp ne %struct._IO_FILE* %108, null
  br i1 %109, label %110, label %113

; <label>:110                                     ; preds = %107
  %111 = load %struct._IO_FILE** @fp, align 8
  %112 = call i32 @fclose(%struct._IO_FILE* %111)
  br label %113

; <label>:113                                     ; preds = %110, %107
  %114 = load i32* %no_of_nodes, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = call noalias i8* @malloc(i64 %116) #5
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %h_cost, align 8
  store i32 0, i32* %i2, align 4
  br label %119

; <label>:119                                     ; preds = %128, %113
  %120 = load i32* %i2, align 4
  %121 = load i32* %no_of_nodes, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %131

; <label>:123                                     ; preds = %119
  %124 = load i32* %i2, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32** %h_cost, align 8
  %127 = getelementptr inbounds i32* %126, i64 %125
  store i32 -1, i32* %127, align 4
  br label %128

; <label>:128                                     ; preds = %123
  %129 = load i32* %i2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i2, align 4
  br label %119

; <label>:131                                     ; preds = %119
  %132 = load i32* %source, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32** %h_cost, align 8
  %135 = getelementptr inbounds i32* %134, i64 %133
  store i32 0, i32* %135, align 4
  store i32 0, i32* %k, align 4
  br label %136

; <label>:136                                     ; preds = %247, %131
  store i8 0, i8* %stop, align 1
  store i32 0, i32* %tid, align 4
  br label %137

; <label>:137                                     ; preds = %210, %136
  %138 = load i32* %tid, align 4
  %139 = load i32* %no_of_nodes, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %213

; <label>:141                                     ; preds = %137
  %142 = load i32* %tid, align 4
  %143 = sext i32 %142 to i64
  %144 = load i8** %h_graph_mask, align 8
  %145 = getelementptr inbounds i8* %144, i64 %143
  %146 = load i8* %145, align 1
  %147 = trunc i8 %146 to i1
  %148 = zext i1 %147 to i32
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %209

; <label>:150                                     ; preds = %141
  %151 = load i32* %tid, align 4
  %152 = sext i32 %151 to i64
  %153 = load i8** %h_graph_mask, align 8
  %154 = getelementptr inbounds i8* %153, i64 %152
  store i8 0, i8* %154, align 1
  %155 = load i32* %tid, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.Node** %h_graph_nodes, align 8
  %158 = getelementptr inbounds %struct.Node* %157, i64 %156
  %159 = getelementptr inbounds %struct.Node* %158, i32 0, i32 0
  %160 = load i32* %159, align 4
  store i32 %160, i32* %i3, align 4
  br label %161

; <label>:161                                     ; preds = %205, %150
  %162 = load i32* %i3, align 4
  %163 = load i32* %tid, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.Node** %h_graph_nodes, align 8
  %166 = getelementptr inbounds %struct.Node* %165, i64 %164
  %167 = getelementptr inbounds %struct.Node* %166, i32 0, i32 1
  %168 = load i32* %167, align 4
  %169 = load i32* %tid, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.Node** %h_graph_nodes, align 8
  %172 = getelementptr inbounds %struct.Node* %171, i64 %170
  %173 = getelementptr inbounds %struct.Node* %172, i32 0, i32 0
  %174 = load i32* %173, align 4
  %175 = add nsw i32 %168, %174
  %176 = icmp slt i32 %162, %175
  br i1 %176, label %177, label %208

; <label>:177                                     ; preds = %161
  %178 = load i32* %i3, align 4
  %179 = sext i32 %178 to i64
  %180 = load i32** %h_graph_edges, align 8
  %181 = getelementptr inbounds i32* %180, i64 %179
  %182 = load i32* %181, align 4
  store i32 %182, i32* %id4, align 4
  %183 = load i32* %id4, align 4
  %184 = sext i32 %183 to i64
  %185 = load i8** %h_graph_visited, align 8
  %186 = getelementptr inbounds i8* %185, i64 %184
  %187 = load i8* %186, align 1
  %188 = trunc i8 %187 to i1
  br i1 %188, label %204, label %189

; <label>:189                                     ; preds = %177
  %190 = load i32* %tid, align 4
  %191 = sext i32 %190 to i64
  %192 = load i32** %h_cost, align 8
  %193 = getelementptr inbounds i32* %192, i64 %191
  %194 = load i32* %193, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32* %id4, align 4
  %197 = sext i32 %196 to i64
  %198 = load i32** %h_cost, align 8
  %199 = getelementptr inbounds i32* %198, i64 %197
  store i32 %195, i32* %199, align 4
  %200 = load i32* %id4, align 4
  %201 = sext i32 %200 to i64
  %202 = load i8** %h_updating_graph_mask, align 8
  %203 = getelementptr inbounds i8* %202, i64 %201
  store i8 1, i8* %203, align 1
  br label %204

; <label>:204                                     ; preds = %189, %177
  br label %205

; <label>:205                                     ; preds = %204
  %206 = load i32* %i3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %i3, align 4
  br label %161

; <label>:208                                     ; preds = %161
  br label %209

; <label>:209                                     ; preds = %208, %141
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32* %tid, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %tid, align 4
  br label %137

; <label>:213                                     ; preds = %137
  store i32 0, i32* %tid5, align 4
  br label %214

; <label>:214                                     ; preds = %241, %213
  %215 = load i32* %tid5, align 4
  %216 = load i32* %no_of_nodes, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %244

; <label>:218                                     ; preds = %214
  %219 = load i32* %tid5, align 4
  %220 = sext i32 %219 to i64
  %221 = load i8** %h_updating_graph_mask, align 8
  %222 = getelementptr inbounds i8* %221, i64 %220
  %223 = load i8* %222, align 1
  %224 = trunc i8 %223 to i1
  %225 = zext i1 %224 to i32
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %240

; <label>:227                                     ; preds = %218
  %228 = load i32* %tid5, align 4
  %229 = sext i32 %228 to i64
  %230 = load i8** %h_graph_mask, align 8
  %231 = getelementptr inbounds i8* %230, i64 %229
  store i8 1, i8* %231, align 1
  %232 = load i32* %tid5, align 4
  %233 = sext i32 %232 to i64
  %234 = load i8** %h_graph_visited, align 8
  %235 = getelementptr inbounds i8* %234, i64 %233
  store i8 1, i8* %235, align 1
  store i8 1, i8* %stop, align 1
  %236 = load i32* %tid5, align 4
  %237 = sext i32 %236 to i64
  %238 = load i8** %h_updating_graph_mask, align 8
  %239 = getelementptr inbounds i8* %238, i64 %237
  store i8 0, i8* %239, align 1
  br label %240

; <label>:240                                     ; preds = %227, %218
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i32* %tid5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %tid5, align 4
  br label %214

; <label>:244                                     ; preds = %214
  %245 = load i32* %k, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %k, align 4
  br label %247

; <label>:247                                     ; preds = %244
  %248 = load i8* %stop, align 1
  %249 = trunc i8 %248 to i1
  br i1 %249, label %136, label %250

; <label>:250                                     ; preds = %247
  %251 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0))
  store %struct._IO_FILE* %251, %struct._IO_FILE** %fpo, align 8
  store i32 0, i32* %i6, align 4
  br label %252

; <label>:252                                     ; preds = %265, %250
  %253 = load i32* %i6, align 4
  %254 = load i32* %no_of_nodes, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %268

; <label>:256                                     ; preds = %252
  %257 = load %struct._IO_FILE** %fpo, align 8
  %258 = load i32* %i6, align 4
  %259 = load i32* %i6, align 4
  %260 = sext i32 %259 to i64
  %261 = load i32** %h_cost, align 8
  %262 = getelementptr inbounds i32* %261, i64 %260
  %263 = load i32* %262, align 4
  %264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %258, i32 %263)
  br label %265

; <label>:265                                     ; preds = %256
  %266 = load i32* %i6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %i6, align 4
  br label %252

; <label>:268                                     ; preds = %252
  %269 = load %struct._IO_FILE** %fpo, align 8
  %270 = call i32 @fclose(%struct._IO_FILE* %269)
  %271 = load %struct.Node** %h_graph_nodes, align 8
  %272 = bitcast %struct.Node* %271 to i8*
  call void @free(i8* %272) #5
  %273 = load i32** %h_graph_edges, align 8
  %274 = bitcast i32* %273 to i8*
  call void @free(i8* %274) #5
  %275 = load i8** %h_graph_mask, align 8
  call void @free(i8* %275) #5
  %276 = load i8** %h_updating_graph_mask, align 8
  call void @free(i8* %276) #5
  %277 = load i8** %h_graph_visited, align 8
  call void @free(i8* %277) #5
  %278 = load i32** %h_cost, align 8
  %279 = bitcast i32* %278 to i8*
  call void @free(i8* %279) #5
  br label %280

; <label>:280                                     ; preds = %268, %16
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
