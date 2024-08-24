; ModuleID = 'hashx_module'
source_filename = "hashx_module"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @compute(ptr %0) local_unnamed_addr #0 {
entry:
  %const3463 = bitcast i64 -489410267 to i64
  %const3447 = bitcast i64 -1543264299 to i64
  %const3440 = bitcast i64 -2121149370 to i64
  %const3421 = bitcast i64 1017342550 to i64
  %dst_ptr = getelementptr i64, ptr %0, i64 4
  %dst_val = load i64, ptr %dst_ptr, align 8
  %src_val = load i64, ptr %0, align 8
  %mul_result = mul i64 %src_val, %dst_val
  store i64 %mul_result, ptr %dst_ptr, align 8
  %dst_ptr29.phi.trans.insert = getelementptr i64, ptr %0, i64 5
  %dst_val31.pre = load i64, ptr %dst_ptr29.phi.trans.insert, align 8
  %dst_ptr2 = getelementptr i64, ptr %0, i64 2
  %dst_ptr16 = getelementptr i64, ptr %0, i64 6
  %src_ptr17 = getelementptr i64, ptr %0, i64 7
  %dst_ptr26 = getelementptr i64, ptr %0, i64 3
  %dst_ptr43 = getelementptr i64, ptr %0, i64 1
  %1 = load <2 x i64>, ptr %dst_ptr2, align 8
  %dst_val43256.peel = extractelement <2 x i64> %1, i64 0
  %2 = load <2 x i64>, ptr %dst_ptr16, align 8
  %dst_val183258.peel = extractelement <2 x i64> %2, i64 0
  %src_val53259.peel = extractelement <2 x i64> %2, i64 1
  %mul_result6.peel = mul i64 %src_val53259.peel, %dst_val43256.peel
  store i64 %mul_result6.peel, ptr %dst_ptr2, align 8
  %3 = load <2 x i64>, ptr %0, align 8
  %dst_val143255.peel = extractelement <2 x i64> %3, i64 1
  %shift.peel = shufflevector <2 x i64> %1, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %4 = xor <2 x i64> %3, %shift.peel
  %xor_result.peel = extractelement <2 x i64> %4, i64 0
  %add_const_result.peel = add i64 %dst_val143255.peel, %const3447
  %mul_result20.peel = mul i64 %src_val53259.peel, %dst_val183258.peel
  store i64 %mul_result20.peel, ptr %dst_ptr16, align 8
  %add_const_result24.peel = add i64 %xor_result.peel, %const3421
  %5 = extractelement <2 x i64> %1, i64 1
  %rotated.peel = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 55)
  store i64 %rotated.peel, ptr %dst_ptr26, align 8
  %6 = load <2 x i64>, ptr %dst_ptr2, align 8
  %src_val473262.peel = extractelement <2 x i64> %6, i64 0
  %src_val323263.peel = extractelement <2 x i64> %6, i64 1
  %mul_result33.peel = mul i64 %src_val323263.peel, %dst_val31.pre
  %add_const_result37.peel = add i64 %src_val53259.peel, %const3463
  store i64 %add_const_result37.peel, ptr %src_ptr17, align 8
  %shifted.peel = shl i64 %src_val323263.peel, 1
  %add_shift_result.peel = add i64 %shifted.peel, %add_const_result.peel
  %dst_val_128.peel = sext i64 %src_val473262.peel to i128
  %mul_result_128.peel = mul nsw i128 %dst_val_128.peel, %dst_val_128.peel
  %smulh_result.peel = lshr i128 %mul_result_128.peel, 64
  %smulh_result_64.peel = trunc i128 %smulh_result.peel to i64
  %7 = insertelement <2 x i64> poison, i64 %add_shift_result.peel, i64 0
  %8 = insertelement <2 x i64> %7, i64 %smulh_result_64.peel, i64 1
  store <2 x i64> %8, ptr %dst_ptr43, align 8
  %add_const_result51.peel = add i64 %src_val323263.peel, %const3440
  store i64 %add_const_result51.peel, ptr %dst_ptr26, align 8
  %mul_result57.peel = mul i64 %add_shift_result.peel, %add_const_result24.peel
  %xor_result63.peel = xor i64 %add_shift_result.peel, %mul_result20.peel
  %9 = insertelement <2 x i64> poison, i64 %mul_result57.peel, i64 0
  %10 = insertelement <2 x i64> %9, i64 %xor_result63.peel, i64 1
  store <2 x i64> %10, ptr %0, align 8
  %11 = load <2 x i64>, ptr %dst_ptr26, align 8
  %shift3353.peel = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %12 = sub <2 x i64> %11, %shift3353.peel
  %sub_result.peel = extractelement <2 x i64> %12, i64 0
  store i64 %sub_result.peel, ptr %dst_ptr26, align 8
  %mul_result74.peel = mul i64 %sub_result.peel, %xor_result63.peel
  store i64 %mul_result74.peel, ptr %dst_ptr43, align 8
  %13 = and i128 %mul_result_128.peel, 2477108189004211836906635264
  %branch_condition.peel.not = icmp eq i128 %13, 0
  br i1 %branch_condition.peel.not, label %continue_17.loopexit, label %continue_17

continue_17.loopexit:                             ; preds = %entry
  %sunkaddr = getelementptr i8, ptr %0, i64 16
  %14 = load <2 x i64>, ptr %sunkaddr, align 8
  %dst_val43256 = extractelement <2 x i64> %14, i64 0
  %sunkaddr3469 = getelementptr i8, ptr %0, i64 48
  %15 = load <2 x i64>, ptr %sunkaddr3469, align 8
  %dst_val183258 = extractelement <2 x i64> %15, i64 0
  %src_val53259 = extractelement <2 x i64> %15, i64 1
  %mul_result6 = mul i64 %src_val53259, %dst_val43256
  store i64 %mul_result6, ptr %sunkaddr, align 8
  %16 = load <2 x i64>, ptr %0, align 8
  %dst_val143255 = extractelement <2 x i64> %16, i64 1
  %shift = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %17 = xor <2 x i64> %16, %shift
  %xor_result = extractelement <2 x i64> %17, i64 0
  %add_const_result = add i64 %dst_val143255, %const3447
  %mul_result20 = mul i64 %src_val53259, %dst_val183258
  store i64 %mul_result20, ptr %sunkaddr3469, align 8
  %add_const_result24 = add i64 %xor_result, %const3421
  %18 = extractelement <2 x i64> %14, i64 1
  %rotated = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 55)
  %sunkaddr3470 = getelementptr i8, ptr %0, i64 24
  store i64 %rotated, ptr %sunkaddr3470, align 8
  %19 = load <2 x i64>, ptr %sunkaddr, align 8
  %src_val473262 = extractelement <2 x i64> %19, i64 0
  %src_val323263 = extractelement <2 x i64> %19, i64 1
  %add_const_result37 = add i64 %src_val53259, %const3463
  %sunkaddr3471 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result37, ptr %sunkaddr3471, align 8
  %shifted = shl i64 %src_val323263, 1
  %add_shift_result = add i64 %shifted, %add_const_result
  %dst_val_128 = sext i64 %src_val473262 to i128
  %mul_result_128 = mul nsw i128 %dst_val_128, %dst_val_128
  %smulh_result = lshr i128 %mul_result_128, 64
  %smulh_result_64 = trunc i128 %smulh_result to i64
  %20 = insertelement <2 x i64> poison, i64 %add_shift_result, i64 0
  %21 = insertelement <2 x i64> %20, i64 %smulh_result_64, i64 1
  %sunkaddr3472 = getelementptr i8, ptr %0, i64 8
  store <2 x i64> %21, ptr %sunkaddr3472, align 8
  %add_const_result51 = add i64 %src_val323263, %const3440
  store i64 %add_const_result51, ptr %sunkaddr3470, align 8
  %mul_result57 = mul i64 %add_shift_result, %add_const_result24
  %xor_result63 = xor i64 %add_shift_result, %mul_result20
  %22 = load <2 x i64>, ptr %sunkaddr3470, align 8
  %shift3353 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %23 = sub <2 x i64> %22, %shift3353
  %sub_result = extractelement <2 x i64> %23, i64 0
  store i64 %sub_result, ptr %sunkaddr3470, align 8
  %mul_result74 = mul i64 %sub_result, %xor_result63
  store i64 %mul_result74, ptr %sunkaddr3472, align 8
  %mul_result33 = mul i64 %src_val323263, %mul_result33.peel
  br label %continue_17

continue_17:                                      ; preds = %continue_17.loopexit, %entry
  %mul_result33.lcssa = phi i64 [ %mul_result33.peel, %entry ], [ %mul_result33, %continue_17.loopexit ]
  %mul_result57.lcssa = phi i64 [ %mul_result57.peel, %entry ], [ %mul_result57, %continue_17.loopexit ]
  %24 = icmp eq i128 %13, 0
  %const3456 = bitcast i64 -749652318 to i64
  %const3442 = bitcast i64 -1917086674 to i64
  %const3423 = bitcast i64 1140647611 to i64
  %const3407 = bitcast i64 191301244 to i64
  %sunkaddr3473 = getelementptr i8, ptr %0, i64 40
  store i64 %mul_result33.lcssa, ptr %sunkaddr3473, align 8
  %sunkaddr3474 = getelementptr i8, ptr %0, i64 16
  %25 = load <2 x i64>, ptr %sunkaddr3474, align 8
  %src_val973238 = extractelement <2 x i64> %25, i64 0
  %dst_val803239 = extractelement <2 x i64> %25, i64 1
  %sunkaddr3475 = getelementptr i8, ptr %0, i64 32
  %26 = load <2 x i64>, ptr %sunkaddr3475, align 8
  %dst_val1073240 = extractelement <2 x i64> %26, i64 0
  %src_val813241 = extractelement <2 x i64> %26, i64 1
  %mul_result82 = mul i64 %src_val813241, %dst_val803239
  %sunkaddr3476 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result82, ptr %sunkaddr3476, align 8
  %sunkaddr3477 = getelementptr i8, ptr %0, i64 48
  %27 = load <2 x i64>, ptr %sunkaddr3477, align 8
  %28 = shufflevector <2 x i64> %26, <2 x i64> <i64 -805548795, i64 poison>, <2 x i32> <i32 2, i32 0>
  %29 = add <2 x i64> %27, %28
  %30 = sub <2 x i64> %27, %28
  %31 = shufflevector <2 x i64> %29, <2 x i64> %30, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %31, ptr %sunkaddr3477, align 8
  %dst_val_12898 = sext i64 %mul_result57.lcssa to i128
  %src_val_12899 = sext i64 %src_val973238 to i128
  %mul_result_128100 = mul nsw i128 %src_val_12899, %dst_val_12898
  %smulh_result101 = lshr i128 %mul_result_128100, 64
  %smulh_result_64102 = trunc i128 %smulh_result101 to i64
  store i64 %smulh_result_64102, ptr %0, align 8
  %32 = load <2 x i64>, ptr %sunkaddr3473, align 8
  %dst_val1193246 = extractelement <2 x i64> %32, i64 0
  %src_val1083247 = extractelement <2 x i64> %32, i64 1
  %shifted109 = shl i64 %src_val1083247, 3
  %add_shift_result110 = add i64 %shifted109, %dst_val1073240
  %sunkaddr3478 = getelementptr i8, ptr %0, i64 8
  %33 = load <2 x i64>, ptr %sunkaddr3478, align 8
  %src_val1153244 = extractelement <2 x i64> %33, i64 0
  %dst_val1223245 = extractelement <2 x i64> %33, i64 1
  %mul_result116 = mul i64 %src_val1153244, %src_val1083247
  %xor_const_result = xor i64 %dst_val1193246, 792944640
  %34 = insertelement <2 x i64> poison, i64 %add_shift_result110, i64 0
  %35 = insertelement <2 x i64> %34, i64 %xor_const_result, i64 1
  store <2 x i64> %35, ptr %sunkaddr3475, align 8
  %add_const_result123 = add i64 %dst_val1223245, 1811215523
  store i64 %add_const_result123, ptr %sunkaddr3474, align 8
  %36 = load <2 x i64>, ptr %sunkaddr3478, align 8
  %dst_val1333248 = extractelement <2 x i64> %36, i64 0
  %dst_val1273249 = extractelement <2 x i64> %36, i64 1
  %mul_result129 = mul i64 %dst_val1273249, %xor_const_result
  %sub_result135 = sub i64 %dst_val1333248, %add_shift_result110
  %37 = insertelement <2 x i64> poison, i64 %sub_result135, i64 0
  %38 = insertelement <2 x i64> %37, i64 %mul_result129, i64 1
  store <2 x i64> %38, ptr %sunkaddr3478, align 8
  %xor_const_result139 = xor i64 %add_shift_result110, 1683839876
  store i64 %xor_const_result139, ptr %sunkaddr3475, align 8
  %39 = load <2 x i64>, ptr %sunkaddr3476, align 8
  %dst_val1533252 = extractelement <2 x i64> %39, i64 0
  %dst_val1433253 = extractelement <2 x i64> %39, i64 1
  %mul_result145 = mul i64 %dst_val1433253, %xor_const_result
  %add_const_result149 = add i64 %xor_const_result, 841729202
  %40 = extractelement <2 x i64> %30, i64 1
  %xor_result155 = xor i64 %dst_val1533252, %40
  %mul_result161 = mul i64 %40, %smulh_result_64102
  %sunkaddr3479 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result161, ptr %sunkaddr3479, align 8
  %41 = load <2 x i64>, ptr %0, align 8
  %dst_val1743230.peel = extractelement <2 x i64> %41, i64 0
  %src_val1663231.peel = extractelement <2 x i64> %41, i64 1
  %mul_result167.peel = mul i64 %src_val1663231.peel, %xor_result155
  %add_const_result171.peel = add i64 %src_val1663231.peel, %const3456
  %rotated177.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val1743230.peel, i64 %dst_val1743230.peel, i64 63)
  %42 = insertelement <2 x i64> poison, i64 %rotated177.peel, i64 0
  %43 = insertelement <2 x i64> %42, i64 %add_const_result171.peel, i64 1
  store <2 x i64> %43, ptr %0, align 8
  %mul_result183.peel = mul i64 %add_const_result171.peel, %add_const_result149
  %44 = load <2 x i64>, ptr %sunkaddr3478, align 8
  %src_val1883234.peel = extractelement <2 x i64> %44, i64 0
  %dst_val1873235.peel = extractelement <2 x i64> %44, i64 1
  %shifted189.peel = shl i64 %src_val1883234.peel, 2
  %add_shift_result190.peel = add i64 %shifted189.peel, %dst_val1873235.peel
  %add_const_result194.peel = add i64 %rotated177.peel, %const3442
  %mul_result200.peel = mul i64 %add_shift_result190.peel, %mul_result145
  store i64 %mul_result200.peel, ptr %sunkaddr3474, align 8
  %add_const_result204.peel = add i64 %mul_result145, 1761681841
  %xor_result210.peel = xor i64 %add_const_result194.peel, %mul_result116
  store i64 %xor_result210.peel, ptr %sunkaddr3477, align 8
  %45 = load <2 x i64>, ptr %sunkaddr3477, align 8
  %dst_val2143236.peel = extractelement <2 x i64> %45, i64 0
  %dst_val2243237.peel = extractelement <2 x i64> %45, i64 1
  %dst_val_128216.peel = sext i64 %dst_val2143236.peel to i128
  %src_val_128217.peel = sext i64 %add_const_result204.peel to i128
  %mul_result_128218.peel = mul nsw i128 %dst_val_128216.peel, %src_val_128217.peel
  %smulh_result219.peel = lshr i128 %mul_result_128218.peel, 64
  %smulh_result_64220.peel = trunc i128 %smulh_result219.peel to i64
  %xor_const_result225.peel = xor i64 %dst_val2243237.peel, %const3407
  %46 = insertelement <2 x i64> poison, i64 %smulh_result_64220.peel, i64 0
  %47 = insertelement <2 x i64> %46, i64 %xor_const_result225.peel, i64 1
  store <2 x i64> %47, ptr %sunkaddr3477, align 8
  %mul_result231.peel = mul i64 %xor_const_result225.peel, %src_val1883234.peel
  store i64 %mul_result231.peel, ptr %sunkaddr3478, align 8
  %add_const_result235.peel = add i64 %mul_result183.peel, %const3423
  %rotated241.peel = tail call i64 @llvm.fshl.i64(i64 %add_const_result194.peel, i64 %add_const_result194.peel, i64 26)
  store i64 %rotated241.peel, ptr %0, align 8
  %mul_result247.peel = mul i64 %xor_const_result225.peel, %add_const_result235.peel
  store i64 %mul_result247.peel, ptr %sunkaddr3479, align 8
  %48 = and i128 %mul_result_128218.peel, 9908357493301026612655947776
  %branch_condition253.peel = icmp ne i128 %48, 0
  %or.cond3338.not.peel = select i1 %24, i1 true, i1 %branch_condition253.peel
  br i1 %or.cond3338.not.peel, label %continue_49, label %continue_49.loopexit

continue_49.loopexit:                             ; preds = %continue_17
  %49 = load <2 x i64>, ptr %0, align 8
  %dst_val1743230 = extractelement <2 x i64> %49, i64 0
  %src_val1663231 = extractelement <2 x i64> %49, i64 1
  %add_const_result171 = add i64 %src_val1663231, %const3456
  %rotated177 = tail call i64 @llvm.fshl.i64(i64 %dst_val1743230, i64 %dst_val1743230, i64 63)
  %50 = insertelement <2 x i64> poison, i64 %rotated177, i64 0
  %51 = insertelement <2 x i64> %50, i64 %add_const_result171, i64 1
  store <2 x i64> %51, ptr %0, align 8
  %mul_result183 = mul i64 %add_const_result171, %add_const_result235.peel
  %sunkaddr3480 = getelementptr i8, ptr %0, i64 8
  %52 = load <2 x i64>, ptr %sunkaddr3480, align 8
  %src_val1883234 = extractelement <2 x i64> %52, i64 0
  %dst_val1873235 = extractelement <2 x i64> %52, i64 1
  %shifted189 = shl i64 %src_val1883234, 2
  %add_shift_result190 = add i64 %shifted189, %dst_val1873235
  %add_const_result194 = add i64 %rotated177, %const3442
  %mul_result200 = mul i64 %add_shift_result190, %add_const_result204.peel
  %add_const_result204 = add i64 %mul_result145, 3523363682
  %xor_result210 = xor i64 %add_const_result194, %smulh_result_64220.peel
  %sunkaddr3481 = getelementptr i8, ptr %0, i64 48
  store i64 %xor_result210, ptr %sunkaddr3481, align 8
  %53 = load <2 x i64>, ptr %sunkaddr3481, align 8
  %dst_val2143236 = extractelement <2 x i64> %53, i64 0
  %dst_val2243237 = extractelement <2 x i64> %53, i64 1
  %dst_val_128216 = sext i64 %dst_val2143236 to i128
  %src_val_128217 = sext i64 %add_const_result204 to i128
  %mul_result_128218 = mul nsw i128 %dst_val_128216, %src_val_128217
  %smulh_result219 = lshr i128 %mul_result_128218, 64
  %smulh_result_64220 = trunc i128 %smulh_result219 to i64
  %xor_const_result225 = xor i64 %dst_val2243237, %const3407
  %mul_result231 = mul i64 %xor_const_result225, %src_val1883234
  store i64 %mul_result231, ptr %sunkaddr3480, align 8
  %add_const_result235 = add i64 %mul_result183, %const3423
  %rotated241 = tail call i64 @llvm.fshl.i64(i64 %add_const_result194, i64 %add_const_result194, i64 26)
  %mul_result247 = mul i64 %xor_const_result225, %add_const_result235
  %sunkaddr3482 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result247, ptr %sunkaddr3482, align 8
  %mul_result167 = mul i64 %src_val1663231, %mul_result167.peel
  br label %continue_49

continue_49:                                      ; preds = %continue_49.loopexit, %continue_17
  %branch_taken249.lcssa = phi i1 [ %branch_condition.peel.not, %continue_17 ], [ true, %continue_49.loopexit ]
  %mul_result167.lcssa = phi i64 [ %mul_result167.peel, %continue_17 ], [ %mul_result167, %continue_49.loopexit ]
  %mul_result200.lcssa = phi i64 [ %mul_result200.peel, %continue_17 ], [ %mul_result200, %continue_49.loopexit ]
  %add_const_result204.lcssa = phi i64 [ %add_const_result204.peel, %continue_17 ], [ %add_const_result204, %continue_49.loopexit ]
  %smulh_result_64220.lcssa = phi i64 [ %smulh_result_64220.peel, %continue_17 ], [ %smulh_result_64220, %continue_49.loopexit ]
  %add_const_result235.lcssa = phi i64 [ %add_const_result235.peel, %continue_17 ], [ %add_const_result235, %continue_49.loopexit ]
  %rotated241.lcssa = phi i64 [ %rotated241.peel, %continue_17 ], [ %rotated241, %continue_49.loopexit ]
  %mul_result247.lcssa = phi i64 [ %mul_result247.peel, %continue_17 ], [ %mul_result247, %continue_49.loopexit ]
  %const3466 = bitcast i64 -378865469 to i64
  %const3424 = bitcast i64 1195268614 to i64
  %const3409 = bitcast i64 259919979 to i64
  %const3408 = bitcast i64 216087720 to i64
  %sunkaddr3483 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result167.lcssa, ptr %sunkaddr3483, align 8
  %sunkaddr3484 = getelementptr i8, ptr %0, i64 40
  store i64 %add_const_result235.lcssa, ptr %sunkaddr3484, align 8
  %sunkaddr3485 = getelementptr i8, ptr %0, i64 32
  store i64 %add_const_result204.lcssa, ptr %sunkaddr3485, align 8
  %54 = load <2 x i64>, ptr %sunkaddr3485, align 8
  %dst_val2563220 = extractelement <2 x i64> %54, i64 0
  %src_val2573221 = extractelement <2 x i64> %54, i64 1
  %mul_result258 = mul i64 %dst_val2563220, %src_val2573221
  %rotated264 = tail call i64 @llvm.fshl.i64(i64 %src_val2573221, i64 %src_val2573221, i64 47)
  %55 = insertelement <2 x i64> poison, i64 %mul_result258, i64 0
  %56 = insertelement <2 x i64> %55, i64 %rotated264, i64 1
  store <2 x i64> %56, ptr %sunkaddr3485, align 8
  %xor_const_result268 = xor i64 %rotated241.lcssa, -1980587182
  store i64 %xor_const_result268, ptr %0, align 8
  %dst_val_128274 = zext i64 %rotated264 to i128
  %src_val_128275 = zext i64 %xor_const_result268 to i128
  %mul_result_128276 = mul nuw i128 %dst_val_128274, %src_val_128275
  %umulh_result = lshr i128 %mul_result_128276, 64
  %umulh_result_64 = trunc i128 %umulh_result to i64
  store i64 %umulh_result_64, ptr %sunkaddr3484, align 8
  %rotated283 = tail call i64 @llvm.fshl.i64(i64 %mul_result200.lcssa, i64 %mul_result200.lcssa, i64 18)
  %sunkaddr3486 = getelementptr i8, ptr %0, i64 16
  store i64 %rotated283, ptr %sunkaddr3486, align 8
  %57 = load <2 x i64>, ptr %sunkaddr3486, align 8
  %dst_val2873222 = extractelement <2 x i64> %57, i64 0
  %dst_val2923223 = extractelement <2 x i64> %57, i64 1
  %mul_result289 = mul i64 %dst_val2873222, %xor_const_result268
  %add_const_result293 = add i64 %dst_val2923223, -2007366387
  %58 = insertelement <2 x i64> poison, i64 %mul_result289, i64 0
  %59 = insertelement <2 x i64> %58, i64 %add_const_result293, i64 1
  store <2 x i64> %59, ptr %sunkaddr3486, align 8
  %xor_const_result297 = xor i64 %smulh_result_64220.lcssa, 1311556357
  %mul_result303 = mul i64 %xor_const_result297, %xor_const_result268
  %sunkaddr3487 = getelementptr i8, ptr %0, i64 48
  store i64 %mul_result303, ptr %sunkaddr3487, align 8
  %60 = load <2 x i64>, ptr %0, align 8
  %dst_val3073225 = extractelement <2 x i64> %60, i64 1
  %61 = load <2 x i64>, ptr %sunkaddr3483, align 8
  %src_val3083226 = extractelement <2 x i64> %61, i64 0
  %shifted309 = shl i64 %src_val3083226, 1
  %add_shift_result310 = add i64 %shifted309, %dst_val3073225
  %sunkaddr3488 = getelementptr i8, ptr %0, i64 8
  store i64 %add_shift_result310, ptr %sunkaddr3488, align 8
  %shift3354 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %62 = xor <2 x i64> %shift3354, %60
  %xor_result316 = extractelement <2 x i64> %62, i64 0
  %63 = load <2 x i64>, ptr %0, align 8
  %dst_val3253228 = extractelement <2 x i64> %63, i64 0
  %dst_val3203229 = extractelement <2 x i64> %63, i64 1
  %mul_result322 = mul i64 %dst_val3203229, %dst_val3253228
  %add_const_result326 = add i64 %dst_val3253228, -279112105
  %64 = insertelement <2 x i64> poison, i64 %add_const_result326, i64 0
  %65 = insertelement <2 x i64> %64, i64 %mul_result322, i64 1
  store <2 x i64> %65, ptr %0, align 8
  %xor_const_result330 = xor i64 %xor_result316, 1537271434
  store i64 %xor_const_result330, ptr %sunkaddr3485, align 8
  %mul_result336 = mul i64 %add_const_result326, %mul_result247.lcssa
  store i64 %mul_result336, ptr %0, align 8
  %.pre = load <2 x i64>, ptr %sunkaddr3488, align 8
  %66 = load <2 x i64>, ptr %sunkaddr3483, align 8
  %dst_val3403202.peel = extractelement <2 x i64> %66, i64 0
  %src_val3413203.peel = extractelement <2 x i64> %66, i64 1
  %mul_result342.peel = mul i64 %dst_val3403202.peel, %src_val3413203.peel
  %67 = load <2 x i64>, ptr %sunkaddr3485, align 8
  %dst_val3463204.peel = extractelement <2 x i64> %67, i64 0
  %dst_val3523205.peel = extractelement <2 x i64> %67, i64 1
  %shifted348.peel = shl i64 %mul_result303, 2
  %add_shift_result349.peel = add i64 %dst_val3463204.peel, %shifted348.peel
  %68 = insertelement <2 x i64> poison, i64 %mul_result342.peel, i64 0
  %69 = insertelement <2 x i64> %68, i64 %add_shift_result349.peel, i64 1
  store <2 x i64> %69, ptr %sunkaddr3483, align 8
  %xor_const_result353.peel = xor i64 %dst_val3523205.peel, %const3466
  store i64 %xor_const_result353.peel, ptr %sunkaddr3484, align 8
  %70 = load <2 x i64>, ptr %sunkaddr3485, align 8
  %src_val3583206.peel = extractelement <2 x i64> %70, i64 0
  %dst_val3573207.peel = extractelement <2 x i64> %70, i64 1
  %mul_result359.peel = mul i64 %dst_val3573207.peel, %src_val3583206.peel
  %71 = load <2 x i64>, ptr %sunkaddr3487, align 8
  %dst_val3693208.peel = extractelement <2 x i64> %71, i64 0
  %dst_val3633209.peel = extractelement <2 x i64> %71, i64 1
  %add_shift_result366.peel = add i64 %dst_val3633209.peel, %mul_result322
  %xor_const_result370.peel = xor i64 %dst_val3693208.peel, %const3409
  %72 = insertelement <2 x i64> poison, i64 %mul_result359.peel, i64 0
  %73 = insertelement <2 x i64> %72, i64 %xor_const_result370.peel, i64 1
  store <2 x i64> %73, ptr %sunkaddr3484, align 8
  %74 = load <2 x i64>, ptr %0, align 8
  %dst_val3853210.peel = extractelement <2 x i64> %74, i64 0
  %src_val3753211.peel = extractelement <2 x i64> %74, i64 1
  %mul_result376.peel = mul i64 %src_val3753211.peel, %xor_const_result370.peel
  store i64 %mul_result376.peel, ptr %sunkaddr3487, align 8
  %dst_val4013212.peel = extractelement <2 x i64> %.pre, i64 0
  %dst_val3803213.peel = extractelement <2 x i64> %.pre, i64 1
  %xor_result382.peel = xor i64 %dst_val3853210.peel, %dst_val3803213.peel
  %xor_const_result386.peel = xor i64 %dst_val3853210.peel, %const3424
  %dst_val_128392.peel = zext i64 %mul_result342.peel to i128
  %src_val_128393.peel = zext i64 %add_shift_result366.peel to i128
  %mul_result_128394.peel = mul nuw i128 %src_val_128393.peel, %dst_val_128392.peel
  %umulh_result395.peel = lshr i128 %mul_result_128394.peel, 64
  %umulh_result_64396.peel = trunc i128 %umulh_result395.peel to i64
  %75 = insertelement <2 x i64> poison, i64 %xor_result382.peel, i64 0
  %76 = insertelement <2 x i64> %75, i64 %umulh_result_64396.peel, i64 1
  store <2 x i64> %76, ptr %sunkaddr3486, align 8
  %shifted403.peel = shl i64 %add_shift_result349.peel, 2
  %add_shift_result404.peel = add i64 %shifted403.peel, %dst_val4013212.peel
  %77 = insertelement <2 x i64> poison, i64 %xor_const_result386.peel, i64 0
  %78 = insertelement <2 x i64> %77, i64 %add_shift_result404.peel, i64 1
  store <2 x i64> %78, ptr %0, align 8
  %mul_result410.peel = mul i64 %add_shift_result366.peel, %mul_result359.peel
  %sunkaddr3489 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result410.peel, ptr %sunkaddr3489, align 8
  %xor_const_result414.peel = xor i64 %xor_result382.peel, 990371638
  %add_const_result418.peel = add i64 %add_shift_result404.peel, %const3408
  %79 = insertelement <2 x i64> poison, i64 %add_const_result418.peel, i64 0
  %80 = insertelement <2 x i64> %79, i64 %xor_const_result414.peel, i64 1
  store <2 x i64> %80, ptr %sunkaddr3488, align 8
  %mul_result424.peel = mul i64 %xor_const_result386.peel, %src_val3583206.peel
  store i64 %mul_result424.peel, ptr %sunkaddr3485, align 8
  %81 = and i128 %mul_result_128394.peel, 34001038676661445538611200
  %branch_condition430.peel = icmp ne i128 %81, 0
  %or.cond3339.not.peel = select i1 %branch_taken249.lcssa, i1 true, i1 %branch_condition430.peel
  br i1 %or.cond3339.not.peel, label %continue_81, label %continue_81.loopexit

continue_81.loopexit:                             ; preds = %continue_49
  %sunkaddr3490 = getelementptr i8, ptr %0, i64 24
  %82 = load <2 x i64>, ptr %sunkaddr3490, align 8
  %dst_val3403202 = extractelement <2 x i64> %82, i64 0
  %src_val3413203 = extractelement <2 x i64> %82, i64 1
  %mul_result342 = mul i64 %dst_val3403202, %src_val3413203
  %sunkaddr3491 = getelementptr i8, ptr %0, i64 32
  %83 = load <2 x i64>, ptr %sunkaddr3491, align 8
  %dst_val3463204 = extractelement <2 x i64> %83, i64 0
  %dst_val3523205 = extractelement <2 x i64> %83, i64 1
  %shifted348 = shl i64 %mul_result376.peel, 2
  %add_shift_result349 = add i64 %dst_val3463204, %shifted348
  %84 = insertelement <2 x i64> poison, i64 %mul_result342, i64 0
  %85 = insertelement <2 x i64> %84, i64 %add_shift_result349, i64 1
  store <2 x i64> %85, ptr %sunkaddr3490, align 8
  %xor_const_result353 = xor i64 %dst_val3523205, %const3466
  %sunkaddr3492 = getelementptr i8, ptr %0, i64 40
  store i64 %xor_const_result353, ptr %sunkaddr3492, align 8
  %86 = load <2 x i64>, ptr %sunkaddr3491, align 8
  %src_val3583206 = extractelement <2 x i64> %86, i64 0
  %dst_val3573207 = extractelement <2 x i64> %86, i64 1
  %mul_result359 = mul i64 %dst_val3573207, %src_val3583206
  %sunkaddr3493 = getelementptr i8, ptr %0, i64 48
  %87 = load <2 x i64>, ptr %sunkaddr3493, align 8
  %dst_val3693208 = extractelement <2 x i64> %87, i64 0
  %dst_val3633209 = extractelement <2 x i64> %87, i64 1
  %add_shift_result366 = add i64 %dst_val3633209, %add_const_result418.peel
  %xor_const_result370 = xor i64 %dst_val3693208, %const3409
  %88 = insertelement <2 x i64> poison, i64 %mul_result359, i64 0
  %89 = insertelement <2 x i64> %88, i64 %xor_const_result370, i64 1
  store <2 x i64> %89, ptr %sunkaddr3492, align 8
  %90 = load <2 x i64>, ptr %0, align 8
  %dst_val3853210 = extractelement <2 x i64> %90, i64 0
  %src_val3753211 = extractelement <2 x i64> %90, i64 1
  %mul_result376 = mul i64 %src_val3753211, %xor_const_result370
  store i64 %mul_result376, ptr %sunkaddr3493, align 8
  %xor_result382 = xor i64 %dst_val3853210, %xor_const_result414.peel
  %xor_const_result386 = xor i64 %dst_val3853210, %const3424
  %dst_val_128392 = zext i64 %mul_result342 to i128
  %src_val_128393 = zext i64 %add_shift_result366 to i128
  %mul_result_128394 = mul nuw i128 %src_val_128393, %dst_val_128392
  %umulh_result395 = lshr i128 %mul_result_128394, 64
  %umulh_result_64396 = trunc i128 %umulh_result395 to i64
  %91 = insertelement <2 x i64> poison, i64 %xor_result382, i64 0
  %92 = insertelement <2 x i64> %91, i64 %umulh_result_64396, i64 1
  %sunkaddr3494 = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %92, ptr %sunkaddr3494, align 8
  %shifted403 = shl i64 %add_shift_result349, 2
  %add_shift_result404 = add i64 %shifted403, %add_const_result418.peel
  %93 = insertelement <2 x i64> poison, i64 %xor_const_result386, i64 0
  %94 = insertelement <2 x i64> %93, i64 %add_shift_result404, i64 1
  store <2 x i64> %94, ptr %0, align 8
  %mul_result410 = mul i64 %add_shift_result366, %mul_result359
  %xor_const_result414 = xor i64 %dst_val3853210, %xor_result382.peel
  %add_const_result418 = add i64 %add_shift_result404, %const3408
  %95 = insertelement <2 x i64> poison, i64 %add_const_result418, i64 0
  %96 = insertelement <2 x i64> %95, i64 %xor_const_result414, i64 1
  %sunkaddr3495 = getelementptr i8, ptr %0, i64 8
  store <2 x i64> %96, ptr %sunkaddr3495, align 8
  %mul_result424 = mul i64 %xor_const_result386, %src_val3583206
  store i64 %mul_result424, ptr %sunkaddr3491, align 8
  br label %continue_81

continue_81:                                      ; preds = %continue_81.loopexit, %continue_49
  %branch_taken426.lcssa = phi i1 [ %branch_taken249.lcssa, %continue_49 ], [ true, %continue_81.loopexit ]
  %mul_result410.lcssa = phi i64 [ %mul_result410.peel, %continue_49 ], [ %mul_result410, %continue_81.loopexit ]
  %xor_const_result414.lcssa = phi i64 [ %xor_const_result414.peel, %continue_49 ], [ %xor_const_result414, %continue_81.loopexit ]
  %add_const_result418.lcssa = phi i64 [ %add_const_result418.peel, %continue_49 ], [ %add_const_result418, %continue_81.loopexit ]
  %const3467 = bitcast i64 -170722956 to i64
  %const3455 = bitcast i64 -826735246 to i64
  %const3453 = bitcast i64 -909583460 to i64
  %const3441 = bitcast i64 -2017476240 to i64
  %const3426 = bitcast i64 1265310346 to i64
  %const3411 = bitcast i64 426795125 to i64
  %97 = load <2 x i64>, ptr %0, align 8
  %src_val4343187 = extractelement <2 x i64> %97, i64 1
  %mul_result435 = mul i64 %src_val4343187, %xor_const_result414.lcssa
  %sunkaddr3496 = getelementptr i8, ptr %0, i64 40
  %98 = load <2 x i64>, ptr %sunkaddr3496, align 8
  %src_val4443191 = extractelement <2 x i64> %98, i64 1
  %shifted445 = shl i64 %src_val4443191, 1
  %add_shift_result446 = add i64 %shifted445, %add_const_result418.lcssa
  %dst_val_128452 = sext i64 %mul_result410.lcssa to i128
  %mul_result_128454 = mul nsw i128 %dst_val_128452, %dst_val_128452
  %smulh_result455 = lshr i128 %mul_result_128454, 64
  %smulh_result_64456 = trunc i128 %smulh_result455 to i64
  %sunkaddr3497 = getelementptr i8, ptr %0, i64 24
  %99 = load <2 x i64>, ptr %sunkaddr3497, align 8
  %src_val4663194 = extractelement <2 x i64> %99, i64 0
  %mul_result467 = mul i64 %src_val4663194, %add_shift_result446
  %sunkaddr3498 = getelementptr i8, ptr %0, i64 8
  store i64 %mul_result467, ptr %sunkaddr3498, align 8
  %100 = shufflevector <2 x i64> %97, <2 x i64> %98, <2 x i32> <i32 0, i32 2>
  %101 = add <2 x i64> %100, <i64 95436354, i64 poison>
  %102 = xor <2 x i64> %100, <i64 poison, i64 -215390260>
  %103 = shufflevector <2 x i64> %101, <2 x i64> %102, <2 x i32> <i32 0, i32 3>
  %104 = extractelement <2 x i64> %102, i64 1
  store i64 %104, ptr %sunkaddr3496, align 8
  %105 = shufflevector <2 x i64> %99, <2 x i64> <i64 poison, i64 1719963747>, <2 x i32> <i32 1, i32 3>
  %106 = sub <2 x i64> %105, %103
  %107 = add <2 x i64> %105, %103
  %108 = shufflevector <2 x i64> %106, <2 x i64> %107, <2 x i32> <i32 0, i32 3>
  %sunkaddr3499 = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %108, ptr %sunkaddr3499, align 8
  %109 = extractelement <2 x i64> %106, i64 0
  %110 = extractelement <2 x i64> %101, i64 0
  %mul_result483 = mul i64 %109, %110
  store i64 %mul_result483, ptr %0, align 8
  %111 = extractelement <2 x i64> %107, i64 1
  %sub_result489 = sub i64 %mul_result435, %111
  %sunkaddr3500 = getelementptr i8, ptr %0, i64 16
  store i64 %sub_result489, ptr %sunkaddr3500, align 8
  %rotated495 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 9)
  store i64 %rotated495, ptr %sunkaddr3499, align 8
  %112 = load <2 x i64>, ptr %sunkaddr3499, align 8
  %dst_val4993200 = extractelement <2 x i64> %112, i64 0
  %dst_val5153201 = extractelement <2 x i64> %112, i64 1
  %mul_result501 = mul i64 %dst_val4993200, %src_val4443191
  store i64 %mul_result501, ptr %sunkaddr3499, align 8
  %113 = load <2 x i64>, ptr %sunkaddr3500, align 8
  %shift3355 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %114 = sub <2 x i64> %113, %shift3355
  %sub_result507 = extractelement <2 x i64> %114, i64 0
  store i64 %sub_result507, ptr %sunkaddr3500, align 8
  %add_const_result511 = add i64 %src_val4443191, -523421234
  %mul_result517 = mul i64 %sub_result507, %dst_val5153201
  %115 = insertelement <2 x i64> poison, i64 %mul_result517, i64 0
  %116 = insertelement <2 x i64> %115, i64 %add_const_result511, i64 1
  store <2 x i64> %116, ptr %sunkaddr3496, align 8
  %117 = load <2 x i64>, ptr %sunkaddr3498, align 8
  %src_val5223175.peel = extractelement <2 x i64> %117, i64 1
  %mul_result523.peel = mul i64 %src_val5223175.peel, %add_const_result511
  %sunkaddr3501 = getelementptr i8, ptr %0, i64 48
  store i64 %mul_result523.peel, ptr %sunkaddr3501, align 8
  %118 = load <2 x i64>, ptr %sunkaddr3500, align 8
  %dst_val5353177.peel = extractelement <2 x i64> %118, i64 1
  %119 = shufflevector <2 x i64> %117, <2 x i64> %118, <2 x i32> <i32 0, i32 2>
  %120 = xor <2 x i64> %119, <i64 -682693375, i64 poison>
  %121 = add <2 x i64> %119, <i64 poison, i64 1226444073>
  %122 = shufflevector <2 x i64> %120, <2 x i64> %121, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %122, ptr %sunkaddr3498, align 8
  %123 = load <2 x i64>, ptr %0, align 8
  %dst_val5443178.peel = extractelement <2 x i64> %123, i64 0
  %src_val5363179.peel = extractelement <2 x i64> %123, i64 1
  %mul_result537.peel = mul i64 %src_val5363179.peel, %dst_val5353177.peel
  %add_const_result541.peel = add i64 %mul_result501, %const3426
  %124 = insertelement <2 x i64> poison, i64 %mul_result537.peel, i64 0
  %125 = insertelement <2 x i64> %124, i64 %add_const_result541.peel, i64 1
  store <2 x i64> %125, ptr %sunkaddr3497, align 8
  %xor_const_result545.peel = xor i64 %dst_val5443178.peel, %const3455
  %126 = extractelement <2 x i64> %121, i64 1
  %mul_result551.peel = mul i64 %xor_const_result545.peel, %126
  store i64 %mul_result551.peel, ptr %0, align 8
  %127 = load <2 x i64>, ptr %sunkaddr3499, align 8
  %dst_val5543180.peel = extractelement <2 x i64> %127, i64 0
  %dst_val5653181.peel = extractelement <2 x i64> %127, i64 1
  %xor_const_result555.peel = xor i64 %dst_val5543180.peel, %const3411
  %rotated561.peel = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 26)
  store i64 %rotated561.peel, ptr %sunkaddr3500, align 8
  %128 = load <2 x i64>, ptr %sunkaddr3498, align 8
  %src_val5813182.peel = extractelement <2 x i64> %128, i64 0
  %src_val5663183.peel = extractelement <2 x i64> %128, i64 1
  %dst_val_128567.peel = zext i64 %dst_val5653181.peel to i128
  %src_val_128568.peel = zext i64 %src_val5663183.peel to i128
  %mul_result_128569.peel = mul nuw i128 %src_val_128568.peel, %dst_val_128567.peel
  %umulh_result570.peel = lshr i128 %mul_result_128569.peel, 64
  %umulh_result_64571.peel = trunc i128 %umulh_result570.peel to i64
  store i64 %umulh_result_64571.peel, ptr %sunkaddr3496, align 8
  %xor_const_result576.peel = xor i64 %smulh_result_64456, %const3441
  %mul_result582.peel = mul i64 %src_val5813182.peel, %xor_const_result555.peel
  store i64 %mul_result582.peel, ptr %sunkaddr3499, align 8
  %xor_const_result586.peel = xor i64 %src_val5663183.peel, %const3453
  store i64 %xor_const_result586.peel, ptr %sunkaddr3500, align 8
  %add_const_result590.peel = add i64 %xor_const_result576.peel, %const3467
  %sunkaddr3502 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result590.peel, ptr %sunkaddr3502, align 8
  %129 = load <2 x i64>, ptr %sunkaddr3501, align 8
  %src_val5953184.peel = extractelement <2 x i64> %129, i64 0
  %dst_val5943185.peel = extractelement <2 x i64> %129, i64 1
  %mul_result596.peel = mul i64 %dst_val5943185.peel, %src_val5953184.peel
  store i64 %mul_result596.peel, ptr %sunkaddr3502, align 8
  %130 = and i128 %mul_result_128569.peel, 20428428573634980089023168512
  %branch_condition602.peel = icmp ne i128 %130, 0
  %or.cond3340.not.peel = select i1 %branch_taken426.lcssa, i1 true, i1 %branch_condition602.peel
  br i1 %or.cond3340.not.peel, label %continue_113, label %continue_113.loopexit

continue_113.loopexit:                            ; preds = %continue_81
  %sunkaddr3503 = getelementptr i8, ptr %0, i64 8
  %131 = load <2 x i64>, ptr %sunkaddr3503, align 8
  %src_val5223175 = extractelement <2 x i64> %131, i64 1
  %mul_result523 = mul i64 %src_val5223175, %src_val5953184.peel
  %sunkaddr3504 = getelementptr i8, ptr %0, i64 48
  store i64 %mul_result523, ptr %sunkaddr3504, align 8
  %sunkaddr3505 = getelementptr i8, ptr %0, i64 16
  %132 = load <2 x i64>, ptr %sunkaddr3505, align 8
  %dst_val5353177 = extractelement <2 x i64> %132, i64 1
  %133 = shufflevector <2 x i64> %131, <2 x i64> %132, <2 x i32> <i32 0, i32 2>
  %134 = xor <2 x i64> %133, <i64 -682693375, i64 poison>
  %135 = add <2 x i64> %133, <i64 poison, i64 1226444073>
  %136 = shufflevector <2 x i64> %134, <2 x i64> %135, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %136, ptr %sunkaddr3503, align 8
  %137 = load <2 x i64>, ptr %0, align 8
  %dst_val5443178 = extractelement <2 x i64> %137, i64 0
  %src_val5363179 = extractelement <2 x i64> %137, i64 1
  %mul_result537 = mul i64 %src_val5363179, %dst_val5353177
  %add_const_result541 = add i64 %mul_result582.peel, %const3426
  %138 = insertelement <2 x i64> poison, i64 %mul_result537, i64 0
  %139 = insertelement <2 x i64> %138, i64 %add_const_result541, i64 1
  %sunkaddr3506 = getelementptr i8, ptr %0, i64 24
  store <2 x i64> %139, ptr %sunkaddr3506, align 8
  %xor_const_result545 = xor i64 %dst_val5443178, %const3455
  %140 = extractelement <2 x i64> %135, i64 1
  %mul_result551 = mul i64 %xor_const_result545, %140
  store i64 %mul_result551, ptr %0, align 8
  %sunkaddr3507 = getelementptr i8, ptr %0, i64 32
  %141 = load <2 x i64>, ptr %sunkaddr3507, align 8
  %dst_val5543180 = extractelement <2 x i64> %141, i64 0
  %dst_val5653181 = extractelement <2 x i64> %141, i64 1
  %xor_const_result555 = xor i64 %dst_val5543180, %const3411
  %rotated561 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 26)
  store i64 %rotated561, ptr %sunkaddr3505, align 8
  %142 = load <2 x i64>, ptr %sunkaddr3503, align 8
  %src_val5813182 = extractelement <2 x i64> %142, i64 0
  %src_val5663183 = extractelement <2 x i64> %142, i64 1
  %dst_val_128567 = zext i64 %dst_val5653181 to i128
  %src_val_128568 = zext i64 %src_val5663183 to i128
  %mul_result_128569 = mul nuw i128 %src_val_128568, %dst_val_128567
  %umulh_result570 = lshr i128 %mul_result_128569, 64
  %umulh_result_64571 = trunc i128 %umulh_result570 to i64
  %sunkaddr3508 = getelementptr i8, ptr %0, i64 40
  store i64 %umulh_result_64571, ptr %sunkaddr3508, align 8
  %xor_const_result576 = xor i64 %mul_result596.peel, %const3441
  %mul_result582 = mul i64 %src_val5813182, %xor_const_result555
  store i64 %mul_result582, ptr %sunkaddr3507, align 8
  %xor_const_result586 = xor i64 %src_val5663183, %const3453
  store i64 %xor_const_result586, ptr %sunkaddr3505, align 8
  %add_const_result590 = add i64 %xor_const_result576, %const3467
  %sunkaddr3509 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result590, ptr %sunkaddr3509, align 8
  %143 = load <2 x i64>, ptr %sunkaddr3504, align 8
  %src_val5953184 = extractelement <2 x i64> %143, i64 0
  %dst_val5943185 = extractelement <2 x i64> %143, i64 1
  %mul_result596 = mul i64 %dst_val5943185, %src_val5953184
  store i64 %mul_result596, ptr %sunkaddr3509, align 8
  br label %continue_113

continue_113:                                     ; preds = %continue_113.loopexit, %continue_81
  %branch_taken598.lcssa = phi i1 [ %branch_taken426.lcssa, %continue_81 ], [ true, %continue_113.loopexit ]
  %src_val5953184.lcssa = phi i64 [ %src_val5953184.peel, %continue_81 ], [ %src_val5953184, %continue_113.loopexit ]
  %const3459 = bitcast i64 -686723399 to i64
  %const3451 = bitcast i64 -1072928563 to i64
  %const3433 = bitcast i64 1702195217 to i64
  %const3412 = bitcast i64 434800345 to i64
  %144 = load <2 x i64>, ptr %0, align 8
  %src_val6063158 = extractelement <2 x i64> %144, i64 0
  %dst_val6053159 = extractelement <2 x i64> %144, i64 1
  %mul_result607 = mul i64 %dst_val6053159, %src_val6063158
  %sunkaddr3510 = getelementptr i8, ptr %0, i64 8
  store i64 %mul_result607, ptr %sunkaddr3510, align 8
  %add_const_result611 = add i64 %src_val5953184.lcssa, 937909936
  %sunkaddr3511 = getelementptr i8, ptr %0, i64 16
  %145 = load <2 x i64>, ptr %sunkaddr3511, align 8
  %shift3356 = shufflevector <2 x i64> %145, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %146 = xor <2 x i64> %shift3356, %145
  %xor_result617 = extractelement <2 x i64> %146, i64 0
  %sunkaddr3512 = getelementptr i8, ptr %0, i64 24
  store i64 %xor_result617, ptr %sunkaddr3512, align 8
  %147 = load <2 x i64>, ptr %sunkaddr3511, align 8
  %src_val6223162 = extractelement <2 x i64> %147, i64 0
  %dst_val6213163 = extractelement <2 x i64> %147, i64 1
  %dst_val_128623 = sext i64 %dst_val6213163 to i128
  %src_val_128624 = sext i64 %src_val6223162 to i128
  %mul_result_128625 = mul nsw i128 %dst_val_128623, %src_val_128624
  %smulh_result626 = lshr i128 %mul_result_128625, 64
  %smulh_result_64627 = trunc i128 %smulh_result626 to i64
  %sunkaddr3513 = getelementptr i8, ptr %0, i64 32
  %148 = load <2 x i64>, ptr %sunkaddr3513, align 8
  %shift3357 = shufflevector <2 x i64> %148, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %149 = add <2 x i64> %shift3357, %148
  %150 = insertelement <2 x i64> %149, i64 %smulh_result_64627, i64 0
  store <2 x i64> %150, ptr %sunkaddr3512, align 8
  %151 = load <2 x i64>, ptr %sunkaddr3513, align 8
  %dst_val6393166 = extractelement <2 x i64> %151, i64 0
  %src_val6403167 = extractelement <2 x i64> %151, i64 1
  %mul_result641 = mul i64 %dst_val6393166, %src_val6403167
  store i64 %mul_result641, ptr %sunkaddr3513, align 8
  %add_const_result645 = add i64 %src_val6063158, -2020167780
  %xor_const_result649 = xor i64 %add_const_result611, -1068514554
  %sunkaddr3514 = getelementptr i8, ptr %0, i64 48
  store i64 %xor_const_result649, ptr %sunkaddr3514, align 8
  %152 = load <2 x i64>, ptr %sunkaddr3514, align 8
  %dst_val6533168 = extractelement <2 x i64> %152, i64 0
  %dst_val6593169 = extractelement <2 x i64> %152, i64 1
  %mul_result655 = mul i64 %dst_val6533168, %add_const_result645
  %sub_result661 = sub i64 %dst_val6593169, %src_val6223162
  %153 = insertelement <2 x i64> poison, i64 %mul_result655, i64 0
  %154 = insertelement <2 x i64> %153, i64 %sub_result661, i64 1
  store <2 x i64> %154, ptr %sunkaddr3514, align 8
  %xor_const_result665 = xor i64 %add_const_result645, -1754198708
  store i64 %xor_const_result665, ptr %0, align 8
  %mul_result671 = mul i64 %sub_result661, %src_val6223162
  store i64 %mul_result671, ptr %sunkaddr3511, align 8
  %155 = load <2 x i64>, ptr %0, align 8
  %shift3358 = shufflevector <2 x i64> %155, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %156 = xor <2 x i64> %shift3358, %155
  %xor_result677 = extractelement <2 x i64> %156, i64 0
  %157 = load <2 x i64>, ptr %sunkaddr3513, align 8
  %src_val6863172 = extractelement <2 x i64> %157, i64 0
  %dst_val6803173 = extractelement <2 x i64> %157, i64 1
  %add_const_result681 = add i64 %dst_val6803173, 782878309
  %sunkaddr3515 = getelementptr i8, ptr %0, i64 40
  store i64 %add_const_result681, ptr %sunkaddr3515, align 8
  %mul_result687 = mul i64 %src_val6863172, %sub_result661
  %sunkaddr3516 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result687, ptr %sunkaddr3516, align 8
  %158 = extractelement <2 x i64> %155, i64 1
  %159 = load <2 x i64>, ptr %sunkaddr3515, align 8
  %dst_val6913154.peel = extractelement <2 x i64> %159, i64 0
  %src_val6923155.peel = extractelement <2 x i64> %159, i64 1
  %mul_result693.peel = mul i64 %dst_val6913154.peel, %src_val6923155.peel
  %160 = load <2 x i64>, ptr %sunkaddr3512, align 8
  %dst_val7073152.peel = extractelement <2 x i64> %160, i64 0
  %dst_val6963153.peel = extractelement <2 x i64> %160, i64 1
  %add_const_result697.peel = add i64 %dst_val6963153.peel, %const3451
  %sub_result703.peel = sub i64 %158, %dst_val7073152.peel
  %mul_result709.peel = mul i64 %sub_result703.peel, %dst_val7073152.peel
  store i64 %mul_result709.peel, ptr %sunkaddr3512, align 8
  %rotated715.peel = tail call i64 @llvm.fshl.i64(i64 %sub_result703.peel, i64 %sub_result703.peel, i64 16)
  store i64 %rotated715.peel, ptr %sunkaddr3510, align 8
  %xor_const_result719.peel = xor i64 %src_val6923155.peel, %const3412
  %161 = load <2 x i64>, ptr %sunkaddr3510, align 8
  %src_val7243156.peel = extractelement <2 x i64> %161, i64 0
  %dst_val7323157.peel = extractelement <2 x i64> %161, i64 1
  %mul_result725.peel = mul i64 %src_val7243156.peel, %add_const_result697.peel
  store i64 %mul_result725.peel, ptr %sunkaddr3513, align 8
  %add_const_result729.peel = add i64 %mul_result687, %const3433
  %162 = insertelement <2 x i64> poison, i64 %xor_const_result719.peel, i64 0
  %163 = insertelement <2 x i64> %162, i64 %add_const_result729.peel, i64 1
  store <2 x i64> %163, ptr %sunkaddr3514, align 8
  %rotated735.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val7323157.peel, i64 %dst_val7323157.peel, i64 54)
  %dst_val_128741.peel = sext i64 %rotated735.peel to i128
  %src_val_128742.peel = sext i64 %xor_const_result719.peel to i128
  %mul_result_128743.peel = mul nsw i128 %dst_val_128741.peel, %src_val_128742.peel
  %smulh_result744.peel = lshr i128 %mul_result_128743.peel, 64
  %smulh_result_64745.peel = trunc i128 %smulh_result744.peel to i64
  store i64 %smulh_result_64745.peel, ptr %sunkaddr3511, align 8
  %sub_result752.peel = sub i64 %xor_result677, %xor_const_result719.peel
  %mul_result758.peel = mul i64 %sub_result752.peel, %xor_const_result719.peel
  %shifted764.peel = shl i64 %mul_result709.peel, 1
  %add_shift_result765.peel = add i64 %shifted764.peel, %add_const_result729.peel
  %add_const_result769.peel = add i64 %mul_result693.peel, %const3459
  %164 = insertelement <2 x i64> poison, i64 %add_const_result769.peel, i64 0
  %165 = insertelement <2 x i64> %164, i64 %mul_result758.peel, i64 1
  store <2 x i64> %165, ptr %sunkaddr3515, align 8
  %mul_result775.peel = mul i64 %sub_result752.peel, %add_const_result769.peel
  store i64 %mul_result775.peel, ptr %sunkaddr3515, align 8
  %166 = and i128 %mul_result_128743.peel, 9903561044693956949882961920
  %branch_condition781.peel = icmp ne i128 %166, 0
  %or.cond3341.not.peel = select i1 %branch_taken598.lcssa, i1 true, i1 %branch_condition781.peel
  br i1 %or.cond3341.not.peel, label %continue_145, label %continue_145.loopexit

continue_145.loopexit:                            ; preds = %continue_113
  %sunkaddr3517 = getelementptr i8, ptr %0, i64 40
  %167 = load <2 x i64>, ptr %sunkaddr3517, align 8
  %dst_val6913154 = extractelement <2 x i64> %167, i64 0
  %src_val6923155 = extractelement <2 x i64> %167, i64 1
  %mul_result693 = mul i64 %dst_val6913154, %src_val6923155
  %sunkaddr3518 = getelementptr i8, ptr %0, i64 24
  %168 = load <2 x i64>, ptr %sunkaddr3518, align 8
  %dst_val7073152 = extractelement <2 x i64> %168, i64 0
  %dst_val6963153 = extractelement <2 x i64> %168, i64 1
  %add_const_result697 = add i64 %dst_val6963153, %const3451
  %sub_result703 = sub i64 %src_val7243156.peel, %dst_val7073152
  %mul_result709 = mul i64 %sub_result703, %dst_val7073152
  store i64 %mul_result709, ptr %sunkaddr3518, align 8
  %rotated715 = tail call i64 @llvm.fshl.i64(i64 %sub_result703, i64 %sub_result703, i64 16)
  %sunkaddr3519 = getelementptr i8, ptr %0, i64 8
  store i64 %rotated715, ptr %sunkaddr3519, align 8
  %xor_const_result719 = xor i64 %src_val6923155, %const3412
  %169 = load <2 x i64>, ptr %sunkaddr3519, align 8
  %src_val7243156 = extractelement <2 x i64> %169, i64 0
  %dst_val7323157 = extractelement <2 x i64> %169, i64 1
  %mul_result725 = mul i64 %src_val7243156, %add_const_result697
  %sunkaddr3520 = getelementptr i8, ptr %0, i64 32
  store i64 %mul_result725, ptr %sunkaddr3520, align 8
  %add_const_result729 = add i64 %add_shift_result765.peel, %const3433
  %rotated735 = tail call i64 @llvm.fshl.i64(i64 %dst_val7323157, i64 %dst_val7323157, i64 54)
  %dst_val_128741 = sext i64 %rotated735 to i128
  %src_val_128742 = sext i64 %xor_const_result719 to i128
  %mul_result_128743 = mul nsw i128 %dst_val_128741, %src_val_128742
  %smulh_result744 = lshr i128 %mul_result_128743, 64
  %smulh_result_64745 = trunc i128 %smulh_result744 to i64
  %sunkaddr3521 = getelementptr i8, ptr %0, i64 16
  store i64 %smulh_result_64745, ptr %sunkaddr3521, align 8
  %sub_result752 = sub i64 %sub_result752.peel, %xor_const_result719
  %mul_result758 = mul i64 %sub_result752, %xor_const_result719
  %shifted764 = shl i64 %mul_result709, 1
  %add_shift_result765 = add i64 %shifted764, %add_const_result729
  %add_const_result769 = add i64 %mul_result693, %const3459
  %170 = insertelement <2 x i64> poison, i64 %add_const_result769, i64 0
  %171 = insertelement <2 x i64> %170, i64 %mul_result758, i64 1
  store <2 x i64> %171, ptr %sunkaddr3517, align 8
  %mul_result775 = mul i64 %sub_result752, %add_const_result769
  store i64 %mul_result775, ptr %sunkaddr3517, align 8
  br label %continue_145

continue_145:                                     ; preds = %continue_145.loopexit, %continue_113
  %branch_taken777.lcssa = phi i1 [ %branch_taken598.lcssa, %continue_113 ], [ true, %continue_145.loopexit ]
  %src_val7243156.lcssa = phi i64 [ %src_val7243156.peel, %continue_113 ], [ %src_val7243156, %continue_145.loopexit ]
  %sub_result752.lcssa = phi i64 [ %sub_result752.peel, %continue_113 ], [ %sub_result752, %continue_145.loopexit ]
  %add_shift_result765.lcssa = phi i64 [ %add_shift_result765.peel, %continue_113 ], [ %add_shift_result765, %continue_145.loopexit ]
  %mul_result775.lcssa = phi i64 [ %mul_result775.peel, %continue_113 ], [ %mul_result775, %continue_145.loopexit ]
  %const3462 = bitcast i64 -499375660 to i64
  %const3457 = bitcast i64 -723606595 to i64
  %const3452 = bitcast i64 -1063216857 to i64
  %const3436 = bitcast i64 1724808396 to i64
  %const3425 = bitcast i64 1202228250 to i64
  store i64 %sub_result752.lcssa, ptr %0, align 8
  %mul_result786 = mul i64 %src_val7243156.lcssa, %add_shift_result765.lcssa
  %sunkaddr3522 = getelementptr i8, ptr %0, i64 8
  store i64 %mul_result786, ptr %sunkaddr3522, align 8
  %sunkaddr3523 = getelementptr i8, ptr %0, i64 24
  %172 = load <2 x i64>, ptr %sunkaddr3523, align 8
  %shift3359 = shufflevector <2 x i64> %172, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %173 = xor <2 x i64> %shift3359, %172
  %xor_result792 = extractelement <2 x i64> %173, i64 0
  store i64 %xor_result792, ptr %sunkaddr3523, align 8
  %xor_const_result796 = xor i64 %add_shift_result765.lcssa, 435876610
  %sunkaddr3524 = getelementptr i8, ptr %0, i64 16
  %174 = load <2 x i64>, ptr %sunkaddr3524, align 8
  %dst_val8113140 = extractelement <2 x i64> %174, i64 0
  %dst_val8003141 = extractelement <2 x i64> %174, i64 1
  %dst_val_128802 = zext i64 %dst_val8003141 to i128
  %src_val_128803 = zext i64 %xor_const_result796 to i128
  %mul_result_128804 = mul nuw i128 %dst_val_128802, %src_val_128803
  %umulh_result805 = lshr i128 %mul_result_128804, 64
  %umulh_result_64806 = trunc i128 %umulh_result805 to i64
  %xor_result813 = xor i64 %dst_val8113140, %xor_const_result796
  %175 = insertelement <2 x i64> poison, i64 %xor_result813, i64 0
  %176 = insertelement <2 x i64> %175, i64 %umulh_result_64806, i64 1
  store <2 x i64> %176, ptr %sunkaddr3524, align 8
  %mul_result819 = mul i64 %xor_const_result796, %mul_result775.lcssa
  %sunkaddr3525 = getelementptr i8, ptr %0, i64 40
  %177 = load <2 x i64>, ptr %sunkaddr3525, align 8
  %178 = add <2 x i64> %177, <i64 -785904399, i64 poison>
  %179 = xor <2 x i64> %177, <i64 poison, i64 -453103249>
  %180 = shufflevector <2 x i64> %178, <2 x i64> %179, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %180, ptr %sunkaddr3525, align 8
  %181 = load <2 x i64>, ptr %sunkaddr3522, align 8
  %src_val8323144 = extractelement <2 x i64> %181, i64 0
  %182 = extractelement <2 x i64> %179, i64 1
  %mul_result833 = mul i64 %src_val8323144, %182
  %sunkaddr3526 = getelementptr i8, ptr %0, i64 48
  store i64 %mul_result833, ptr %sunkaddr3526, align 8
  %sunkaddr3527 = getelementptr i8, ptr %0, i64 32
  %183 = load <2 x i64>, ptr %sunkaddr3527, align 8
  %dst_val8363146 = extractelement <2 x i64> %183, i64 0
  %xor_const_result837 = xor i64 %dst_val8363146, -1813814010
  %184 = xor <2 x i64> %183, %181
  %xor_result843 = extractelement <2 x i64> %184, i64 1
  store i64 %xor_result843, ptr %sunkaddr3524, align 8
  %mul_result849 = mul i64 %xor_result843, %xor_const_result837
  %185 = load <2 x i64>, ptr %0, align 8
  %186 = xor <2 x i64> %185, <i64 -195599947, i64 poison>
  %187 = add <2 x i64> %185, <i64 poison, i64 -407328814>
  %188 = shufflevector <2 x i64> %186, <2 x i64> %187, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %188, ptr %0, align 8
  %189 = load <2 x i64>, ptr %sunkaddr3524, align 8
  %src_val8623150 = extractelement <2 x i64> %189, i64 0
  %dst_val8613151 = extractelement <2 x i64> %189, i64 1
  %mul_result863 = mul i64 %dst_val8613151, %src_val8623150
  %190 = insertelement <2 x i64> poison, i64 %mul_result863, i64 0
  %191 = insertelement <2 x i64> %190, i64 %mul_result849, i64 1
  store <2 x i64> %191, ptr %sunkaddr3523, align 8
  %192 = extractelement <2 x i64> %183, i64 1
  %193 = extractelement <2 x i64> %186, i64 0
  %mul_result869.peel = mul i64 %193, %src_val8623150
  store i64 %mul_result869.peel, ptr %sunkaddr3524, align 8
  %xor_result875.peel = xor i64 %mul_result819, %192
  %sunkaddr3528 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_result875.peel, ptr %sunkaddr3528, align 8
  %194 = extractelement <2 x i64> %187, i64 1
  %rotated881.peel = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 43)
  store i64 %rotated881.peel, ptr %sunkaddr3522, align 8
  %195 = load <2 x i64>, ptr %sunkaddr3526, align 8
  %dst_val8943128.peel = extractelement <2 x i64> %195, i64 0
  %dst_val8853129.peel = extractelement <2 x i64> %195, i64 1
  %mul_result887.peel = mul i64 %dst_val8853129.peel, %mul_result849
  %xor_const_result891.peel = xor i64 %mul_result849, %const3436
  store i64 %xor_const_result891.peel, ptr %sunkaddr3527, align 8
  %add_const_result895.peel = add i64 %dst_val8943128.peel, %const3452
  %196 = insertelement <2 x i64> poison, i64 %add_const_result895.peel, i64 0
  %197 = insertelement <2 x i64> %196, i64 %mul_result887.peel, i64 1
  store <2 x i64> %197, ptr %sunkaddr3526, align 8
  %198 = load <2 x i64>, ptr %sunkaddr3527, align 8
  %src_val9003134.peel = extractelement <2 x i64> %198, i64 0
  %dst_val9103135.peel = extractelement <2 x i64> %198, i64 1
  %mul_result901.peel = mul i64 %src_val9003134.peel, %add_const_result895.peel
  store i64 %mul_result901.peel, ptr %sunkaddr3526, align 8
  %199 = load <2 x i64>, ptr %0, align 8
  %src_val9163130.peel = extractelement <2 x i64> %199, i64 0
  %200 = load <2 x i64>, ptr %sunkaddr3524, align 8
  %dst_val9153132.peel = extractelement <2 x i64> %200, i64 0
  %201 = sub <2 x i64> %199, %200
  %sub_result907.peel = extractelement <2 x i64> %201, i64 1
  store i64 %sub_result907.peel, ptr %sunkaddr3522, align 8
  %xor_const_result911.peel = xor i64 %dst_val9103135.peel, %const3457
  store i64 %xor_const_result911.peel, ptr %sunkaddr3525, align 8
  %dst_val_128917.peel = sext i64 %dst_val9153132.peel to i128
  %src_val_128918.peel = sext i64 %src_val9163130.peel to i128
  %mul_result_128919.peel = mul nsw i128 %dst_val_128917.peel, %src_val_128918.peel
  %smulh_result920.peel = lshr i128 %mul_result_128919.peel, 64
  %smulh_result_64921.peel = trunc i128 %smulh_result920.peel to i64
  %202 = load <2 x i64>, ptr %0, align 8
  %dst_val9303136.peel = extractelement <2 x i64> %202, i64 0
  %dst_val9253137.peel = extractelement <2 x i64> %202, i64 1
  %xor_const_result926.peel = xor i64 %dst_val9253137.peel, %const3425
  %203 = insertelement <2 x i64> poison, i64 %xor_const_result926.peel, i64 0
  %204 = insertelement <2 x i64> %203, i64 %smulh_result_64921.peel, i64 1
  store <2 x i64> %204, ptr %sunkaddr3522, align 8
  %mul_result932.peel = mul i64 %dst_val9303136.peel, %xor_const_result911.peel
  %205 = extractelement <2 x i64> %200, i64 1
  %shifted938.peel = shl i64 %205, 2
  %add_shift_result939.peel = add i64 %xor_const_result926.peel, %shifted938.peel
  %206 = insertelement <2 x i64> poison, i64 %mul_result932.peel, i64 0
  %207 = insertelement <2 x i64> %206, i64 %add_shift_result939.peel, i64 1
  store <2 x i64> %207, ptr %0, align 8
  %add_const_result943.peel = add i64 %205, %const3462
  %mul_result949.peel = mul i64 %add_const_result943.peel, %xor_const_result911.peel
  store i64 %mul_result949.peel, ptr %sunkaddr3523, align 8
  %208 = and i128 %mul_result_128919.peel, 19923098097544899157863432192
  %branch_condition955.peel = icmp ne i128 %208, 0
  %or.cond3342.not.peel = select i1 %branch_taken777.lcssa, i1 true, i1 %branch_condition955.peel
  br i1 %or.cond3342.not.peel, label %continue_177, label %continue_177.loopexit

continue_177.loopexit:                            ; preds = %continue_145
  %mul_result869 = mul i64 %mul_result932.peel, %smulh_result_64921.peel
  %sunkaddr3529 = getelementptr i8, ptr %0, i64 16
  store i64 %mul_result869, ptr %sunkaddr3529, align 8
  %xor_result875 = xor i64 %mul_result887.peel, %xor_const_result911.peel
  %sunkaddr3530 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_result875, ptr %sunkaddr3530, align 8
  %rotated881 = tail call i64 @llvm.fshl.i64(i64 %add_shift_result939.peel, i64 %add_shift_result939.peel, i64 43)
  %sunkaddr3531 = getelementptr i8, ptr %0, i64 8
  store i64 %rotated881, ptr %sunkaddr3531, align 8
  %sunkaddr3532 = getelementptr i8, ptr %0, i64 48
  %209 = load <2 x i64>, ptr %sunkaddr3532, align 8
  %dst_val8943128 = extractelement <2 x i64> %209, i64 0
  %dst_val8853129 = extractelement <2 x i64> %209, i64 1
  %mul_result887 = mul i64 %dst_val8853129, %src_val9003134.peel
  %xor_const_result891 = xor i64 %src_val9003134.peel, %const3436
  %sunkaddr3533 = getelementptr i8, ptr %0, i64 32
  store i64 %xor_const_result891, ptr %sunkaddr3533, align 8
  %add_const_result895 = add i64 %dst_val8943128, %const3452
  %210 = insertelement <2 x i64> poison, i64 %add_const_result895, i64 0
  %211 = insertelement <2 x i64> %210, i64 %mul_result887, i64 1
  store <2 x i64> %211, ptr %sunkaddr3532, align 8
  %212 = load <2 x i64>, ptr %sunkaddr3533, align 8
  %src_val9003134 = extractelement <2 x i64> %212, i64 0
  %dst_val9103135 = extractelement <2 x i64> %212, i64 1
  %mul_result901 = mul i64 %src_val9003134, %add_const_result895
  %213 = load <2 x i64>, ptr %0, align 8
  %src_val9163130 = extractelement <2 x i64> %213, i64 0
  %214 = load <2 x i64>, ptr %sunkaddr3529, align 8
  %dst_val9153132 = extractelement <2 x i64> %214, i64 0
  %215 = sub <2 x i64> %213, %214
  %sub_result907 = extractelement <2 x i64> %215, i64 1
  store i64 %sub_result907, ptr %sunkaddr3531, align 8
  %xor_const_result911 = xor i64 %dst_val9103135, %const3457
  %sunkaddr3534 = getelementptr i8, ptr %0, i64 40
  store i64 %xor_const_result911, ptr %sunkaddr3534, align 8
  %dst_val_128917 = sext i64 %dst_val9153132 to i128
  %src_val_128918 = sext i64 %src_val9163130 to i128
  %mul_result_128919 = mul nsw i128 %dst_val_128917, %src_val_128918
  %smulh_result920 = lshr i128 %mul_result_128919, 64
  %smulh_result_64921 = trunc i128 %smulh_result920 to i64
  %216 = load <2 x i64>, ptr %0, align 8
  %dst_val9303136 = extractelement <2 x i64> %216, i64 0
  %dst_val9253137 = extractelement <2 x i64> %216, i64 1
  %xor_const_result926 = xor i64 %dst_val9253137, %const3425
  %217 = insertelement <2 x i64> poison, i64 %xor_const_result926, i64 0
  %218 = insertelement <2 x i64> %217, i64 %smulh_result_64921, i64 1
  store <2 x i64> %218, ptr %sunkaddr3531, align 8
  %mul_result932 = mul i64 %dst_val9303136, %xor_const_result911
  %219 = extractelement <2 x i64> %214, i64 1
  %shifted938 = shl i64 %219, 2
  %add_shift_result939 = add i64 %xor_const_result926, %shifted938
  %220 = insertelement <2 x i64> poison, i64 %mul_result932, i64 0
  %221 = insertelement <2 x i64> %220, i64 %add_shift_result939, i64 1
  store <2 x i64> %221, ptr %0, align 8
  %add_const_result943 = add i64 %219, %const3462
  %mul_result949 = mul i64 %add_const_result943, %xor_const_result911
  %sunkaddr3535 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result949, ptr %sunkaddr3535, align 8
  br label %continue_177

continue_177:                                     ; preds = %continue_177.loopexit, %continue_145
  %branch_taken951.lcssa = phi i1 [ %branch_taken777.lcssa, %continue_145 ], [ true, %continue_177.loopexit ]
  %src_val9003134.lcssa = phi i64 [ %src_val9003134.peel, %continue_145 ], [ %src_val9003134, %continue_177.loopexit ]
  %mul_result901.lcssa = phi i64 [ %mul_result901.peel, %continue_145 ], [ %mul_result901, %continue_177.loopexit ]
  %mul_result932.lcssa = phi i64 [ %mul_result932.peel, %continue_145 ], [ %mul_result932, %continue_177.loopexit ]
  %const3438 = bitcast i64 2069403552 to i64
  %const3420 = bitcast i64 1007522777 to i64
  %const3413 = bitcast i64 437192413 to i64
  %sunkaddr3536 = getelementptr i8, ptr %0, i64 8
  %222 = load <2 x i64>, ptr %sunkaddr3536, align 8
  %dst_val9583114 = extractelement <2 x i64> %222, i64 0
  %dst_val9723115 = extractelement <2 x i64> %222, i64 1
  %mul_result960 = mul i64 %dst_val9583114, %src_val9003134.lcssa
  store i64 %mul_result960, ptr %sunkaddr3536, align 8
  %add_const_result964 = add i64 %src_val9003134.lcssa, -853490430
  %sunkaddr3537 = getelementptr i8, ptr %0, i64 32
  store i64 %add_const_result964, ptr %sunkaddr3537, align 8
  %xor_const_result968 = xor i64 %mul_result901.lcssa, 374667219
  %sunkaddr3538 = getelementptr i8, ptr %0, i64 48
  store i64 %xor_const_result968, ptr %sunkaddr3538, align 8
  %dst_val_128974 = sext i64 %dst_val9723115 to i128
  %mul_result_128976 = mul nsw i128 %dst_val_128974, %dst_val_128974
  %smulh_result977 = lshr i128 %mul_result_128976, 64
  %smulh_result_64978 = trunc i128 %smulh_result977 to i64
  %sunkaddr3539 = getelementptr i8, ptr %0, i64 16
  store i64 %smulh_result_64978, ptr %sunkaddr3539, align 8
  %223 = load <2 x i64>, ptr %sunkaddr3538, align 8
  %shift3360 = shufflevector <2 x i64> %223, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %224 = sub <2 x i64> %223, %shift3360
  %sub_result985 = extractelement <2 x i64> %224, i64 0
  %225 = load <2 x i64>, ptr %sunkaddr3537, align 8
  %dst_val9943116 = extractelement <2 x i64> %225, i64 0
  %dst_val9893117 = extractelement <2 x i64> %225, i64 1
  %mul_result991 = mul i64 %dst_val9893117, %mul_result932.lcssa
  %xor_const_result995 = xor i64 %dst_val9943116, 1919811629
  %226 = insertelement <2 x i64> poison, i64 %xor_const_result995, i64 0
  %227 = insertelement <2 x i64> %226, i64 %mul_result991, i64 1
  store <2 x i64> %227, ptr %sunkaddr3537, align 8
  %shifted1001 = shl i64 %mul_result932.lcssa, 2
  %add_shift_result1002 = add i64 %sub_result985, %shifted1001
  %mul_result1008 = mul i64 %add_shift_result1002, %mul_result932.lcssa
  %228 = load <2 x i64>, ptr %0, align 8
  %dst_val10183120 = extractelement <2 x i64> %228, i64 0
  %dst_val10123121 = extractelement <2 x i64> %228, i64 1
  %add_shift_result1015 = add i64 %dst_val10123121, %dst_val10183120
  %rotated1021 = tail call i64 @llvm.fshl.i64(i64 %dst_val10183120, i64 %dst_val10183120, i64 16)
  %sunkaddr3540 = getelementptr i8, ptr %0, i64 24
  %229 = load <2 x i64>, ptr %sunkaddr3540, align 8
  %src_val10363124 = extractelement <2 x i64> %229, i64 0
  %src_val10263125 = extractelement <2 x i64> %229, i64 1
  %mul_result1027 = mul i64 %src_val10263125, %rotated1021
  %230 = extractelement <2 x i64> %223, i64 1
  %add_const_result1031 = add i64 %230, 597233129
  %sub_result1037 = sub i64 %add_shift_result1015, %src_val10363124
  store i64 %sub_result1037, ptr %sunkaddr3536, align 8
  %mul_result1043 = mul i64 %src_val10263125, %add_const_result1031
  %sunkaddr3541 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result1043, ptr %sunkaddr3541, align 8
  %231 = load <2 x i64>, ptr %sunkaddr3536, align 8
  %dst_val10473102.peel = extractelement <2 x i64> %231, i64 0
  %dst_val10533103.peel = extractelement <2 x i64> %231, i64 1
  %mul_result1049.peel = mul i64 %dst_val10473102.peel, %mul_result1008
  %shifted1055.peel = shl i64 %src_val10363124, 3
  %add_shift_result1056.peel = add i64 %dst_val10533103.peel, %shifted1055.peel
  %232 = insertelement <2 x i64> poison, i64 %mul_result1049.peel, i64 0
  %233 = insertelement <2 x i64> %232, i64 %add_shift_result1056.peel, i64 1
  store <2 x i64> %233, ptr %sunkaddr3536, align 8
  %add_const_result1060.peel = add i64 %mul_result1008, %const3420
  store i64 %add_const_result1060.peel, ptr %sunkaddr3538, align 8
  %234 = load <2 x i64>, ptr %sunkaddr3539, align 8
  %dst_val10643104.peel = extractelement <2 x i64> %234, i64 0
  %src_val10653105.peel = extractelement <2 x i64> %234, i64 1
  %mul_result1066.peel = mul i64 %dst_val10643104.peel, %src_val10653105.peel
  %xor_const_result1070.peel = xor i64 %src_val10653105.peel, %const3413
  %235 = insertelement <2 x i64> poison, i64 %mul_result1066.peel, i64 0
  %236 = insertelement <2 x i64> %235, i64 %xor_const_result1070.peel, i64 1
  store <2 x i64> %236, ptr %sunkaddr3539, align 8
  %add_const_result1074.peel = add i64 %mul_result1027, %const3438
  store i64 %add_const_result1074.peel, ptr %0, align 8
  %mul_result1080.peel = mul i64 %xor_const_result1070.peel, %add_const_result1074.peel
  store i64 %mul_result1080.peel, ptr %sunkaddr3540, align 8
  %237 = load <2 x i64>, ptr %0, align 8
  %dst_val10833106.peel = extractelement <2 x i64> %237, i64 0
  %dst_val11073107.peel = extractelement <2 x i64> %237, i64 1
  %rotated1086.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val10833106.peel, i64 %dst_val10833106.peel, i64 25)
  %sunkaddr3542 = getelementptr i8, ptr %0, i64 40
  %238 = load <2 x i64>, ptr %sunkaddr3542, align 8
  %shift3361.peel = shufflevector <2 x i64> %238, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %239 = sub <2 x i64> %238, %shift3361.peel
  %sub_result1092.peel = extractelement <2 x i64> %239, i64 0
  %240 = load <2 x i64>, ptr %sunkaddr3538, align 8
  %dst_val11133110.peel = extractelement <2 x i64> %240, i64 0
  %dst_val10963111.peel = extractelement <2 x i64> %240, i64 1
  %dst_val_1281098.peel = zext i64 %dst_val10963111.peel to i128
  %src_val_1281099.peel = zext i64 %dst_val11133110.peel to i128
  %mul_result_1281100.peel = mul nuw i128 %dst_val_1281098.peel, %src_val_1281099.peel
  %umulh_result1101.peel = lshr i128 %mul_result_1281100.peel, 64
  %umulh_result_641102.peel = trunc i128 %umulh_result1101.peel to i64
  %xor_result1109.peel = xor i64 %dst_val11133110.peel, %dst_val11073107.peel
  %mul_result1115.peel = mul i64 %sub_result1092.peel, %dst_val11133110.peel
  %241 = insertelement <2 x i64> poison, i64 %mul_result1115.peel, i64 0
  %242 = insertelement <2 x i64> %241, i64 %umulh_result_641102.peel, i64 1
  store <2 x i64> %242, ptr %sunkaddr3538, align 8
  %243 = load <2 x i64>, ptr %sunkaddr3540, align 8
  %src_val11333112.peel = extractelement <2 x i64> %243, i64 0
  %dst_val11193113.peel = extractelement <2 x i64> %243, i64 1
  %shifted1121.peel = shl i64 %sub_result1092.peel, 2
  %add_shift_result1122.peel = add i64 %dst_val11193113.peel, %shifted1121.peel
  %rotated1128.peel = tail call i64 @llvm.fshl.i64(i64 %sub_result1092.peel, i64 %sub_result1092.peel, i64 63)
  %244 = insertelement <2 x i64> poison, i64 %add_shift_result1122.peel, i64 0
  %245 = insertelement <2 x i64> %244, i64 %rotated1128.peel, i64 1
  store <2 x i64> %245, ptr %sunkaddr3537, align 8
  %mul_result1134.peel = mul i64 %src_val11333112.peel, %rotated1086.peel
  %246 = insertelement <2 x i64> poison, i64 %mul_result1134.peel, i64 0
  %247 = insertelement <2 x i64> %246, i64 %xor_result1109.peel, i64 1
  store <2 x i64> %247, ptr %0, align 8
  %248 = and i128 %mul_result_1281100.peel, 3036481648485181872406528
  %branch_condition1140.peel = icmp ne i128 %248, 0
  %or.cond3343.not.peel = select i1 %branch_taken951.lcssa, i1 true, i1 %branch_condition1140.peel
  br i1 %or.cond3343.not.peel, label %continue_209, label %continue_209.loopexit

continue_209.loopexit:                            ; preds = %continue_177
  %sunkaddr3543 = getelementptr i8, ptr %0, i64 8
  %249 = load <2 x i64>, ptr %sunkaddr3543, align 8
  %dst_val10473102 = extractelement <2 x i64> %249, i64 0
  %dst_val10533103 = extractelement <2 x i64> %249, i64 1
  %mul_result1049 = mul i64 %dst_val10473102, %mul_result1115.peel
  %shifted1055 = shl i64 %src_val11333112.peel, 3
  %add_shift_result1056 = add i64 %dst_val10533103, %shifted1055
  %250 = insertelement <2 x i64> poison, i64 %mul_result1049, i64 0
  %251 = insertelement <2 x i64> %250, i64 %add_shift_result1056, i64 1
  store <2 x i64> %251, ptr %sunkaddr3543, align 8
  %add_const_result1060 = add i64 %mul_result1115.peel, %const3420
  %sunkaddr3544 = getelementptr i8, ptr %0, i64 48
  store i64 %add_const_result1060, ptr %sunkaddr3544, align 8
  %sunkaddr3545 = getelementptr i8, ptr %0, i64 16
  %252 = load <2 x i64>, ptr %sunkaddr3545, align 8
  %dst_val10643104 = extractelement <2 x i64> %252, i64 0
  %src_val10653105 = extractelement <2 x i64> %252, i64 1
  %mul_result1066 = mul i64 %dst_val10643104, %src_val10653105
  %xor_const_result1070 = xor i64 %src_val10653105, %const3413
  %253 = insertelement <2 x i64> poison, i64 %mul_result1066, i64 0
  %254 = insertelement <2 x i64> %253, i64 %xor_const_result1070, i64 1
  store <2 x i64> %254, ptr %sunkaddr3545, align 8
  %add_const_result1074 = add i64 %mul_result1134.peel, %const3438
  store i64 %add_const_result1074, ptr %0, align 8
  %mul_result1080 = mul i64 %xor_const_result1070, %add_const_result1074
  %sunkaddr3546 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result1080, ptr %sunkaddr3546, align 8
  %255 = load <2 x i64>, ptr %0, align 8
  %dst_val10833106 = extractelement <2 x i64> %255, i64 0
  %dst_val11073107 = extractelement <2 x i64> %255, i64 1
  %rotated1086 = tail call i64 @llvm.fshl.i64(i64 %dst_val10833106, i64 %dst_val10833106, i64 25)
  %sunkaddr3547 = getelementptr i8, ptr %0, i64 40
  %256 = load <2 x i64>, ptr %sunkaddr3547, align 8
  %shift3361 = shufflevector <2 x i64> %256, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %257 = sub <2 x i64> %256, %shift3361
  %sub_result1092 = extractelement <2 x i64> %257, i64 0
  %258 = load <2 x i64>, ptr %sunkaddr3544, align 8
  %dst_val11133110 = extractelement <2 x i64> %258, i64 0
  %dst_val10963111 = extractelement <2 x i64> %258, i64 1
  %dst_val_1281098 = zext i64 %dst_val10963111 to i128
  %src_val_1281099 = zext i64 %dst_val11133110 to i128
  %mul_result_1281100 = mul nuw i128 %dst_val_1281098, %src_val_1281099
  %umulh_result1101 = lshr i128 %mul_result_1281100, 64
  %umulh_result_641102 = trunc i128 %umulh_result1101 to i64
  %xor_result1109 = xor i64 %dst_val11133110, %dst_val11073107
  %mul_result1115 = mul i64 %sub_result1092, %dst_val11133110
  %259 = load <2 x i64>, ptr %sunkaddr3546, align 8
  %src_val11333112 = extractelement <2 x i64> %259, i64 0
  %dst_val11193113 = extractelement <2 x i64> %259, i64 1
  %shifted1121 = shl i64 %sub_result1092, 2
  %add_shift_result1122 = add i64 %dst_val11193113, %shifted1121
  %rotated1128 = tail call i64 @llvm.fshl.i64(i64 %sub_result1092, i64 %sub_result1092, i64 63)
  %260 = insertelement <2 x i64> poison, i64 %add_shift_result1122, i64 0
  %261 = insertelement <2 x i64> %260, i64 %rotated1128, i64 1
  %sunkaddr3548 = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %261, ptr %sunkaddr3548, align 8
  %mul_result1134 = mul i64 %src_val11333112, %rotated1086
  %262 = insertelement <2 x i64> poison, i64 %mul_result1134, i64 0
  %263 = insertelement <2 x i64> %262, i64 %xor_result1109, i64 1
  store <2 x i64> %263, ptr %0, align 8
  br label %continue_209

continue_209:                                     ; preds = %continue_209.loopexit, %continue_177
  %branch_taken1136.lcssa = phi i1 [ %branch_taken951.lcssa, %continue_177 ], [ true, %continue_209.loopexit ]
  %umulh_result_641102.lcssa = phi i64 [ %umulh_result_641102.peel, %continue_177 ], [ %umulh_result_641102, %continue_209.loopexit ]
  %xor_result1109.lcssa = phi i64 [ %xor_result1109.peel, %continue_177 ], [ %xor_result1109, %continue_209.loopexit ]
  %mul_result1115.lcssa = phi i64 [ %mul_result1115.peel, %continue_177 ], [ %mul_result1115, %continue_209.loopexit ]
  %rotated1128.lcssa = phi i64 [ %rotated1128.peel, %continue_177 ], [ %rotated1128, %continue_209.loopexit ]
  %const3454 = bitcast i64 -862726600 to i64
  %const3439 = bitcast i64 2132318569 to i64
  %const3430 = bitcast i64 1649350728 to i64
  %const3429 = bitcast i64 1456771341 to i64
  %const3422 = bitcast i64 1120263772 to i64
  %mul_result1145 = mul i64 %xor_result1109.lcssa, %rotated1128.lcssa
  %sunkaddr3549 = getelementptr i8, ptr %0, i64 40
  store i64 %mul_result1145, ptr %sunkaddr3549, align 8
  %sunkaddr3550 = getelementptr i8, ptr %0, i64 16
  %264 = load <2 x i64>, ptr %sunkaddr3550, align 8
  %dst_val11613086 = extractelement <2 x i64> %264, i64 0
  %dst_val11483087 = extractelement <2 x i64> %264, i64 1
  %rotated1151 = tail call i64 @llvm.fshl.i64(i64 %dst_val11483087, i64 %dst_val11483087, i64 13)
  %sunkaddr3551 = getelementptr i8, ptr %0, i64 24
  store i64 %rotated1151, ptr %sunkaddr3551, align 8
  %sunkaddr3552 = getelementptr i8, ptr %0, i64 8
  %265 = load <2 x i64>, ptr %sunkaddr3552, align 8
  %shift3362 = shufflevector <2 x i64> %265, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %266 = xor <2 x i64> %shift3362, %265
  %xor_result1157 = extractelement <2 x i64> %266, i64 0
  store i64 %xor_result1157, ptr %sunkaddr3552, align 8
  %267 = load <2 x i64>, ptr %0, align 8
  %src_val11833088 = extractelement <2 x i64> %267, i64 0
  %src_val11623089 = extractelement <2 x i64> %267, i64 1
  %dst_val_1281163 = sext i64 %dst_val11613086 to i128
  %src_val_1281164 = sext i64 %src_val11623089 to i128
  %mul_result_1281165 = mul nsw i128 %src_val_1281164, %dst_val_1281163
  %smulh_result1166 = lshr i128 %mul_result_1281165, 64
  %smulh_result_641167 = trunc i128 %smulh_result1166 to i64
  %add_const_result1172 = add i64 %mul_result1115.lcssa, 1954932066
  %sunkaddr3553 = getelementptr i8, ptr %0, i64 48
  store i64 %add_const_result1172, ptr %sunkaddr3553, align 8
  %268 = load <2 x i64>, ptr %sunkaddr3551, align 8
  %dst_val11883090 = extractelement <2 x i64> %268, i64 0
  %dst_val11763091 = extractelement <2 x i64> %268, i64 1
  %mul_result1178 = mul i64 %dst_val11763091, %umulh_result_641102.lcssa
  %sub_result1184 = sub i64 %umulh_result_641102.lcssa, %src_val11833088
  %xor_result1190 = xor i64 %dst_val11883090, %add_const_result1172
  %269 = insertelement <2 x i64> poison, i64 %xor_result1190, i64 0
  %270 = insertelement <2 x i64> %269, i64 %mul_result1178, i64 1
  store <2 x i64> %270, ptr %sunkaddr3551, align 8
  %mul_result1196 = mul i64 %xor_result1190, %src_val11833088
  store i64 %mul_result1196, ptr %sunkaddr3551, align 8
  %271 = load <2 x i64>, ptr %sunkaddr3549, align 8
  %src_val12083096 = extractelement <2 x i64> %271, i64 0
  %src_val12013097 = extractelement <2 x i64> %271, i64 1
  %shifted1202 = shl i64 %src_val12013097, 2
  %add_shift_result1203 = add i64 %shifted1202, %sub_result1184
  %xor_result1209 = xor i64 %src_val12083096, %src_val11623089
  store i64 %xor_result1209, ptr %sunkaddr3552, align 8
  %272 = load <2 x i64>, ptr %0, align 8
  %dst_val12183098 = extractelement <2 x i64> %272, i64 0
  %dst_val12133099 = extractelement <2 x i64> %272, i64 1
  %mul_result1215 = mul i64 %dst_val12133099, %src_val12013097
  %add_const_result1219 = add i64 %dst_val12183098, -234863945
  %273 = insertelement <2 x i64> poison, i64 %add_const_result1219, i64 0
  %274 = insertelement <2 x i64> %273, i64 %mul_result1215, i64 1
  store <2 x i64> %274, ptr %0, align 8
  %sub_result1225 = sub i64 %src_val12083096, %src_val12013097
  %mul_result1231 = mul i64 %src_val12013097, %smulh_result_641167
  %275 = insertelement <2 x i64> poison, i64 %sub_result1225, i64 0
  %276 = insertelement <2 x i64> %275, i64 %mul_result1231, i64 1
  store <2 x i64> %276, ptr %sunkaddr3549, align 8
  %mul_result1237.peel = mul i64 %mul_result1178, %smulh_result_641167
  store i64 %mul_result1237.peel, ptr %sunkaddr3550, align 8
  %add_const_result1241.peel = add i64 %add_shift_result1203, %const3430
  %sunkaddr3554 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result1241.peel, ptr %sunkaddr3554, align 8
  %xor_const_result1245.peel = xor i64 %add_const_result1219, %const3422
  store i64 %xor_const_result1245.peel, ptr %0, align 8
  %277 = load <2 x i64>, ptr %0, align 8
  %dst_val12493072.peel = extractelement <2 x i64> %277, i64 0
  %sunkaddr3555 = getelementptr i8, ptr %0, i64 32
  %278 = load <2 x i64>, ptr %sunkaddr3555, align 8
  %src_val12503075.peel = extractelement <2 x i64> %278, i64 1
  %mul_result1251.peel = mul i64 %src_val12503075.peel, %dst_val12493072.peel
  store i64 %mul_result1251.peel, ptr %0, align 8
  %shift3363.peel = shufflevector <2 x i64> %277, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %279 = add <2 x i64> %278, %shift3363.peel
  %add_shift_result1258.peel = extractelement <2 x i64> %279, i64 0
  store i64 %add_shift_result1258.peel, ptr %sunkaddr3555, align 8
  %280 = extractelement <2 x i64> %277, i64 1
  %xor_const_result1262.peel = xor i64 %280, %const3454
  %mul_result1268.peel = mul i64 %add_shift_result1258.peel, %src_val12503075.peel
  store i64 %mul_result1268.peel, ptr %sunkaddr3549, align 8
  %281 = load <2 x i64>, ptr %sunkaddr3550, align 8
  %dst_val12823076.peel = extractelement <2 x i64> %281, i64 0
  %dst_val12723077.peel = extractelement <2 x i64> %281, i64 1
  %xor_result1274.peel = xor i64 %dst_val12723077.peel, %add_shift_result1258.peel
  %282 = load <2 x i64>, ptr %sunkaddr3553, align 8
  %dst_val12773078.peel = extractelement <2 x i64> %282, i64 0
  %src_val12833079.peel = extractelement <2 x i64> %282, i64 1
  %add_const_result1278.peel = add i64 %dst_val12773078.peel, %const3429
  store i64 %add_const_result1278.peel, ptr %sunkaddr3553, align 8
  %dst_val_1281284.peel = zext i64 %dst_val12823076.peel to i128
  %src_val_1281285.peel = zext i64 %src_val12833079.peel to i128
  %mul_result_1281286.peel = mul nuw i128 %src_val_1281285.peel, %dst_val_1281284.peel
  %umulh_result1287.peel = lshr i128 %mul_result_1281286.peel, 64
  %umulh_result_641288.peel = trunc i128 %umulh_result1287.peel to i64
  %add_shift_result1296.peel = add i64 %src_val12833079.peel, %xor_result1274.peel
  %283 = insertelement <2 x i64> poison, i64 %umulh_result_641288.peel, i64 0
  %284 = insertelement <2 x i64> %283, i64 %add_shift_result1296.peel, i64 1
  store <2 x i64> %284, ptr %sunkaddr3550, align 8
  %mul_result1302.peel = mul i64 %add_const_result1278.peel, %add_shift_result1296.peel
  store i64 %mul_result1302.peel, ptr %sunkaddr3551, align 8
  %285 = load <2 x i64>, ptr %sunkaddr3553, align 8
  %shift3364.peel = shufflevector <2 x i64> %285, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %286 = sub <2 x i64> %285, %shift3364.peel
  %sub_result1308.peel = extractelement <2 x i64> %286, i64 0
  store i64 %sub_result1308.peel, ptr %sunkaddr3553, align 8
  %add_const_result1312.peel = add i64 %xor_const_result1262.peel, %const3439
  store i64 %add_const_result1312.peel, ptr %sunkaddr3552, align 8
  %287 = load <2 x i64>, ptr %0, align 8
  %src_val13173082.peel = extractelement <2 x i64> %287, i64 0
  %dst_val13163083.peel = extractelement <2 x i64> %287, i64 1
  %mul_result1318.peel = mul i64 %dst_val13163083.peel, %src_val13173082.peel
  store i64 %mul_result1318.peel, ptr %sunkaddr3552, align 8
  %288 = and i128 %mul_result_1281286.peel, 42128647109504550069837234176
  %branch_condition1324.peel = icmp ne i128 %288, 0
  %or.cond3344.not.peel = select i1 %branch_taken1136.lcssa, i1 true, i1 %branch_condition1324.peel
  br i1 %or.cond3344.not.peel, label %continue_241, label %continue_241.loopexit

continue_241.loopexit:                            ; preds = %continue_209
  %289 = extractelement <2 x i64> %285, i64 1
  %mul_result1237 = mul i64 %add_shift_result1258.peel, %umulh_result_641288.peel
  %sunkaddr3556 = getelementptr i8, ptr %0, i64 16
  store i64 %mul_result1237, ptr %sunkaddr3556, align 8
  %add_const_result1241 = add i64 %289, %const3430
  %sunkaddr3557 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result1241, ptr %sunkaddr3557, align 8
  %xor_const_result1245 = xor i64 %src_val13173082.peel, %const3422
  store i64 %xor_const_result1245, ptr %0, align 8
  %290 = load <2 x i64>, ptr %0, align 8
  %dst_val12493072 = extractelement <2 x i64> %290, i64 0
  %sunkaddr3558 = getelementptr i8, ptr %0, i64 32
  %291 = load <2 x i64>, ptr %sunkaddr3558, align 8
  %src_val12503075 = extractelement <2 x i64> %291, i64 1
  %mul_result1251 = mul i64 %src_val12503075, %dst_val12493072
  store i64 %mul_result1251, ptr %0, align 8
  %shift3363 = shufflevector <2 x i64> %290, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %292 = add <2 x i64> %291, %shift3363
  %add_shift_result1258 = extractelement <2 x i64> %292, i64 0
  store i64 %add_shift_result1258, ptr %sunkaddr3558, align 8
  %293 = extractelement <2 x i64> %290, i64 1
  %xor_const_result1262 = xor i64 %293, %const3454
  %mul_result1268 = mul i64 %add_shift_result1258, %src_val12503075
  %sunkaddr3559 = getelementptr i8, ptr %0, i64 40
  store i64 %mul_result1268, ptr %sunkaddr3559, align 8
  %294 = load <2 x i64>, ptr %sunkaddr3556, align 8
  %dst_val12823076 = extractelement <2 x i64> %294, i64 0
  %dst_val12723077 = extractelement <2 x i64> %294, i64 1
  %xor_result1274 = xor i64 %dst_val12723077, %add_shift_result1258
  %sunkaddr3560 = getelementptr i8, ptr %0, i64 48
  %295 = load <2 x i64>, ptr %sunkaddr3560, align 8
  %dst_val12773078 = extractelement <2 x i64> %295, i64 0
  %src_val12833079 = extractelement <2 x i64> %295, i64 1
  %add_const_result1278 = add i64 %dst_val12773078, %const3429
  store i64 %add_const_result1278, ptr %sunkaddr3560, align 8
  %dst_val_1281284 = zext i64 %dst_val12823076 to i128
  %src_val_1281285 = zext i64 %src_val12833079 to i128
  %mul_result_1281286 = mul nuw i128 %src_val_1281285, %dst_val_1281284
  %umulh_result1287 = lshr i128 %mul_result_1281286, 64
  %umulh_result_641288 = trunc i128 %umulh_result1287 to i64
  %add_shift_result1296 = add i64 %src_val12833079, %xor_result1274
  %296 = insertelement <2 x i64> poison, i64 %umulh_result_641288, i64 0
  %297 = insertelement <2 x i64> %296, i64 %add_shift_result1296, i64 1
  store <2 x i64> %297, ptr %sunkaddr3556, align 8
  %mul_result1302 = mul i64 %add_const_result1278, %add_shift_result1296
  %sunkaddr3561 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result1302, ptr %sunkaddr3561, align 8
  %298 = load <2 x i64>, ptr %sunkaddr3560, align 8
  %shift3364 = shufflevector <2 x i64> %298, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %299 = sub <2 x i64> %298, %shift3364
  %sub_result1308 = extractelement <2 x i64> %299, i64 0
  store i64 %sub_result1308, ptr %sunkaddr3560, align 8
  %add_const_result1312 = add i64 %xor_const_result1262, %const3439
  %sunkaddr3562 = getelementptr i8, ptr %0, i64 8
  store i64 %add_const_result1312, ptr %sunkaddr3562, align 8
  %300 = load <2 x i64>, ptr %0, align 8
  %src_val13173082 = extractelement <2 x i64> %300, i64 0
  %dst_val13163083 = extractelement <2 x i64> %300, i64 1
  %mul_result1318 = mul i64 %dst_val13163083, %src_val13173082
  store i64 %mul_result1318, ptr %sunkaddr3562, align 8
  br label %continue_241

continue_241:                                     ; preds = %continue_241.loopexit, %continue_209
  %branch_taken1320.lcssa = phi i1 [ %branch_taken1136.lcssa, %continue_209 ], [ true, %continue_241.loopexit ]
  %sub_result1308.lcssa = phi i64 [ %sub_result1308.peel, %continue_209 ], [ %sub_result1308, %continue_241.loopexit ]
  %src_val13173082.lcssa = phi i64 [ %src_val13173082.peel, %continue_209 ], [ %src_val13173082, %continue_241.loopexit ]
  %const3445 = bitcast i64 -1641771221 to i64
  %const3419 = bitcast i64 956110196 to i64
  %const3410 = bitcast i64 393177486 to i64
  %sunkaddr3563 = getelementptr i8, ptr %0, i64 24
  %301 = load <2 x i64>, ptr %sunkaddr3563, align 8
  %src_val13443056 = extractelement <2 x i64> %301, i64 0
  %dst_val13273057 = extractelement <2 x i64> %301, i64 1
  %mul_result1329 = mul i64 %dst_val13273057, %sub_result1308.lcssa
  %sunkaddr3564 = getelementptr i8, ptr %0, i64 32
  store i64 %mul_result1329, ptr %sunkaddr3564, align 8
  %sunkaddr3565 = getelementptr i8, ptr %0, i64 48
  %302 = load <2 x i64>, ptr %sunkaddr3565, align 8
  %shift3365 = shufflevector <2 x i64> %302, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %303 = xor <2 x i64> %shift3365, %302
  %xor_result1335 = extractelement <2 x i64> %303, i64 0
  store i64 %xor_result1335, ptr %sunkaddr3565, align 8
  %add_const_result1339 = add i64 %src_val13173082.lcssa, -1819496070
  store i64 %add_const_result1339, ptr %0, align 8
  %304 = extractelement <2 x i64> %302, i64 1
  %dst_val_1281345 = zext i64 %304 to i128
  %src_val_1281346 = zext i64 %src_val13443056 to i128
  %mul_result_1281347 = mul nuw i128 %dst_val_1281345, %src_val_1281346
  %umulh_result1348 = lshr i128 %mul_result_1281347, 64
  %umulh_result_641349 = trunc i128 %umulh_result1348 to i64
  %sunkaddr3566 = getelementptr i8, ptr %0, i64 40
  %305 = load <2 x i64>, ptr %sunkaddr3566, align 8
  %src_val13553064 = extractelement <2 x i64> %305, i64 0
  %dst_val13543065 = extractelement <2 x i64> %305, i64 1
  %shifted1356 = shl i64 %src_val13553064, 1
  %add_shift_result1357 = add i64 %shifted1356, %dst_val13543065
  %306 = insertelement <2 x i64> poison, i64 %add_shift_result1357, i64 0
  %307 = insertelement <2 x i64> %306, i64 %umulh_result_641349, i64 1
  store <2 x i64> %307, ptr %sunkaddr3565, align 8
  %308 = load <2 x i64>, ptr %0, align 8
  %dst_val13613060 = extractelement <2 x i64> %308, i64 0
  %src_val13623061 = extractelement <2 x i64> %308, i64 1
  %mul_result1363 = mul i64 %dst_val13613060, %src_val13623061
  %sunkaddr3567 = getelementptr i8, ptr %0, i64 16
  %309 = load <2 x i64>, ptr %sunkaddr3567, align 8
  %shift3366 = shufflevector <2 x i64> %309, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %310 = sub <2 x i64> %309, %shift3366
  %311 = extractelement <2 x i64> %309, i64 1
  %rotated1375 = tail call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 36)
  %312 = insertelement <2 x i64> %310, i64 %rotated1375, i64 1
  store <2 x i64> %312, ptr %sunkaddr3567, align 8
  %sunkaddr3568 = getelementptr i8, ptr %0, i64 8
  %313 = load <2 x i64>, ptr %sunkaddr3568, align 8
  %dst_val13843066 = extractelement <2 x i64> %313, i64 0
  %dst_val13793067 = extractelement <2 x i64> %313, i64 1
  %mul_result1381 = mul i64 %dst_val13793067, %dst_val13843066
  %xor_const_result1385 = xor i64 %dst_val13843066, 86193332
  %314 = insertelement <2 x i64> poison, i64 %xor_const_result1385, i64 0
  %315 = insertelement <2 x i64> %314, i64 %mul_result1381, i64 1
  store <2 x i64> %315, ptr %sunkaddr3568, align 8
  %add_const_result1389 = add i64 %rotated1375, -35755358
  store i64 %add_const_result1389, ptr %sunkaddr3563, align 8
  %316 = load <2 x i64>, ptr %sunkaddr3563, align 8
  %src_val13943068 = extractelement <2 x i64> %316, i64 0
  %mul_result1395 = mul i64 %src_val13943068, %xor_const_result1385
  store i64 %mul_result1395, ptr %sunkaddr3568, align 8
  %317 = shufflevector <2 x i64> %316, <2 x i64> %305, <2 x i32> <i32 1, i32 2>
  %318 = xor <2 x i64> %317, <i64 -968088976, i64 poison>
  %319 = add <2 x i64> %317, <i64 poison, i64 812121171>
  %320 = shufflevector <2 x i64> %318, <2 x i64> %319, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %320, ptr %sunkaddr3564, align 8
  %321 = extractelement <2 x i64> %318, i64 0
  %322 = extractelement <2 x i64> %319, i64 1
  %mul_result1409 = mul i64 %321, %322
  store i64 %mul_result1409, ptr %sunkaddr3564, align 8
  %323 = load <2 x i64>, ptr %sunkaddr3567, align 8
  %src_val14203046.peel = extractelement <2 x i64> %323, i64 0
  %src_val14143047.peel = extractelement <2 x i64> %323, i64 1
  %mul_result1415.peel = mul i64 %src_val14143047.peel, %322
  %shifted1421.peel = shl i64 %src_val14203046.peel, 2
  %add_shift_result1422.peel = add i64 %shifted1421.peel, %src_val14143047.peel
  store i64 %add_shift_result1422.peel, ptr %sunkaddr3563, align 8
  %add_const_result1426.peel = add i64 %mul_result1363, %const3445
  store i64 %add_const_result1426.peel, ptr %0, align 8
  %324 = load <2 x i64>, ptr %0, align 8
  %dst_val14303048.peel = extractelement <2 x i64> %324, i64 0
  %dst_val14353049.peel = extractelement <2 x i64> %324, i64 1
  %325 = load <2 x i64>, ptr %sunkaddr3567, align 8
  %dst_val14393050.peel = extractelement <2 x i64> %325, i64 0
  %src_val14313051.peel = extractelement <2 x i64> %325, i64 1
  %mul_result1432.peel = mul i64 %src_val14313051.peel, %dst_val14303048.peel
  %xor_const_result1436.peel = xor i64 %dst_val14353049.peel, %const3410
  %326 = insertelement <2 x i64> poison, i64 %mul_result1432.peel, i64 0
  %327 = insertelement <2 x i64> %326, i64 %xor_const_result1436.peel, i64 1
  store <2 x i64> %327, ptr %0, align 8
  %add_const_result1440.peel = add i64 %dst_val14393050.peel, %const3419
  store i64 %add_const_result1440.peel, ptr %sunkaddr3567, align 8
  %328 = load <2 x i64>, ptr %sunkaddr3568, align 8
  %dst_val14443052.peel = extractelement <2 x i64> %328, i64 0
  %src_val14573053.peel = extractelement <2 x i64> %328, i64 1
  %mul_result1446.peel = mul i64 %dst_val14443052.peel, %src_val14313051.peel
  store i64 %mul_result1446.peel, ptr %sunkaddr3568, align 8
  %rotated1452.peel = tail call i64 @llvm.fshl.i64(i64 %src_val14313051.peel, i64 %src_val14313051.peel, i64 19)
  store i64 %rotated1452.peel, ptr %sunkaddr3563, align 8
  %sub_result1458.peel = sub i64 %umulh_result_641349, %src_val14573053.peel
  %dst_val_1281464.peel = zext i64 %mul_result1415.peel to i128
  %src_val_1281465.peel = zext i64 %sub_result1458.peel to i128
  %mul_result_1281466.peel = mul nuw i128 %src_val_1281465.peel, %dst_val_1281464.peel
  %umulh_result1467.peel = lshr i128 %mul_result_1281466.peel, 64
  %umulh_result_641468.peel = trunc i128 %umulh_result1467.peel to i64
  %rotated1475.peel = tail call i64 @llvm.fshl.i64(i64 %sub_result1458.peel, i64 %sub_result1458.peel, i64 40)
  %mul_result1481.peel = mul i64 %rotated1475.peel, %src_val14573053.peel
  store i64 %mul_result1481.peel, ptr %sunkaddr3567, align 8
  %329 = load <2 x i64>, ptr %sunkaddr3563, align 8
  %src_val14863054.peel = extractelement <2 x i64> %329, i64 0
  %src_val14933055.peel = extractelement <2 x i64> %329, i64 1
  %shifted1487.peel = shl i64 %src_val14863054.peel, 2
  %add_shift_result1488.peel = add i64 %shifted1487.peel, %rotated1475.peel
  %xor_result1494.peel = xor i64 %src_val14933055.peel, %mul_result1432.peel
  store i64 %xor_result1494.peel, ptr %0, align 8
  %mul_result1500.peel = mul i64 %add_shift_result1488.peel, %mul_result1446.peel
  %330 = and i128 %mul_result_1281466.peel, 2785369829205332561877794816
  %branch_condition1506.peel = icmp ne i128 %330, 0
  %or.cond3345.not.peel = select i1 %branch_taken1320.lcssa, i1 true, i1 %branch_condition1506.peel
  br i1 %or.cond3345.not.peel, label %continue_273, label %continue_273.loopexit

continue_273.loopexit:                            ; preds = %continue_241
  %sunkaddr3569 = getelementptr i8, ptr %0, i64 16
  %331 = load <2 x i64>, ptr %sunkaddr3569, align 8
  %src_val14203046 = extractelement <2 x i64> %331, i64 0
  %src_val14143047 = extractelement <2 x i64> %331, i64 1
  %shifted1421 = shl i64 %src_val14203046, 2
  %add_shift_result1422 = add i64 %shifted1421, %src_val14143047
  %sunkaddr3570 = getelementptr i8, ptr %0, i64 24
  store i64 %add_shift_result1422, ptr %sunkaddr3570, align 8
  %add_const_result1426 = add i64 %xor_result1494.peel, %const3445
  store i64 %add_const_result1426, ptr %0, align 8
  %332 = load <2 x i64>, ptr %0, align 8
  %dst_val14303048 = extractelement <2 x i64> %332, i64 0
  %dst_val14353049 = extractelement <2 x i64> %332, i64 1
  %333 = load <2 x i64>, ptr %sunkaddr3569, align 8
  %dst_val14393050 = extractelement <2 x i64> %333, i64 0
  %src_val14313051 = extractelement <2 x i64> %333, i64 1
  %mul_result1432 = mul i64 %src_val14313051, %dst_val14303048
  %xor_const_result1436 = xor i64 %dst_val14353049, %const3410
  %334 = insertelement <2 x i64> poison, i64 %mul_result1432, i64 0
  %335 = insertelement <2 x i64> %334, i64 %xor_const_result1436, i64 1
  store <2 x i64> %335, ptr %0, align 8
  %add_const_result1440 = add i64 %dst_val14393050, %const3419
  store i64 %add_const_result1440, ptr %sunkaddr3569, align 8
  %sunkaddr3571 = getelementptr i8, ptr %0, i64 8
  %336 = load <2 x i64>, ptr %sunkaddr3571, align 8
  %dst_val14443052 = extractelement <2 x i64> %336, i64 0
  %src_val14573053 = extractelement <2 x i64> %336, i64 1
  %mul_result1446 = mul i64 %dst_val14443052, %src_val14313051
  store i64 %mul_result1446, ptr %sunkaddr3571, align 8
  %rotated1452 = tail call i64 @llvm.fshl.i64(i64 %src_val14313051, i64 %src_val14313051, i64 19)
  store i64 %rotated1452, ptr %sunkaddr3570, align 8
  %sub_result1458 = sub i64 %mul_result1500.peel, %src_val14573053
  %rotated1475 = tail call i64 @llvm.fshl.i64(i64 %sub_result1458, i64 %sub_result1458, i64 40)
  %mul_result1481 = mul i64 %rotated1475, %src_val14573053
  store i64 %mul_result1481, ptr %sunkaddr3569, align 8
  %337 = load <2 x i64>, ptr %sunkaddr3570, align 8
  %src_val14933055 = extractelement <2 x i64> %337, i64 1
  %xor_result1494 = xor i64 %src_val14933055, %mul_result1432
  store i64 %xor_result1494, ptr %0, align 8
  %src_val14863054 = extractelement <2 x i64> %337, i64 0
  %shifted1487 = shl i64 %src_val14863054, 2
  %add_shift_result1488 = add i64 %shifted1487, %rotated1475
  %mul_result1500 = mul i64 %add_shift_result1488, %mul_result1446
  %src_val_1281465 = zext i64 %sub_result1458 to i128
  %mul_result1415 = mul i64 %src_val14143047, %umulh_result_641468.peel
  %dst_val_1281464 = zext i64 %mul_result1415 to i128
  %mul_result_1281466 = mul nuw i128 %src_val_1281465, %dst_val_1281464
  %umulh_result1467 = lshr i128 %mul_result_1281466, 64
  %umulh_result_641468 = trunc i128 %umulh_result1467 to i64
  br label %continue_273

continue_273:                                     ; preds = %continue_273.loopexit, %continue_241
  %branch_taken1502.lcssa = phi i1 [ %branch_taken1320.lcssa, %continue_241 ], [ true, %continue_273.loopexit ]
  %umulh_result_641468.lcssa = phi i64 [ %umulh_result_641468.peel, %continue_241 ], [ %umulh_result_641468, %continue_273.loopexit ]
  %src_val14933055.lcssa = phi i64 [ %src_val14933055.peel, %continue_241 ], [ %src_val14933055, %continue_273.loopexit ]
  %mul_result1500.lcssa = phi i64 [ %mul_result1500.peel, %continue_241 ], [ %mul_result1500, %continue_273.loopexit ]
  %const3464 = bitcast i64 -458166810 to i64
  %const3450 = bitcast i64 -1217308286 to i64
  %const3448 = bitcast i64 -1511638542 to i64
  %const3418 = bitcast i64 929970112 to i64
  %const3416 = bitcast i64 659289387 to i64
  %sunkaddr3572 = getelementptr i8, ptr %0, i64 16
  %338 = load <2 x i64>, ptr %sunkaddr3572, align 8
  %dst_val15233034 = extractelement <2 x i64> %338, i64 0
  %dst_val15093035 = extractelement <2 x i64> %338, i64 1
  %339 = load <2 x i64>, ptr %0, align 8
  %src_val15103032 = extractelement <2 x i64> %339, i64 0
  %dst_val15143033 = extractelement <2 x i64> %339, i64 1
  %mul_result1511 = mul i64 %src_val15103032, %dst_val15093035
  %sunkaddr3573 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result1511, ptr %sunkaddr3573, align 8
  %xor_const_result1515 = xor i64 %dst_val15143033, 1874562385
  %sunkaddr3574 = getelementptr i8, ptr %0, i64 8
  store i64 %xor_const_result1515, ptr %sunkaddr3574, align 8
  %add_const_result1519 = add i64 %src_val14933055.lcssa, -701184834
  %sunkaddr3575 = getelementptr i8, ptr %0, i64 32
  store i64 %add_const_result1519, ptr %sunkaddr3575, align 8
  %340 = load <2 x i64>, ptr %0, align 8
  %dst_val15343036 = extractelement <2 x i64> %340, i64 0
  %src_val15243037 = extractelement <2 x i64> %340, i64 1
  %dst_val_1281525 = zext i64 %dst_val15233034 to i128
  %src_val_1281526 = zext i64 %src_val15243037 to i128
  %mul_result_1281527 = mul nuw i128 %src_val_1281526, %dst_val_1281525
  %umulh_result1528 = lshr i128 %mul_result_1281527, 64
  %umulh_result_641529 = trunc i128 %umulh_result1528 to i64
  store i64 %umulh_result_641529, ptr %sunkaddr3572, align 8
  %xor_result1536 = xor i64 %dst_val15343036, %add_shift_result1357
  store i64 %xor_result1536, ptr %0, align 8
  %341 = load <2 x i64>, ptr %0, align 8
  %dst_val15403038 = extractelement <2 x i64> %341, i64 0
  %src_val15413039 = extractelement <2 x i64> %341, i64 1
  %mul_result1542 = mul i64 %dst_val15403038, %src_val15413039
  store i64 %mul_result1542, ptr %0, align 8
  %xor_const_result1546 = xor i64 %umulh_result_641468.lcssa, -1203858252
  %sunkaddr3576 = getelementptr i8, ptr %0, i64 40
  store i64 %xor_const_result1546, ptr %sunkaddr3576, align 8
  %add_const_result1550 = add i64 %mul_result1500.lcssa, 722177058
  %sunkaddr3577 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result1550, ptr %sunkaddr3577, align 8
  %mul_result1556 = mul i64 %src_val15413039, %xor_const_result1546
  store i64 %mul_result1556, ptr %sunkaddr3574, align 8
  %342 = load <2 x i64>, ptr %sunkaddr3576, align 8
  %dst_val15593040 = extractelement <2 x i64> %342, i64 0
  %dst_val15653041 = extractelement <2 x i64> %342, i64 1
  %rotated1562 = tail call i64 @llvm.fshl.i64(i64 %dst_val15593040, i64 %dst_val15593040, i64 22)
  %add_const_result1566 = add i64 %dst_val15653041, 1096143823
  %343 = insertelement <2 x i64> poison, i64 %rotated1562, i64 0
  %344 = insertelement <2 x i64> %343, i64 %add_const_result1566, i64 1
  store <2 x i64> %344, ptr %sunkaddr3576, align 8
  %345 = load <2 x i64>, ptr %sunkaddr3575, align 8
  %src_val15713042 = extractelement <2 x i64> %345, i64 0
  %dst_val15703043 = extractelement <2 x i64> %345, i64 1
  %mul_result1572 = mul i64 %dst_val15703043, %src_val15713042
  store i64 %mul_result1572, ptr %sunkaddr3576, align 8
  %sunkaddr3578 = getelementptr i8, ptr %0, i64 48
  %346 = load <2 x i64>, ptr %sunkaddr3578, align 8
  %dst_val15793044 = extractelement <2 x i64> %346, i64 0
  %dst_val15753045 = extractelement <2 x i64> %346, i64 1
  %xor_const_result1576 = xor i64 %dst_val15753045, -469132237
  %rotated1582 = tail call i64 @llvm.fshl.i64(i64 %dst_val15793044, i64 %dst_val15793044, i64 38)
  %mul_result1588 = mul i64 %xor_const_result1576, %src_val15713042
  %347 = insertelement <2 x i64> poison, i64 %rotated1582, i64 0
  %348 = insertelement <2 x i64> %347, i64 %mul_result1588, i64 1
  store <2 x i64> %348, ptr %sunkaddr3578, align 8
  %349 = load <2 x i64>, ptr %sunkaddr3572, align 8
  %dst_val15923018.peel = extractelement <2 x i64> %349, i64 0
  %dst_val15983019.peel = extractelement <2 x i64> %349, i64 1
  %350 = load <2 x i64>, ptr %0, align 8
  %src_val15933016.peel = extractelement <2 x i64> %350, i64 0
  %dst_val16033017.peel = extractelement <2 x i64> %350, i64 1
  %mul_result1594.peel = mul i64 %src_val15933016.peel, %dst_val15923018.peel
  %xor_result1600.peel = xor i64 %dst_val15983019.peel, %rotated1582
  store i64 %xor_result1600.peel, ptr %sunkaddr3573, align 8
  %rotated1606.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val16033017.peel, i64 %dst_val16033017.peel, i64 29)
  %351 = insertelement <2 x i64> poison, i64 %rotated1606.peel, i64 0
  %352 = insertelement <2 x i64> %351, i64 %mul_result1594.peel, i64 1
  store <2 x i64> %352, ptr %sunkaddr3574, align 8
  %353 = load <2 x i64>, ptr %0, align 8
  %dst_val16313020.peel = extractelement <2 x i64> %353, i64 0
  %dst_val16103021.peel = extractelement <2 x i64> %353, i64 1
  %354 = load <2 x i64>, ptr %sunkaddr3576, align 8
  %dst_val16153024.peel = extractelement <2 x i64> %354, i64 0
  %src_val16113025.peel = extractelement <2 x i64> %354, i64 1
  %mul_result1612.peel = mul i64 %src_val16113025.peel, %dst_val16103021.peel
  store i64 %mul_result1612.peel, ptr %sunkaddr3574, align 8
  %xor_const_result1616.peel = xor i64 %dst_val16153024.peel, %const3450
  store i64 %xor_const_result1616.peel, ptr %sunkaddr3576, align 8
  %355 = load <2 x i64>, ptr %sunkaddr3573, align 8
  %dst_val16263022.peel = extractelement <2 x i64> %355, i64 0
  %mul_result1628.peel = mul i64 %dst_val16263022.peel, %mul_result1588
  store i64 %mul_result1628.peel, ptr %sunkaddr3573, align 8
  %add_const_result1632.peel = add i64 %dst_val16313020.peel, %const3418
  store i64 %add_const_result1632.peel, ptr %0, align 8
  %356 = load <2 x i64>, ptr %sunkaddr3575, align 8
  %src_val16433028.peel = extractelement <2 x i64> %356, i64 0
  %dst_val16363029.peel = extractelement <2 x i64> %356, i64 1
  %sub_result1638.peel = sub i64 %dst_val16363029.peel, %src_val16433028.peel
  %357 = extractelement <2 x i64> %355, i64 1
  %358 = xor i64 %357, %rotated1582
  %dst_val_1281644.peel = sext i64 %358 to i128
  %src_val_1281645.peel = sext i64 %src_val16433028.peel to i128
  %mul_result_1281646.peel = mul nsw i128 %src_val_1281645.peel, %dst_val_1281644.peel
  %smulh_result1647.peel = lshr i128 %mul_result_1281646.peel, 64
  %smulh_result_641648.peel = trunc i128 %smulh_result1647.peel to i64
  %xor_const_result1653.peel = xor i64 %sub_result1638.peel, %const3448
  %359 = insertelement <2 x i64> poison, i64 %xor_const_result1653.peel, i64 0
  %360 = insertelement <2 x i64> %359, i64 %smulh_result_641648.peel, i64 1
  store <2 x i64> %360, ptr %sunkaddr3576, align 8
  %361 = load <2 x i64>, ptr %sunkaddr3575, align 8
  %dst_val16663030.peel = extractelement <2 x i64> %361, i64 0
  %dst_val16573031.peel = extractelement <2 x i64> %361, i64 1
  %mul_result1659.peel = mul i64 %dst_val16573031.peel, %dst_val16663030.peel
  %add_const_result1663.peel = add i64 %mul_result1588, %const3464
  store i64 %add_const_result1663.peel, ptr %sunkaddr3577, align 8
  %xor_const_result1667.peel = xor i64 %dst_val16663030.peel, %const3416
  %362 = insertelement <2 x i64> poison, i64 %xor_const_result1667.peel, i64 0
  %363 = insertelement <2 x i64> %362, i64 %mul_result1659.peel, i64 1
  store <2 x i64> %363, ptr %sunkaddr3575, align 8
  %mul_result1673.peel = mul i64 %xor_const_result1667.peel, %mul_result1594.peel
  store i64 %mul_result1673.peel, ptr %sunkaddr3575, align 8
  %364 = and i128 %mul_result_1281646.peel, 45939328719308498315247616
  %branch_condition1679.peel = icmp ne i128 %364, 0
  %or.cond3346.not.peel = select i1 %branch_taken1502.lcssa, i1 true, i1 %branch_condition1679.peel
  br i1 %or.cond3346.not.peel, label %continue_305, label %continue_305.loopexit

continue_305.loopexit:                            ; preds = %continue_273
  %sunkaddr3579 = getelementptr i8, ptr %0, i64 48
  %.pre3306.peel = load <2 x i64>, ptr %sunkaddr3579, align 8
  %365 = extractelement <2 x i64> %.pre3306.peel, i64 1
  %sunkaddr3580 = getelementptr i8, ptr %0, i64 16
  %366 = load <2 x i64>, ptr %sunkaddr3580, align 8
  %dst_val15923018 = extractelement <2 x i64> %366, i64 0
  %dst_val15983019 = extractelement <2 x i64> %366, i64 1
  %367 = load <2 x i64>, ptr %0, align 8
  %src_val15933016 = extractelement <2 x i64> %367, i64 0
  %dst_val16033017 = extractelement <2 x i64> %367, i64 1
  %mul_result1594 = mul i64 %src_val15933016, %dst_val15923018
  %xor_result1600 = xor i64 %dst_val15983019, %smulh_result_641648.peel
  %sunkaddr3581 = getelementptr i8, ptr %0, i64 24
  store i64 %xor_result1600, ptr %sunkaddr3581, align 8
  %rotated1606 = tail call i64 @llvm.fshl.i64(i64 %dst_val16033017, i64 %dst_val16033017, i64 29)
  %368 = insertelement <2 x i64> poison, i64 %rotated1606, i64 0
  %369 = insertelement <2 x i64> %368, i64 %mul_result1594, i64 1
  %sunkaddr3582 = getelementptr i8, ptr %0, i64 8
  store <2 x i64> %369, ptr %sunkaddr3582, align 8
  %370 = load <2 x i64>, ptr %0, align 8
  %dst_val16313020 = extractelement <2 x i64> %370, i64 0
  %dst_val16103021 = extractelement <2 x i64> %370, i64 1
  %sunkaddr3583 = getelementptr i8, ptr %0, i64 40
  %371 = load <2 x i64>, ptr %sunkaddr3583, align 8
  %dst_val16153024 = extractelement <2 x i64> %371, i64 0
  %src_val16113025 = extractelement <2 x i64> %371, i64 1
  %mul_result1612 = mul i64 %src_val16113025, %dst_val16103021
  store i64 %mul_result1612, ptr %sunkaddr3582, align 8
  %xor_const_result1616 = xor i64 %dst_val16153024, %const3450
  store i64 %xor_const_result1616, ptr %sunkaddr3583, align 8
  %372 = load <2 x i64>, ptr %sunkaddr3581, align 8
  %dst_val16263022 = extractelement <2 x i64> %372, i64 0
  %shift3367 = shufflevector <2 x i64> %.pre3306.peel, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %373 = xor <2 x i64> %372, %shift3367
  %mul_result1628 = mul i64 %dst_val16263022, %365
  store i64 %mul_result1628, ptr %sunkaddr3581, align 8
  %add_const_result1632 = add i64 %dst_val16313020, %const3418
  store i64 %add_const_result1632, ptr %0, align 8
  %sunkaddr3584 = getelementptr i8, ptr %0, i64 32
  %374 = load <2 x i64>, ptr %sunkaddr3584, align 8
  %src_val16433028 = extractelement <2 x i64> %374, i64 0
  %dst_val16363029 = extractelement <2 x i64> %374, i64 1
  %sub_result1638 = sub i64 %dst_val16363029, %src_val16433028
  %375 = extractelement <2 x i64> %373, i64 1
  %dst_val_1281644 = sext i64 %375 to i128
  %src_val_1281645 = sext i64 %src_val16433028 to i128
  %mul_result_1281646 = mul nsw i128 %src_val_1281645, %dst_val_1281644
  %smulh_result1647 = lshr i128 %mul_result_1281646, 64
  %smulh_result_641648 = trunc i128 %smulh_result1647 to i64
  %xor_const_result1653 = xor i64 %sub_result1638, %const3448
  %376 = insertelement <2 x i64> poison, i64 %xor_const_result1653, i64 0
  %377 = insertelement <2 x i64> %376, i64 %smulh_result_641648, i64 1
  store <2 x i64> %377, ptr %sunkaddr3583, align 8
  %378 = load <2 x i64>, ptr %sunkaddr3584, align 8
  %dst_val16663030 = extractelement <2 x i64> %378, i64 0
  %dst_val16573031 = extractelement <2 x i64> %378, i64 1
  %mul_result1659 = mul i64 %dst_val16573031, %dst_val16663030
  %add_const_result1663 = add i64 %365, %const3464
  %sunkaddr3585 = getelementptr i8, ptr %0, i64 56
  store i64 %add_const_result1663, ptr %sunkaddr3585, align 8
  %xor_const_result1667 = xor i64 %dst_val16663030, %const3416
  %379 = insertelement <2 x i64> poison, i64 %xor_const_result1667, i64 0
  %380 = insertelement <2 x i64> %379, i64 %mul_result1659, i64 1
  store <2 x i64> %380, ptr %sunkaddr3584, align 8
  %mul_result1673 = mul i64 %xor_const_result1667, %mul_result1594
  br label %continue_305

continue_305:                                     ; preds = %continue_305.loopexit, %continue_273
  %branch_taken1675.lcssa = phi i1 [ %branch_taken1502.lcssa, %continue_273 ], [ true, %continue_305.loopexit ]
  %mul_result1673.lcssa = phi i64 [ %mul_result1673.peel, %continue_273 ], [ %mul_result1673, %continue_305.loopexit ]
  %const3461 = bitcast i64 -655282117 to i64
  %const3444 = bitcast i64 -1724733175 to i64
  %const3434 = bitcast i64 1703691470 to i64
  %381 = load <2 x i64>, ptr %0, align 8
  %dst_val16823002 = extractelement <2 x i64> %381, i64 0
  %src_val16833003 = extractelement <2 x i64> %381, i64 1
  %mul_result1684 = mul i64 %dst_val16823002, %src_val16833003
  %sunkaddr3586 = getelementptr i8, ptr %0, i64 8
  %382 = load <2 x i64>, ptr %sunkaddr3586, align 8
  %dst_val16913004 = extractelement <2 x i64> %382, i64 0
  %dst_val16873005 = extractelement <2 x i64> %382, i64 1
  %add_const_result1688 = add i64 %dst_val16873005, 197415339
  %sunkaddr3587 = getelementptr i8, ptr %0, i64 16
  store i64 %add_const_result1688, ptr %sunkaddr3587, align 8
  %xor_const_result1692 = xor i64 %dst_val16913004, -99593571
  %383 = insertelement <2 x i64> poison, i64 %mul_result1684, i64 0
  %384 = insertelement <2 x i64> %383, i64 %xor_const_result1692, i64 1
  store <2 x i64> %384, ptr %0, align 8
  %385 = load <2 x i64>, ptr %sunkaddr3586, align 8
  %dst_val16963006 = extractelement <2 x i64> %385, i64 0
  %src_val16973007 = extractelement <2 x i64> %385, i64 1
  %dst_val_1281698 = zext i64 %dst_val16963006 to i128
  %src_val_1281699 = zext i64 %src_val16973007 to i128
  %mul_result_1281700 = mul nuw i128 %dst_val_1281698, %src_val_1281699
  %umulh_result1701 = lshr i128 %mul_result_1281700, 64
  %umulh_result_641702 = trunc i128 %umulh_result1701 to i64
  %sunkaddr3588 = getelementptr i8, ptr %0, i64 48
  %386 = load <2 x i64>, ptr %sunkaddr3588, align 8
  %dst_val17133010 = extractelement <2 x i64> %386, i64 0
  %dst_val17073011 = extractelement <2 x i64> %386, i64 1
  %sub_result1709 = sub i64 %dst_val17073011, %dst_val17133010
  %mul_result1715 = mul i64 %dst_val17133010, %mul_result1673.lcssa
  %387 = insertelement <2 x i64> poison, i64 %mul_result1715, i64 0
  %388 = insertelement <2 x i64> %387, i64 %sub_result1709, i64 1
  store <2 x i64> %388, ptr %sunkaddr3588, align 8
  %389 = load <2 x i64>, ptr %sunkaddr3587, align 8
  %dst_val17273008 = extractelement <2 x i64> %389, i64 0
  %390 = shufflevector <2 x i64> %389, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %391 = insertelement <2 x i64> %390, i64 %mul_result1673.lcssa, i64 1
  %392 = xor <2 x i64> %391, <i64 -235449189, i64 poison>
  %393 = add <2 x i64> %391, <i64 poison, i64 1139225584>
  %394 = shufflevector <2 x i64> %392, <2 x i64> %393, <2 x i32> <i32 0, i32 3>
  %sunkaddr3589 = getelementptr i8, ptr %0, i64 24
  store <2 x i64> %394, ptr %sunkaddr3589, align 8
  %mul_result1729 = mul i64 %dst_val17273008, %sub_result1709
  store i64 %mul_result1729, ptr %sunkaddr3587, align 8
  %add_const_result1733 = add i64 %mul_result1684, -485271711
  %sunkaddr3590 = getelementptr i8, ptr %0, i64 32
  %395 = load <2 x i64>, ptr %sunkaddr3590, align 8
  %shift3368 = shufflevector <2 x i64> %395, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %396 = sub <2 x i64> %395, %shift3368
  %sub_result1739 = extractelement <2 x i64> %396, i64 0
  store i64 %sub_result1739, ptr %sunkaddr3590, align 8
  %397 = load <2 x i64>, ptr %sunkaddr3589, align 8
  %dst_val17523014 = extractelement <2 x i64> %397, i64 0
  %dst_val17433015 = extractelement <2 x i64> %397, i64 1
  %mul_result1745 = mul i64 %dst_val17433015, %sub_result1709
  %398 = extractelement <2 x i64> %395, i64 1
  %add_const_result1749 = add i64 %398, 516620353
  %sunkaddr3591 = getelementptr i8, ptr %0, i64 40
  store i64 %add_const_result1749, ptr %sunkaddr3591, align 8
  %rotated1755 = tail call i64 @llvm.fshl.i64(i64 %dst_val17523014, i64 %dst_val17523014, i64 1)
  %399 = insertelement <2 x i64> poison, i64 %rotated1755, i64 0
  %400 = insertelement <2 x i64> %399, i64 %mul_result1745, i64 1
  store <2 x i64> %400, ptr %sunkaddr3589, align 8
  %mul_result1761 = mul i64 %sub_result1709, %add_const_result1733
  store i64 %mul_result1761, ptr %0, align 8
  %mul_result1767.peel = mul i64 %sub_result1709, %umulh_result_641702
  store i64 %mul_result1767.peel, ptr %sunkaddr3586, align 8
  %401 = load <2 x i64>, ptr %sunkaddr3591, align 8
  %dst_val17772994.peel = extractelement <2 x i64> %401, i64 0
  %dst_val17702995.peel = extractelement <2 x i64> %401, i64 1
  %rotated1773.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val17702995.peel, i64 %dst_val17702995.peel, i64 61)
  %sub_result1779.peel = sub i64 %dst_val17772994.peel, %sub_result1709
  %402 = insertelement <2 x i64> poison, i64 %sub_result1779.peel, i64 0
  %403 = insertelement <2 x i64> %402, i64 %rotated1773.peel, i64 1
  store <2 x i64> %403, ptr %sunkaddr3591, align 8
  %404 = load <2 x i64>, ptr %sunkaddr3590, align 8
  %src_val17842999.peel = extractelement <2 x i64> %404, i64 1
  %mul_result1785.peel = mul i64 %src_val17842999.peel, %rotated1755
  %add_const_result1789.peel = add i64 %sub_result1709, %const3444
  %xor_const_result1793.peel = xor i64 %mul_result1729, -547023705
  %mul_result1799.peel = mul i64 %src_val17842999.peel, %rotated1773.peel
  %xor_const_result1803.peel = xor i64 %sub_result1779.peel, %const3461
  %405 = load <2 x i64>, ptr %0, align 8
  %dst_val18132997.peel = extractelement <2 x i64> %405, i64 1
  %406 = xor <2 x i64> %405, %404
  %407 = insertelement <2 x i64> %406, i64 %xor_const_result1803.peel, i64 1
  store <2 x i64> %407, ptr %sunkaddr3590, align 8
  %dst_val_1281815.peel = sext i64 %dst_val18132997.peel to i128
  %src_val_1281816.peel = sext i64 %add_const_result1789.peel to i128
  %mul_result_1281817.peel = mul nsw i128 %dst_val_1281815.peel, %src_val_1281816.peel
  %smulh_result1818.peel = lshr i128 %mul_result_1281817.peel, 64
  %smulh_result_641819.peel = trunc i128 %smulh_result1818.peel to i64
  %408 = insertelement <2 x i64> poison, i64 %smulh_result_641819.peel, i64 0
  %409 = insertelement <2 x i64> %408, i64 %xor_const_result1793.peel, i64 1
  store <2 x i64> %409, ptr %sunkaddr3586, align 8
  %410 = extractelement <2 x i64> %405, i64 0
  %xor_result1826.peel = xor i64 %410, %add_const_result1789.peel
  %411 = insertelement <2 x i64> poison, i64 %mul_result1799.peel, i64 0
  %412 = insertelement <2 x i64> %411, i64 %xor_result1826.peel, i64 1
  store <2 x i64> %412, ptr %sunkaddr3588, align 8
  %mul_result1832.peel = mul i64 %xor_result1826.peel, %xor_const_result1793.peel
  %sunkaddr3592 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result1832.peel, ptr %sunkaddr3592, align 8
  %add_const_result1836.peel = add i64 %410, %const3434
  %413 = extractelement <2 x i64> %406, i64 0
  %rotated1842.peel = tail call i64 @llvm.fshl.i64(i64 %413, i64 %413, i64 58)
  store i64 %rotated1842.peel, ptr %sunkaddr3590, align 8
  %mul_result1848.peel = mul i64 %rotated1842.peel, %add_const_result1836.peel
  store i64 %mul_result1848.peel, ptr %0, align 8
  %414 = and i128 %mul_result_1281817.peel, 39615593594998307800651661312
  %branch_condition1854.peel = icmp ne i128 %414, 0
  %or.cond3347.not.peel = select i1 %branch_taken1675.lcssa, i1 true, i1 %branch_condition1854.peel
  br i1 %or.cond3347.not.peel, label %continue_337, label %continue_337.loopexit

continue_337.loopexit:                            ; preds = %continue_305
  %mul_result1767 = mul i64 %mul_result1832.peel, %smulh_result_641819.peel
  %sunkaddr3593 = getelementptr i8, ptr %0, i64 8
  store i64 %mul_result1767, ptr %sunkaddr3593, align 8
  %sunkaddr3594 = getelementptr i8, ptr %0, i64 40
  %415 = load <2 x i64>, ptr %sunkaddr3594, align 8
  %dst_val17772994 = extractelement <2 x i64> %415, i64 0
  %dst_val17702995 = extractelement <2 x i64> %415, i64 1
  %rotated1773 = tail call i64 @llvm.fshl.i64(i64 %dst_val17702995, i64 %dst_val17702995, i64 61)
  %sub_result1779 = sub i64 %dst_val17772994, %mul_result1832.peel
  %416 = insertelement <2 x i64> poison, i64 %sub_result1779, i64 0
  %417 = insertelement <2 x i64> %416, i64 %rotated1773, i64 1
  store <2 x i64> %417, ptr %sunkaddr3594, align 8
  %sunkaddr3595 = getelementptr i8, ptr %0, i64 32
  %418 = load <2 x i64>, ptr %sunkaddr3595, align 8
  %src_val17842999 = extractelement <2 x i64> %418, i64 1
  %add_const_result1789 = add i64 %mul_result1832.peel, %const3444
  %mul_result1799 = mul i64 %src_val17842999, %rotated1773
  %xor_const_result1803 = xor i64 %sub_result1779, %const3461
  %419 = load <2 x i64>, ptr %0, align 8
  %dst_val18132997 = extractelement <2 x i64> %419, i64 1
  %420 = xor <2 x i64> %419, %418
  %421 = insertelement <2 x i64> %420, i64 %xor_const_result1803, i64 1
  store <2 x i64> %421, ptr %sunkaddr3595, align 8
  %dst_val_1281815 = sext i64 %dst_val18132997 to i128
  %src_val_1281816 = sext i64 %add_const_result1789 to i128
  %mul_result_1281817 = mul nsw i128 %dst_val_1281815, %src_val_1281816
  %smulh_result1818 = lshr i128 %mul_result_1281817, 64
  %smulh_result_641819 = trunc i128 %smulh_result1818 to i64
  %422 = insertelement <2 x i64> poison, i64 %smulh_result_641819, i64 0
  %423 = insertelement <2 x i64> %422, i64 %mul_result1729, i64 1
  store <2 x i64> %423, ptr %sunkaddr3593, align 8
  %424 = extractelement <2 x i64> %419, i64 0
  %xor_result1826 = xor i64 %424, %add_const_result1789
  %425 = insertelement <2 x i64> poison, i64 %mul_result1799, i64 0
  %426 = insertelement <2 x i64> %425, i64 %xor_result1826, i64 1
  %sunkaddr3596 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %426, ptr %sunkaddr3596, align 8
  %mul_result1832 = mul i64 %xor_result1826, %mul_result1729
  %sunkaddr3597 = getelementptr i8, ptr %0, i64 56
  store i64 %mul_result1832, ptr %sunkaddr3597, align 8
  %add_const_result1836 = add i64 %424, %const3434
  %427 = extractelement <2 x i64> %420, i64 0
  %rotated1842 = tail call i64 @llvm.fshl.i64(i64 %427, i64 %427, i64 58)
  store i64 %rotated1842, ptr %sunkaddr3595, align 8
  %mul_result1848 = mul i64 %rotated1842, %add_const_result1836
  store i64 %mul_result1848, ptr %0, align 8
  %mul_result1785 = mul i64 %src_val17842999, %mul_result1785.peel
  br label %continue_337

continue_337:                                     ; preds = %continue_337.loopexit, %continue_305
  %branch_taken1850.lcssa = phi i1 [ %branch_taken1675.lcssa, %continue_305 ], [ true, %continue_337.loopexit ]
  %mul_result1785.lcssa = phi i64 [ %mul_result1785.peel, %continue_305 ], [ %mul_result1785, %continue_337.loopexit ]
  %xor_const_result1803.lcssa = phi i64 [ %xor_const_result1803.peel, %continue_305 ], [ %xor_const_result1803, %continue_337.loopexit ]
  %const3432 = bitcast i64 1675938361 to i64
  %const3417 = bitcast i64 757264618 to i64
  %const3415 = bitcast i64 460961199 to i64
  %sunkaddr3598 = getelementptr i8, ptr %0, i64 24
  store i64 %mul_result1785.lcssa, ptr %sunkaddr3598, align 8
  %sunkaddr3599 = getelementptr i8, ptr %0, i64 16
  %428 = load <2 x i64>, ptr %sunkaddr3599, align 8
  %dst_val18572980 = extractelement <2 x i64> %428, i64 0
  %mul_result1859 = mul i64 %dst_val18572980, %xor_const_result1803.lcssa
  %sunkaddr3600 = getelementptr i8, ptr %0, i64 40
  %429 = load <2 x i64>, ptr %sunkaddr3600, align 8
  %dst_val18622983 = extractelement <2 x i64> %429, i64 1
  %add_const_result1863 = add i64 %dst_val18622983, 495253495
  %sunkaddr3601 = getelementptr i8, ptr %0, i64 48
  store i64 %add_const_result1863, ptr %sunkaddr3601, align 8
  %shift3369 = shufflevector <2 x i64> %429, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %430 = sub <2 x i64> %428, %shift3369
  %431 = insertelement <2 x i64> %430, i64 %mul_result1859, i64 0
  store <2 x i64> %431, ptr %sunkaddr3599, align 8
  %432 = load <2 x i64>, ptr %sunkaddr3598, align 8
  %dst_val18732986 = extractelement <2 x i64> %432, i64 0
  %dst_val18832987 = extractelement <2 x i64> %432, i64 1
  %433 = load <2 x i64>, ptr %sunkaddr3601, align 8
  %src_val18742988 = extractelement <2 x i64> %433, i64 0
  %src_val18892989 = extractelement <2 x i64> %433, i64 1
  %dst_val_1281875 = zext i64 %dst_val18732986 to i128
  %src_val_1281876 = zext i64 %src_val18742988 to i128
  %mul_result_1281877 = mul nuw i128 %src_val_1281876, %dst_val_1281875
  %umulh_result1878 = lshr i128 %mul_result_1281877, 64
  %umulh_result_641879 = trunc i128 %umulh_result1878 to i64
  %xor_const_result1884 = xor i64 %dst_val18832987, -417845687
  %434 = insertelement <2 x i64> poison, i64 %umulh_result_641879, i64 0
  %435 = insertelement <2 x i64> %434, i64 %xor_const_result1884, i64 1
  store <2 x i64> %435, ptr %sunkaddr3598, align 8
  %436 = load <2 x i64>, ptr %0, align 8
  %dst_val18932984 = extractelement <2 x i64> %436, i64 0
  %dst_val18882985 = extractelement <2 x i64> %436, i64 1
  %mul_result1890 = mul i64 %dst_val18882985, %src_val18892989
  %xor_const_result1894 = xor i64 %dst_val18932984, 835562357
  %437 = insertelement <2 x i64> poison, i64 %xor_const_result1894, i64 0
  %438 = insertelement <2 x i64> %437, i64 %mul_result1890, i64 1
  store <2 x i64> %438, ptr %0, align 8
  %xor_result1900 = xor i64 %src_val18892989, %xor_const_result1884
  %sunkaddr3602 = getelementptr i8, ptr %0, i64 32
  store i64 %xor_result1900, ptr %sunkaddr3602, align 8
  %439 = load <2 x i64>, ptr %sunkaddr3602, align 8
  %dst_val19042990 = extractelement <2 x i64> %439, i64 0
  %src_val19052991 = extractelement <2 x i64> %439, i64 1
  %mul_result1906 = mul i64 %dst_val19042990, %src_val19052991
  %xor_const_result1910 = xor i64 %src_val18892989, -729360251
  %sunkaddr3603 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_const_result1910, ptr %sunkaddr3603, align 8
  %440 = load <2 x i64>, ptr %sunkaddr3600, align 8
  %dst_val19132992 = extractelement <2 x i64> %440, i64 0
  %dst_val19202993 = extractelement <2 x i64> %440, i64 1
  %rotated1916 = tail call i64 @llvm.fshl.i64(i64 %dst_val19132992, i64 %dst_val19132992, i64 7)
  %441 = insertelement <2 x i64> poison, i64 %mul_result1906, i64 0
  %442 = insertelement <2 x i64> %441, i64 %rotated1916, i64 1
  store <2 x i64> %442, ptr %sunkaddr3602, align 8
  %mul_result1922 = mul i64 %rotated1916, %dst_val19202993
  %add_const_result1926 = add i64 %xor_const_result1894, 2018671038
  %xor_result1932 = xor i64 %rotated1916, %xor_const_result1910
  %443 = insertelement <2 x i64> poison, i64 %mul_result1922, i64 0
  %444 = insertelement <2 x i64> %443, i64 %xor_result1932, i64 1
  store <2 x i64> %444, ptr %sunkaddr3601, align 8
  %mul_result1938 = mul i64 %xor_result1932, %mul_result1859
  store i64 %mul_result1938, ptr %sunkaddr3603, align 8
  %mul_result1944.peel = mul i64 %add_const_result1926, %rotated1916
  %445 = load <2 x i64>, ptr %sunkaddr3599, align 8
  %dst_val19472966.peel = extractelement <2 x i64> %445, i64 0
  %dst_val19512967.peel = extractelement <2 x i64> %445, i64 1
  %add_const_result1948.peel = add i64 %dst_val19472966.peel, %const3417
  %rotated1954.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val19512967.peel, i64 %dst_val19512967.peel, i64 20)
  %446 = insertelement <2 x i64> poison, i64 %add_const_result1948.peel, i64 0
  %447 = insertelement <2 x i64> %446, i64 %rotated1954.peel, i64 1
  store <2 x i64> %447, ptr %sunkaddr3599, align 8
  %448 = load <2 x i64>, ptr %sunkaddr3600, align 8
  %dst_val19582968.peel = extractelement <2 x i64> %448, i64 0
  %src_val19592969.peel = extractelement <2 x i64> %448, i64 1
  %mul_result1960.peel = mul i64 %dst_val19582968.peel, %src_val19592969.peel
  store i64 %mul_result1960.peel, ptr %sunkaddr3600, align 8
  %449 = load <2 x i64>, ptr %sunkaddr3598, align 8
  %dst_val19632972.peel = extractelement <2 x i64> %449, i64 0
  %src_val19692973.peel = extractelement <2 x i64> %449, i64 1
  %xor_const_result1964.peel = xor i64 %dst_val19632972.peel, %const3432
  store i64 %xor_const_result1964.peel, ptr %sunkaddr3598, align 8
  %sunkaddr3604 = getelementptr i8, ptr %0, i64 8
  %450 = load <2 x i64>, ptr %sunkaddr3604, align 8
  %dst_val19682970.peel = extractelement <2 x i64> %450, i64 0
  %dst_val19752971.peel = extractelement <2 x i64> %450, i64 1
  %shifted1970.peel = shl i64 %src_val19692973.peel, 3
  %add_shift_result1971.peel = add i64 %dst_val19682970.peel, %shifted1970.peel
  store i64 %add_shift_result1971.peel, ptr %sunkaddr3604, align 8
  %mul_result1977.peel = mul i64 %dst_val19752971.peel, %src_val19592969.peel
  store i64 %mul_result1977.peel, ptr %sunkaddr3599, align 8
  %451 = load <2 x i64>, ptr %sunkaddr3601, align 8
  %dst_val19802974.peel = extractelement <2 x i64> %451, i64 0
  %dst_val19872975.peel = extractelement <2 x i64> %451, i64 1
  %rotated1983.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val19802974.peel, i64 %dst_val19802974.peel, i64 37)
  %shifted1989.peel = shl i64 %add_shift_result1971.peel, 1
  %add_shift_result1990.peel = add i64 %dst_val19872975.peel, %shifted1989.peel
  %dst_val_1281996.peel = zext i64 %add_shift_result1990.peel to i128
  %src_val_1281997.peel = zext i64 %xor_const_result1964.peel to i128
  %mul_result_1281998.peel = mul nuw i128 %dst_val_1281996.peel, %src_val_1281997.peel
  %umulh_result1999.peel = lshr i128 %mul_result_1281998.peel, 64
  %umulh_result_642000.peel = trunc i128 %umulh_result1999.peel to i64
  store i64 %umulh_result_642000.peel, ptr %sunkaddr3603, align 8
  %xor_result2007.peel = xor i64 %xor_const_result1964.peel, %mul_result1944.peel
  store i64 %xor_result2007.peel, ptr %0, align 8
  %452 = load <2 x i64>, ptr %0, align 8
  %dst_val20112976.peel = extractelement <2 x i64> %452, i64 0
  %src_val20122977.peel = extractelement <2 x i64> %452, i64 1
  %mul_result2013.peel = mul i64 %dst_val20112976.peel, %src_val20122977.peel
  %453 = load <2 x i64>, ptr %sunkaddr3598, align 8
  %dst_val20162978.peel = extractelement <2 x i64> %453, i64 0
  %src_val20222979.peel = extractelement <2 x i64> %453, i64 1
  %add_const_result2017.peel = add i64 %dst_val20162978.peel, %const3415
  store i64 %add_const_result2017.peel, ptr %sunkaddr3598, align 8
  %xor_result2023.peel = xor i64 %src_val20222979.peel, %src_val20122977.peel
  %454 = insertelement <2 x i64> poison, i64 %mul_result2013.peel, i64 0
  %455 = insertelement <2 x i64> %454, i64 %xor_result2023.peel, i64 1
  store <2 x i64> %455, ptr %0, align 8
  %mul_result2029.peel = mul i64 %src_val20222979.peel, %rotated1983.peel
  store i64 %mul_result2029.peel, ptr %sunkaddr3601, align 8
  %456 = and i128 %mul_result_1281998.peel, 762662186983447702011904
  %branch_condition2035.peel = icmp ne i128 %456, 0
  %or.cond3348.not.peel = select i1 %branch_taken1850.lcssa, i1 true, i1 %branch_condition2035.peel
  br i1 %or.cond3348.not.peel, label %continue_369, label %continue_369.loopexit

continue_369.loopexit:                            ; preds = %continue_337
  %mul_result1944 = mul i64 %mul_result2013.peel, %mul_result1960.peel
  %sunkaddr3605 = getelementptr i8, ptr %0, i64 16
  %457 = load <2 x i64>, ptr %sunkaddr3605, align 8
  %dst_val19472966 = extractelement <2 x i64> %457, i64 0
  %dst_val19512967 = extractelement <2 x i64> %457, i64 1
  %add_const_result1948 = add i64 %dst_val19472966, %const3417
  %rotated1954 = tail call i64 @llvm.fshl.i64(i64 %dst_val19512967, i64 %dst_val19512967, i64 20)
  %458 = insertelement <2 x i64> poison, i64 %add_const_result1948, i64 0
  %459 = insertelement <2 x i64> %458, i64 %rotated1954, i64 1
  store <2 x i64> %459, ptr %sunkaddr3605, align 8
  %sunkaddr3606 = getelementptr i8, ptr %0, i64 40
  %460 = load <2 x i64>, ptr %sunkaddr3606, align 8
  %dst_val19582968 = extractelement <2 x i64> %460, i64 0
  %src_val19592969 = extractelement <2 x i64> %460, i64 1
  %mul_result1960 = mul i64 %dst_val19582968, %src_val19592969
  store i64 %mul_result1960, ptr %sunkaddr3606, align 8
  %sunkaddr3607 = getelementptr i8, ptr %0, i64 24
  %461 = load <2 x i64>, ptr %sunkaddr3607, align 8
  %dst_val19632972 = extractelement <2 x i64> %461, i64 0
  %src_val19692973 = extractelement <2 x i64> %461, i64 1
  %xor_const_result1964 = xor i64 %dst_val19632972, %const3432
  store i64 %xor_const_result1964, ptr %sunkaddr3607, align 8
  %sunkaddr3608 = getelementptr i8, ptr %0, i64 8
  %462 = load <2 x i64>, ptr %sunkaddr3608, align 8
  %dst_val19682970 = extractelement <2 x i64> %462, i64 0
  %dst_val19752971 = extractelement <2 x i64> %462, i64 1
  %shifted1970 = shl i64 %src_val19692973, 3
  %add_shift_result1971 = add i64 %dst_val19682970, %shifted1970
  store i64 %add_shift_result1971, ptr %sunkaddr3608, align 8
  %mul_result1977 = mul i64 %dst_val19752971, %src_val19592969
  store i64 %mul_result1977, ptr %sunkaddr3605, align 8
  %sunkaddr3609 = getelementptr i8, ptr %0, i64 48
  %463 = load <2 x i64>, ptr %sunkaddr3609, align 8
  %dst_val19802974 = extractelement <2 x i64> %463, i64 0
  %dst_val19872975 = extractelement <2 x i64> %463, i64 1
  %rotated1983 = tail call i64 @llvm.fshl.i64(i64 %dst_val19802974, i64 %dst_val19802974, i64 37)
  %shifted1989 = shl i64 %add_shift_result1971, 1
  %add_shift_result1990 = add i64 %dst_val19872975, %shifted1989
  %dst_val_1281996 = zext i64 %add_shift_result1990 to i128
  %src_val_1281997 = zext i64 %xor_const_result1964 to i128
  %mul_result_1281998 = mul nuw i128 %dst_val_1281996, %src_val_1281997
  %umulh_result1999 = lshr i128 %mul_result_1281998, 64
  %umulh_result_642000 = trunc i128 %umulh_result1999 to i64
  %xor_result2007 = xor i64 %xor_const_result1964, %mul_result1944
  store i64 %xor_result2007, ptr %0, align 8
  %464 = load <2 x i64>, ptr %0, align 8
  %dst_val20112976 = extractelement <2 x i64> %464, i64 0
  %src_val20122977 = extractelement <2 x i64> %464, i64 1
  %mul_result2013 = mul i64 %dst_val20112976, %src_val20122977
  %465 = load <2 x i64>, ptr %sunkaddr3607, align 8
  %dst_val20162978 = extractelement <2 x i64> %465, i64 0
  %src_val20222979 = extractelement <2 x i64> %465, i64 1
  %add_const_result2017 = add i64 %dst_val20162978, %const3415
  store i64 %add_const_result2017, ptr %sunkaddr3607, align 8
  %xor_result2023 = xor i64 %src_val20222979, %src_val20122977
  %466 = insertelement <2 x i64> poison, i64 %mul_result2013, i64 0
  %467 = insertelement <2 x i64> %466, i64 %xor_result2023, i64 1
  store <2 x i64> %467, ptr %0, align 8
  %mul_result2029 = mul i64 %src_val20222979, %rotated1983
  store i64 %mul_result2029, ptr %sunkaddr3609, align 8
  br label %continue_369

continue_369:                                     ; preds = %continue_369.loopexit, %continue_337
  %branch_taken2031.lcssa = phi i1 [ %branch_taken1850.lcssa, %continue_337 ], [ true, %continue_369.loopexit ]
  %umulh_result_642000.lcssa = phi i64 [ %umulh_result_642000.peel, %continue_337 ], [ %umulh_result_642000, %continue_369.loopexit ]
  %mul_result2013.lcssa = phi i64 [ %mul_result2013.peel, %continue_337 ], [ %mul_result2013, %continue_369.loopexit ]
  %xor_result2023.lcssa = phi i64 [ %xor_result2023.peel, %continue_337 ], [ %xor_result2023, %continue_369.loopexit ]
  %mul_result2029.lcssa = phi i64 [ %mul_result2029.peel, %continue_337 ], [ %mul_result2029, %continue_369.loopexit ]
  %const3465 = bitcast i64 -439194500 to i64
  %const3449 = bitcast i64 -1450987274 to i64
  %const3443 = bitcast i64 -1898443851 to i64
  %const3437 = bitcast i64 1829778069 to i64
  %const3427 = bitcast i64 1398683415 to i64
  %sunkaddr3610 = getelementptr i8, ptr %0, i64 24
  %468 = load <2 x i64>, ptr %sunkaddr3610, align 8
  %dst_val20382952 = extractelement <2 x i64> %468, i64 0
  %src_val20392953 = extractelement <2 x i64> %468, i64 1
  %mul_result2040 = mul i64 %dst_val20382952, %src_val20392953
  %sunkaddr3611 = getelementptr i8, ptr %0, i64 32
  %469 = load <2 x i64>, ptr %sunkaddr3611, align 8
  %dst_val20482954 = extractelement <2 x i64> %469, i64 0
  %dst_val20432955 = extractelement <2 x i64> %469, i64 1
  %xor_const_result2044 = xor i64 %dst_val20432955, -185546114
  %xor_result2050 = xor i64 %dst_val20482954, %xor_result2023.lcssa
  %sunkaddr3612 = getelementptr i8, ptr %0, i64 8
  %470 = load <2 x i64>, ptr %sunkaddr3612, align 8
  %src_val20662950 = extractelement <2 x i64> %470, i64 0
  %dst_val20542951 = extractelement <2 x i64> %470, i64 1
  %dst_val_1282056 = zext i64 %dst_val20542951 to i128
  %src_val_1282057 = zext i64 %src_val20662950 to i128
  %mul_result_1282058 = mul nuw i128 %dst_val_1282056, %src_val_1282057
  %umulh_result2059 = lshr i128 %mul_result_1282058, 64
  %umulh_result_642060 = trunc i128 %umulh_result2059 to i64
  %471 = insertelement <2 x i64> poison, i64 %umulh_result_642060, i64 0
  %472 = insertelement <2 x i64> %471, i64 %mul_result2040, i64 1
  %sunkaddr3613 = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %472, ptr %sunkaddr3613, align 8
  %shifted2067 = shl i64 %src_val20662950, 3
  %add_shift_result2068 = add i64 %shifted2067, %umulh_result_642000.lcssa
  %sunkaddr3614 = getelementptr i8, ptr %0, i64 56
  store i64 %add_shift_result2068, ptr %sunkaddr3614, align 8
  %mul_result2074 = mul i64 %xor_result2050, %mul_result2029.lcssa
  store i64 %mul_result2074, ptr %sunkaddr3611, align 8
  %sunkaddr3615 = getelementptr i8, ptr %0, i64 48
  %473 = load <2 x i64>, ptr %sunkaddr3615, align 8
  %474 = insertelement <2 x i64> <i64 poison, i64 -1478920565>, i64 %mul_result2013.lcssa, i64 0
  %475 = xor <2 x i64> %473, %474
  store <2 x i64> %475, ptr %sunkaddr3615, align 8
  %mul_result2090 = mul i64 %xor_const_result2044, %mul_result2013.lcssa
  %sunkaddr3616 = getelementptr i8, ptr %0, i64 40
  store i64 %mul_result2090, ptr %sunkaddr3616, align 8
  %xor_const_result2094 = xor i64 %xor_result2023.lcssa, 1476342230
  %476 = extractelement <2 x i64> %475, i64 0
  %sub_result2100 = sub i64 %mul_result2013.lcssa, %476
  %477 = extractelement <2 x i64> %475, i64 1
  %mul_result2106 = mul i64 %477, %xor_const_result2094
  %xor_const_result2110 = xor i64 %sub_result2100, -887879992
  %478 = insertelement <2 x i64> poison, i64 %xor_const_result2110, i64 0
  %479 = insertelement <2 x i64> %478, i64 %mul_result2106, i64 1
  store <2 x i64> %479, ptr %0, align 8
  %shifted2116 = shl i64 %mul_result2040, 3
  %add_shift_result2117 = add i64 %477, %shifted2116
  %mul_result2123 = mul i64 %mul_result2074, %umulh_result_642060
  store i64 %mul_result2123, ptr %sunkaddr3613, align 8
  %mul_result2129.peel = mul i64 %add_shift_result2117, %xor_const_result2110
  %480 = load <2 x i64>, ptr %sunkaddr3611, align 8
  %dst_val21392936.peel = extractelement <2 x i64> %480, i64 0
  %src_val21342937.peel = extractelement <2 x i64> %480, i64 1
  %shifted2135.peel = shl i64 %src_val21342937.peel, 2
  %add_shift_result2136.peel = add i64 %shifted2135.peel, %xor_const_result2110
  store i64 %add_shift_result2136.peel, ptr %0, align 8
  %xor_const_result2140.peel = xor i64 %dst_val21392936.peel, %const3437
  store i64 %xor_const_result2140.peel, ptr %sunkaddr3611, align 8
  %481 = load <2 x i64>, ptr %sunkaddr3611, align 8
  %dst_val21442940.peel = extractelement <2 x i64> %481, i64 0
  %src_val21452941.peel = extractelement <2 x i64> %481, i64 1
  %mul_result2146.peel = mul i64 %dst_val21442940.peel, %src_val21452941.peel
  store i64 %mul_result2146.peel, ptr %sunkaddr3611, align 8
  %xor_const_result2150.peel = xor i64 %476, %const3465
  %482 = load <2 x i64>, ptr %0, align 8
  %src_val21552938.peel = extractelement <2 x i64> %482, i64 0
  %dst_val21542939.peel = extractelement <2 x i64> %482, i64 1
  %shifted2156.peel = shl i64 %src_val21552938.peel, 1
  %add_shift_result2157.peel = add i64 %shifted2156.peel, %dst_val21542939.peel
  store i64 %add_shift_result2157.peel, ptr %sunkaddr3612, align 8
  %483 = load <2 x i64>, ptr %0, align 8
  %src_val21622942.peel = extractelement <2 x i64> %483, i64 0
  %mul_result2163.peel = mul i64 %src_val21622942.peel, %xor_const_result2150.peel
  %484 = load <2 x i64>, ptr %sunkaddr3613, align 8
  %dst_val21662944.peel = extractelement <2 x i64> %484, i64 0
  %xor_const_result2167.peel = xor i64 %dst_val21662944.peel, %const3443
  %485 = add <2 x i64> %484, %483
  %add_shift_result2174.peel = extractelement <2 x i64> %485, i64 1
  %dst_val_1282180.peel = zext i64 %xor_const_result2167.peel to i128
  %mul_result_1282182.peel = mul nuw i128 %dst_val_1282180.peel, %dst_val_1282180.peel
  %umulh_result2183.peel = lshr i128 %mul_result_1282182.peel, 64
  %umulh_result_642184.peel = trunc i128 %umulh_result2183.peel to i64
  %rotated2191.peel = tail call i64 @llvm.fshl.i64(i64 %add_shift_result2174.peel, i64 %add_shift_result2174.peel, i64 14)
  %486 = insertelement <2 x i64> poison, i64 %rotated2191.peel, i64 0
  %487 = insertelement <2 x i64> %486, i64 %umulh_result_642184.peel, i64 1
  store <2 x i64> %487, ptr %sunkaddr3612, align 8
  %488 = load <2 x i64>, ptr %0, align 8
  %src_val21962948.peel = extractelement <2 x i64> %488, i64 0
  %dst_val21952949.peel = extractelement <2 x i64> %488, i64 1
  %mul_result2197.peel = mul i64 %dst_val21952949.peel, %src_val21962948.peel
  store i64 %mul_result2197.peel, ptr %sunkaddr3612, align 8
  %xor_const_result2201.peel = xor i64 %mul_result2129.peel, %const3427
  %489 = extractelement <2 x i64> %484, i64 1
  %add_const_result2205.peel = add i64 %489, %const3449
  store i64 %add_const_result2205.peel, ptr %sunkaddr3610, align 8
  %mul_result2211.peel = mul i64 %src_val21962948.peel, %xor_const_result2201.peel
  %490 = and i128 %mul_result_1282182.peel, 19807054943239485596998041600
  %branch_condition2217.peel = icmp ne i128 %490, 0
  %or.cond3349.not.peel = select i1 %branch_taken2031.lcssa, i1 true, i1 %branch_condition2217.peel
  br i1 %or.cond3349.not.peel, label %continue_401, label %continue_401.loopexit

continue_401.loopexit:                            ; preds = %continue_369
  %sunkaddr3617 = getelementptr i8, ptr %0, i64 32
  %491 = load <2 x i64>, ptr %sunkaddr3617, align 8
  %dst_val21392936 = extractelement <2 x i64> %491, i64 0
  %src_val21342937 = extractelement <2 x i64> %491, i64 1
  %shifted2135 = shl i64 %src_val21342937, 2
  %add_shift_result2136 = add i64 %shifted2135, %src_val21962948.peel
  store i64 %add_shift_result2136, ptr %0, align 8
  %xor_const_result2140 = xor i64 %dst_val21392936, %const3437
  store i64 %xor_const_result2140, ptr %sunkaddr3617, align 8
  %492 = load <2 x i64>, ptr %sunkaddr3617, align 8
  %dst_val21442940 = extractelement <2 x i64> %492, i64 0
  %src_val21452941 = extractelement <2 x i64> %492, i64 1
  %mul_result2146 = mul i64 %dst_val21442940, %src_val21452941
  store i64 %mul_result2146, ptr %sunkaddr3617, align 8
  %493 = load <2 x i64>, ptr %0, align 8
  %src_val21552938 = extractelement <2 x i64> %493, i64 0
  %dst_val21542939 = extractelement <2 x i64> %493, i64 1
  %shifted2156 = shl i64 %src_val21552938, 1
  %add_shift_result2157 = add i64 %shifted2156, %dst_val21542939
  %sunkaddr3618 = getelementptr i8, ptr %0, i64 8
  store i64 %add_shift_result2157, ptr %sunkaddr3618, align 8
  %494 = load <2 x i64>, ptr %0, align 8
  %sunkaddr3619 = getelementptr i8, ptr %0, i64 16
  %495 = load <2 x i64>, ptr %sunkaddr3619, align 8
  %dst_val21662944 = extractelement <2 x i64> %495, i64 0
  %xor_const_result2167 = xor i64 %dst_val21662944, %const3443
  %496 = add <2 x i64> %495, %494
  %add_shift_result2174 = extractelement <2 x i64> %496, i64 1
  %dst_val_1282180 = zext i64 %xor_const_result2167 to i128
  %mul_result_1282182 = mul nuw i128 %dst_val_1282180, %dst_val_1282180
  %umulh_result2183 = lshr i128 %mul_result_1282182, 64
  %umulh_result_642184 = trunc i128 %umulh_result2183 to i64
  %rotated2191 = tail call i64 @llvm.fshl.i64(i64 %add_shift_result2174, i64 %add_shift_result2174, i64 14)
  %497 = insertelement <2 x i64> poison, i64 %rotated2191, i64 0
  %498 = insertelement <2 x i64> %497, i64 %umulh_result_642184, i64 1
  store <2 x i64> %498, ptr %sunkaddr3618, align 8
  %499 = load <2 x i64>, ptr %0, align 8
  %src_val21962948 = extractelement <2 x i64> %499, i64 0
  %dst_val21952949 = extractelement <2 x i64> %499, i64 1
  %mul_result2197 = mul i64 %dst_val21952949, %src_val21962948
  store i64 %mul_result2197, ptr %sunkaddr3618, align 8
  %500 = extractelement <2 x i64> %495, i64 1
  %add_const_result2205 = add i64 %500, %const3449
  %sunkaddr3620 = getelementptr i8, ptr %0, i64 24
  store i64 %add_const_result2205, ptr %sunkaddr3620, align 8
  %mul_result2129 = mul i64 %mul_result2211.peel, %src_val21962948.peel
  %xor_const_result2201 = xor i64 %mul_result2129, %const3427
  %mul_result2211 = mul i64 %src_val21962948, %xor_const_result2201
  %src_val21622942 = extractelement <2 x i64> %494, i64 0
  %xor_const_result2150 = xor i64 %mul_result2163.peel, %const3465
  %mul_result2163 = mul i64 %src_val21622942, %xor_const_result2150
  br label %continue_401

continue_401:                                     ; preds = %continue_401.loopexit, %continue_369
  %branch_taken2213.lcssa = phi i1 [ %branch_taken2031.lcssa, %continue_369 ], [ true, %continue_401.loopexit ]
  %mul_result2163.lcssa = phi i64 [ %mul_result2163.peel, %continue_369 ], [ %mul_result2163, %continue_401.loopexit ]
  %umulh_result_642184.lcssa = phi i64 [ %umulh_result_642184.peel, %continue_369 ], [ %umulh_result_642184, %continue_401.loopexit ]
  %src_val21962948.lcssa = phi i64 [ %src_val21962948.peel, %continue_369 ], [ %src_val21962948, %continue_401.loopexit ]
  %mul_result2211.lcssa = phi i64 [ %mul_result2211.peel, %continue_369 ], [ %mul_result2211, %continue_401.loopexit ]
  %const3460 = bitcast i64 -675106646 to i64
  %const3458 = bitcast i64 -700593286 to i64
  %const3435 = bitcast i64 1708672014 to i64
  %sunkaddr3621 = getelementptr i8, ptr %0, i64 48
  store i64 %mul_result2163.lcssa, ptr %sunkaddr3621, align 8
  %sunkaddr3622 = getelementptr i8, ptr %0, i64 24
  %501 = load <2 x i64>, ptr %sunkaddr3622, align 8
  %dst_val22202918 = extractelement <2 x i64> %501, i64 0
  %src_val22392919 = extractelement <2 x i64> %501, i64 1
  %sunkaddr3623 = getelementptr i8, ptr %0, i64 32
  %502 = load <2 x i64>, ptr %sunkaddr3623, align 8
  %dst_val22492920 = extractelement <2 x i64> %502, i64 0
  %src_val22212921 = extractelement <2 x i64> %502, i64 1
  %mul_result2222 = mul i64 %src_val22212921, %dst_val22202918
  store i64 %mul_result2222, ptr %sunkaddr3622, align 8
  %sunkaddr3624 = getelementptr i8, ptr %0, i64 40
  %503 = load <2 x i64>, ptr %sunkaddr3624, align 8
  %shift3370 = shufflevector <2 x i64> %503, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %504 = sub <2 x i64> %503, %shift3370
  %sub_result2228 = extractelement <2 x i64> %504, i64 0
  store i64 %sub_result2228, ptr %sunkaddr3624, align 8
  %505 = extractelement <2 x i64> %503, i64 1
  %xor_result2234 = xor i64 %505, %src_val21962948.lcssa
  store i64 %xor_result2234, ptr %0, align 8
  %dst_val_1282240 = sext i64 %505 to i128
  %src_val_1282241 = sext i64 %src_val22392919 to i128
  %mul_result_1282242 = mul nsw i128 %dst_val_1282240, %src_val_1282241
  %smulh_result2243 = lshr i128 %mul_result_1282242, 64
  %smulh_result_642244 = trunc i128 %smulh_result2243 to i64
  store i64 %smulh_result_642244, ptr %sunkaddr3621, align 8
  %shifted2251 = shl i64 %xor_result2234, 3
  %add_shift_result2252 = add i64 %shifted2251, %dst_val22492920
  store i64 %add_shift_result2252, ptr %sunkaddr3623, align 8
  %506 = load <2 x i64>, ptr %sunkaddr3623, align 8
  %dst_val22562928 = extractelement <2 x i64> %506, i64 0
  %dst_val22722929 = extractelement <2 x i64> %506, i64 1
  %mul_result2258 = mul i64 %dst_val22562928, %umulh_result_642184.lcssa
  %507 = load <2 x i64>, ptr %0, align 8
  %xor_const_result2268 = xor i64 %mul_result2211.lcssa, -29099099
  %sunkaddr3625 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_const_result2268, ptr %sunkaddr3625, align 8
  %sunkaddr3626 = getelementptr i8, ptr %0, i64 16
  %508 = load <2 x i64>, ptr %sunkaddr3626, align 8
  %dst_val22812926 = extractelement <2 x i64> %508, i64 0
  %src_val22732927 = extractelement <2 x i64> %508, i64 1
  %mul_result2274 = mul i64 %src_val22732927, %dst_val22722929
  %509 = insertelement <2 x i64> poison, i64 %mul_result2258, i64 0
  %510 = insertelement <2 x i64> %509, i64 %mul_result2274, i64 1
  store <2 x i64> %510, ptr %sunkaddr3623, align 8
  %511 = insertelement <2 x i64> <i64 poison, i64 -127660648>, i64 %umulh_result_642184.lcssa, i64 0
  %512 = xor <2 x i64> %507, %511
  store <2 x i64> %512, ptr %0, align 8
  %add_const_result2282 = add i64 %dst_val22812926, -2056568168
  store i64 %add_const_result2282, ptr %sunkaddr3626, align 8
  %sunkaddr3627 = getelementptr i8, ptr %0, i64 8
  %513 = load <2 x i64>, ptr %sunkaddr3627, align 8
  %dst_val22972932 = extractelement <2 x i64> %513, i64 0
  %src_val22872933 = extractelement <2 x i64> %513, i64 1
  %514 = extractelement <2 x i64> %512, i64 0
  %mul_result2288 = mul i64 %src_val22872933, %514
  store i64 %mul_result2288, ptr %0, align 8
  %515 = load <2 x i64>, ptr %sunkaddr3621, align 8
  %dst_val23022934 = extractelement <2 x i64> %515, i64 0
  %516 = xor <2 x i64> %515, %512
  %xor_result2294 = extractelement <2 x i64> %516, i64 1
  store i64 %xor_result2294, ptr %sunkaddr3625, align 8
  %add_const_result2298 = add i64 %dst_val22972932, -1090666698
  store i64 %add_const_result2298, ptr %sunkaddr3627, align 8
  %mul_result2304 = mul i64 %xor_result2294, %dst_val23022934
  store i64 %mul_result2304, ptr %sunkaddr3621, align 8
  %shifted2340 = shl i64 %xor_result2294, 3
  %src_val_1282362 = zext i64 %xor_result2294 to i128
  %517 = load <2 x i64>, ptr %sunkaddr3627, align 8
  %src_val23092904.peel = extractelement <2 x i64> %517, i64 0
  %dst_val23082905.peel = extractelement <2 x i64> %517, i64 1
  %mul_result2310.peel = mul i64 %dst_val23082905.peel, %src_val23092904.peel
  store i64 %mul_result2310.peel, ptr %sunkaddr3626, align 8
  %518 = load <2 x i64>, ptr %sunkaddr3622, align 8
  %src_val23212906.peel = extractelement <2 x i64> %518, i64 0
  %dst_val23132907.peel = extractelement <2 x i64> %518, i64 1
  %rotated2316.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val23132907.peel, i64 %dst_val23132907.peel, i64 24)
  %sub_result2322.peel = sub i64 %mul_result2274, %src_val23212906.peel
  %519 = load <2 x i64>, ptr %0, align 8
  %dst_val23312908.peel = extractelement <2 x i64> %519, i64 0
  %src_val23272909.peel = extractelement <2 x i64> %519, i64 1
  %mul_result2328.peel = mul i64 %src_val23272909.peel, %rotated2316.peel
  %520 = insertelement <2 x i64> poison, i64 %mul_result2328.peel, i64 0
  %521 = insertelement <2 x i64> %520, i64 %sub_result2322.peel, i64 1
  store <2 x i64> %521, ptr %sunkaddr3623, align 8
  %rotated2334.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val23312908.peel, i64 %dst_val23312908.peel, i64 32)
  %add_shift_result2341.peel = add i64 %src_val23272909.peel, %shifted2340
  %mul_result2347.peel = mul i64 %add_shift_result2341.peel, %src_val23212906.peel
  %xor_const_result2351.peel = xor i64 %rotated2334.peel, %const3460
  %522 = insertelement <2 x i64> poison, i64 %xor_const_result2351.peel, i64 0
  %523 = insertelement <2 x i64> %522, i64 %mul_result2347.peel, i64 1
  store <2 x i64> %523, ptr %0, align 8
  %524 = load <2 x i64>, ptr %sunkaddr3624, align 8
  %dst_val23542912.peel = extractelement <2 x i64> %524, i64 0
  %dst_val23592913.peel = extractelement <2 x i64> %524, i64 1
  %add_const_result2355.peel = add i64 %dst_val23542912.peel, %const3435
  %dst_val_1282361.peel = zext i64 %dst_val23592913.peel to i128
  %mul_result_1282363.peel = mul nuw i128 %dst_val_1282361.peel, %src_val_1282362
  %umulh_result2364.peel = lshr i128 %mul_result_1282363.peel, 64
  %umulh_result_642365.peel = trunc i128 %umulh_result2364.peel to i64
  %525 = insertelement <2 x i64> poison, i64 %add_const_result2355.peel, i64 0
  %526 = insertelement <2 x i64> %525, i64 %umulh_result_642365.peel, i64 1
  store <2 x i64> %526, ptr %sunkaddr3624, align 8
  %add_const_result2370.peel = add i64 %xor_const_result2351.peel, %const3458
  %mul_result2376.peel = mul i64 %add_const_result2370.peel, %src_val23212906.peel
  store i64 %mul_result2376.peel, ptr %0, align 8
  %527 = load <2 x i64>, ptr %sunkaddr3622, align 8
  %528 = add <2 x i64> %527, <i64 -495192780, i64 poison>
  %529 = xor <2 x i64> %527, <i64 poison, i64 -72287871>
  %530 = shufflevector <2 x i64> %528, <2 x i64> %529, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %530, ptr %sunkaddr3622, align 8
  %531 = extractelement <2 x i64> %528, i64 0
  %532 = extractelement <2 x i64> %529, i64 1
  %mul_result2390.peel = mul i64 %531, %532
  store i64 %mul_result2390.peel, ptr %sunkaddr3622, align 8
  %533 = and i128 %mul_result_1282363.peel, 1547425934550440881682382848
  %branch_condition2396.peel = icmp ne i128 %533, 0
  %or.cond3350.not.peel = select i1 %branch_taken2213.lcssa, i1 true, i1 %branch_condition2396.peel
  br i1 %or.cond3350.not.peel, label %continue_433, label %continue_433.loopexit

continue_433.loopexit:                            ; preds = %continue_401
  %534 = zext i64 %xor_result2294 to i128
  %sunkaddr3628 = getelementptr i8, ptr %0, i64 8
  %535 = load <2 x i64>, ptr %sunkaddr3628, align 8
  %src_val23092904 = extractelement <2 x i64> %535, i64 0
  %dst_val23082905 = extractelement <2 x i64> %535, i64 1
  %mul_result2310 = mul i64 %dst_val23082905, %src_val23092904
  %sunkaddr3629 = getelementptr i8, ptr %0, i64 16
  store i64 %mul_result2310, ptr %sunkaddr3629, align 8
  %sunkaddr3630 = getelementptr i8, ptr %0, i64 24
  %536 = load <2 x i64>, ptr %sunkaddr3630, align 8
  %src_val23212906 = extractelement <2 x i64> %536, i64 0
  %dst_val23132907 = extractelement <2 x i64> %536, i64 1
  %rotated2316 = tail call i64 @llvm.fshl.i64(i64 %dst_val23132907, i64 %dst_val23132907, i64 24)
  %sub_result2322 = sub i64 %add_const_result2355.peel, %src_val23212906
  %537 = load <2 x i64>, ptr %0, align 8
  %dst_val23312908 = extractelement <2 x i64> %537, i64 0
  %src_val23272909 = extractelement <2 x i64> %537, i64 1
  %mul_result2328 = mul i64 %src_val23272909, %rotated2316
  %538 = insertelement <2 x i64> poison, i64 %mul_result2328, i64 0
  %539 = insertelement <2 x i64> %538, i64 %sub_result2322, i64 1
  %sunkaddr3631 = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %539, ptr %sunkaddr3631, align 8
  %rotated2334 = tail call i64 @llvm.fshl.i64(i64 %dst_val23312908, i64 %dst_val23312908, i64 32)
  %add_shift_result2341 = add i64 %src_val23272909, %shifted2340
  %mul_result2347 = mul i64 %add_shift_result2341, %src_val23212906
  %xor_const_result2351 = xor i64 %rotated2334, %const3460
  %540 = insertelement <2 x i64> poison, i64 %xor_const_result2351, i64 0
  %541 = insertelement <2 x i64> %540, i64 %mul_result2347, i64 1
  store <2 x i64> %541, ptr %0, align 8
  %sunkaddr3632 = getelementptr i8, ptr %0, i64 40
  %542 = load <2 x i64>, ptr %sunkaddr3632, align 8
  %dst_val23542912 = extractelement <2 x i64> %542, i64 0
  %dst_val23592913 = extractelement <2 x i64> %542, i64 1
  %add_const_result2355 = add i64 %dst_val23542912, %const3435
  %dst_val_1282361 = zext i64 %dst_val23592913 to i128
  %mul_result_1282363 = mul nuw i128 %dst_val_1282361, %534
  %umulh_result2364 = lshr i128 %mul_result_1282363, 64
  %umulh_result_642365 = trunc i128 %umulh_result2364 to i64
  %543 = insertelement <2 x i64> poison, i64 %add_const_result2355, i64 0
  %544 = insertelement <2 x i64> %543, i64 %umulh_result_642365, i64 1
  store <2 x i64> %544, ptr %sunkaddr3632, align 8
  %add_const_result2370 = add i64 %xor_const_result2351, %const3458
  %mul_result2376 = mul i64 %add_const_result2370, %src_val23212906
  store i64 %mul_result2376, ptr %0, align 8
  %545 = load <2 x i64>, ptr %sunkaddr3630, align 8
  %546 = add <2 x i64> %545, <i64 -495192780, i64 poison>
  %547 = xor <2 x i64> %545, <i64 poison, i64 -72287871>
  %548 = shufflevector <2 x i64> %546, <2 x i64> %547, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %548, ptr %sunkaddr3630, align 8
  %549 = extractelement <2 x i64> %546, i64 0
  %550 = extractelement <2 x i64> %547, i64 1
  %mul_result2390 = mul i64 %549, %550
  br label %continue_433

continue_433:                                     ; preds = %continue_433.loopexit, %continue_401
  %branch_taken2392.lcssa = phi i1 [ %branch_taken2213.lcssa, %continue_401 ], [ true, %continue_433.loopexit ]
  %mul_result2390.lcssa = phi i64 [ %mul_result2390.peel, %continue_401 ], [ %mul_result2390, %continue_433.loopexit ]
  %const3431 = bitcast i64 1675575300 to i64
  %const3414 = bitcast i64 444540273 to i64
  %const = bitcast i64 99144357 to i64
  %sunkaddr3633 = getelementptr i8, ptr %0, i64 32
  %551 = load <2 x i64>, ptr %sunkaddr3633, align 8
  %dst_val24052894 = extractelement <2 x i64> %551, i64 0
  %dst_val23992895 = extractelement <2 x i64> %551, i64 1
  %552 = load <2 x i64>, ptr %0, align 8
  %src_val24002891 = extractelement <2 x i64> %552, i64 1
  %mul_result2401 = mul i64 %src_val24002891, %dst_val23992895
  %sunkaddr3634 = getelementptr i8, ptr %0, i64 48
  %553 = load <2 x i64>, ptr %sunkaddr3634, align 8
  %src_val24172896 = extractelement <2 x i64> %553, i64 0
  %src_val24062897 = extractelement <2 x i64> %553, i64 1
  %shifted2407 = shl i64 %src_val24062897, 2
  %add_shift_result2408 = add i64 %shifted2407, %dst_val24052894
  %554 = insertelement <2 x i64> poison, i64 %add_shift_result2408, i64 0
  %555 = insertelement <2 x i64> %554, i64 %mul_result2401, i64 1
  store <2 x i64> %555, ptr %sunkaddr3633, align 8
  %sunkaddr3635 = getelementptr i8, ptr %0, i64 8
  %556 = load <2 x i64>, ptr %sunkaddr3635, align 8
  %dst_val24162893 = extractelement <2 x i64> %556, i64 1
  %dst_val_1282418 = zext i64 %dst_val24162893 to i128
  %src_val_1282419 = zext i64 %src_val24172896 to i128
  %mul_result_1282420 = mul nuw i128 %dst_val_1282418, %src_val_1282419
  %umulh_result2421 = lshr i128 %mul_result_1282420, 64
  %umulh_result_642422 = trunc i128 %umulh_result2421 to i64
  %sunkaddr3636 = getelementptr i8, ptr %0, i64 16
  store i64 %umulh_result_642422, ptr %sunkaddr3636, align 8
  %557 = shufflevector <2 x i64> %552, <2 x i64> %556, <2 x i32> <i32 0, i32 2>
  %558 = xor <2 x i64> %557, <i64 -317616500, i64 738058690>
  store <2 x i64> %558, ptr %0, align 8
  %mul_result2433 = mul i64 %add_shift_result2408, %src_val24062897
  store i64 %mul_result2433, ptr %sunkaddr3633, align 8
  %xor_const_result2437 = xor i64 %src_val24062897, -471439597
  %sunkaddr3637 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_const_result2437, ptr %sunkaddr3637, align 8
  %559 = xor <2 x i64> %558, %553
  %xor_result2443 = extractelement <2 x i64> %559, i64 0
  %560 = load <2 x i64>, ptr %sunkaddr3634, align 8
  %dst_val24642902 = extractelement <2 x i64> %560, i64 0
  %dst_val24472903 = extractelement <2 x i64> %560, i64 1
  %mul_result2449 = mul i64 %dst_val24472903, %mul_result2390.lcssa
  %sunkaddr3638 = getelementptr i8, ptr %0, i64 40
  %561 = load <2 x i64>, ptr %sunkaddr3638, align 8
  %dst_val24592900 = extractelement <2 x i64> %561, i64 0
  %src_val24542901 = extractelement <2 x i64> %561, i64 1
  %shifted2455 = shl i64 %src_val24542901, 1
  %add_shift_result2456 = add i64 %shifted2455, %xor_result2443
  %add_const_result2460 = add i64 %dst_val24592900, 2044059647
  store i64 %add_const_result2460, ptr %sunkaddr3638, align 8
  %mul_result2466 = mul i64 %add_const_result2460, %dst_val24642902
  store i64 %mul_result2466, ptr %sunkaddr3634, align 8
  %xor_const_result2470 = xor i64 %add_shift_result2456, -1724190413
  %add_const_result2474 = add i64 %mul_result2390.lcssa, -1956640994
  %sunkaddr3639 = getelementptr i8, ptr %0, i64 24
  store i64 %add_const_result2474, ptr %sunkaddr3639, align 8
  %mul_result2480 = mul i64 %xor_const_result2470, %add_const_result2474
  store i64 %mul_result2480, ptr %0, align 8
  %562 = load <2 x i64>, ptr %sunkaddr3635, align 8
  %dst_val24842878.peel = extractelement <2 x i64> %562, i64 0
  %src_val24912879.peel = extractelement <2 x i64> %562, i64 1
  %mul_result2486.peel = mul i64 %dst_val24842878.peel, %add_const_result2474
  store i64 %mul_result2486.peel, ptr %sunkaddr3635, align 8
  %shifted2492.peel = shl i64 %src_val24912879.peel, 1
  %add_shift_result2493.peel = add i64 %shifted2492.peel, %mul_result2449
  store i64 %add_shift_result2493.peel, ptr %sunkaddr3637, align 8
  %563 = load <2 x i64>, ptr %sunkaddr3639, align 8
  %dst_val25012880.peel = extractelement <2 x i64> %563, i64 0
  %dst_val24962881.peel = extractelement <2 x i64> %563, i64 1
  %add_const_result2497.peel = add i64 %dst_val24962881.peel, %const
  %mul_result2503.peel = mul i64 %dst_val25012880.peel, %add_const_result2460
  %564 = insertelement <2 x i64> poison, i64 %mul_result2503.peel, i64 0
  %565 = insertelement <2 x i64> %564, i64 %add_const_result2497.peel, i64 1
  store <2 x i64> %565, ptr %sunkaddr3639, align 8
  %566 = load <2 x i64>, ptr %sunkaddr3634, align 8
  %dst_val25102882.peel = extractelement <2 x i64> %566, i64 0
  %rotated2513.peel = tail call i64 @llvm.fshl.i64(i64 %dst_val25102882.peel, i64 %dst_val25102882.peel, i64 40)
  %567 = load <2 x i64>, ptr %0, align 8
  %dst_val25332885.peel = extractelement <2 x i64> %567, i64 1
  %568 = shufflevector <2 x i64> %567, <2 x i64> %566, <2 x i32> <i32 0, i32 3>
  %569 = xor <2 x i64> %568, <i64 1382294161, i64 453411811>
  %570 = insertelement <2 x i64> %569, i64 %rotated2513.peel, i64 0
  store <2 x i64> %570, ptr %sunkaddr3634, align 8
  %571 = load <2 x i64>, ptr %sunkaddr3638, align 8
  %dst_val25272886.peel = extractelement <2 x i64> %571, i64 0
  %dst_val25172887.peel = extractelement <2 x i64> %571, i64 1
  %mul_result2519.peel = mul i64 %dst_val25172887.peel, %mul_result2480
  %xor_result2529.peel = xor i64 %dst_val25272886.peel, %src_val24912879.peel
  %572 = insertelement <2 x i64> poison, i64 %xor_result2529.peel, i64 0
  %573 = insertelement <2 x i64> %572, i64 %mul_result2519.peel, i64 1
  store <2 x i64> %573, ptr %sunkaddr3638, align 8
  %dst_val_1282535.peel = zext i64 %dst_val25332885.peel to i128
  %574 = extractelement <2 x i64> %569, i64 1
  %src_val_1282536.peel = zext i64 %574 to i128
  %mul_result_1282537.peel = mul nuw i128 %dst_val_1282535.peel, %src_val_1282536.peel
  %umulh_result2538.peel = lshr i128 %mul_result_1282537.peel, 64
  %umulh_result_642539.peel = trunc i128 %umulh_result2538.peel to i64
  %add_const_result2544.peel = add i64 %xor_result2529.peel, %const3431
  %mul_result2550.peel = mul i64 %add_const_result2497.peel, %mul_result2503.peel
  %575 = insertelement <2 x i64> poison, i64 %mul_result2550.peel, i64 0
  %576 = insertelement <2 x i64> %575, i64 %add_const_result2544.peel, i64 1
  store <2 x i64> %576, ptr %sunkaddr3633, align 8
  %577 = extractelement <2 x i64> %569, i64 0
  %sub_result2556.peel = sub i64 %577, %574
  %578 = insertelement <2 x i64> poison, i64 %sub_result2556.peel, i64 0
  %579 = insertelement <2 x i64> %578, i64 %umulh_result_642539.peel, i64 1
  store <2 x i64> %579, ptr %0, align 8
  %add_const_result2560.peel = add i64 %574, %const3414
  store i64 %add_const_result2560.peel, ptr %sunkaddr3637, align 8
  %mul_result2566.peel = mul i64 %sub_result2556.peel, %add_const_result2544.peel
  store i64 %mul_result2566.peel, ptr %sunkaddr3638, align 8
  %580 = and i128 %mul_result_1282537.peel, 29720251238871975109557485568
  %branch_condition2572.peel = icmp ne i128 %580, 0
  %or.cond3351.not.peel = select i1 %branch_taken2392.lcssa, i1 true, i1 %branch_condition2572.peel
  br i1 %or.cond3351.not.peel, label %continue_465, label %continue_465.loopexit

continue_465.loopexit:                            ; preds = %continue_433
  %sunkaddr3640 = getelementptr i8, ptr %0, i64 8
  %581 = load <2 x i64>, ptr %sunkaddr3640, align 8
  %dst_val24842878 = extractelement <2 x i64> %581, i64 0
  %src_val24912879 = extractelement <2 x i64> %581, i64 1
  %mul_result2486 = mul i64 %dst_val24842878, %mul_result2503.peel
  store i64 %mul_result2486, ptr %sunkaddr3640, align 8
  %shifted2492 = shl i64 %src_val24912879, 1
  %add_shift_result2493 = add i64 %shifted2492, %add_const_result2560.peel
  %sunkaddr3641 = getelementptr i8, ptr %0, i64 56
  store i64 %add_shift_result2493, ptr %sunkaddr3641, align 8
  %sunkaddr3642 = getelementptr i8, ptr %0, i64 24
  %582 = load <2 x i64>, ptr %sunkaddr3642, align 8
  %dst_val25012880 = extractelement <2 x i64> %582, i64 0
  %dst_val24962881 = extractelement <2 x i64> %582, i64 1
  %add_const_result2497 = add i64 %dst_val24962881, %const
  %mul_result2503 = mul i64 %dst_val25012880, %mul_result2566.peel
  %583 = insertelement <2 x i64> poison, i64 %mul_result2503, i64 0
  %584 = insertelement <2 x i64> %583, i64 %add_const_result2497, i64 1
  store <2 x i64> %584, ptr %sunkaddr3642, align 8
  %sunkaddr3643 = getelementptr i8, ptr %0, i64 48
  %585 = load <2 x i64>, ptr %sunkaddr3643, align 8
  %dst_val25102882 = extractelement <2 x i64> %585, i64 0
  %rotated2513 = tail call i64 @llvm.fshl.i64(i64 %dst_val25102882, i64 %dst_val25102882, i64 40)
  %586 = load <2 x i64>, ptr %0, align 8
  %dst_val25332885 = extractelement <2 x i64> %586, i64 1
  %587 = shufflevector <2 x i64> %586, <2 x i64> %585, <2 x i32> <i32 0, i32 3>
  %588 = xor <2 x i64> %587, <i64 1382294161, i64 453411811>
  %589 = insertelement <2 x i64> %588, i64 %rotated2513, i64 0
  store <2 x i64> %589, ptr %sunkaddr3643, align 8
  %sunkaddr3644 = getelementptr i8, ptr %0, i64 40
  %590 = load <2 x i64>, ptr %sunkaddr3644, align 8
  %dst_val25272886 = extractelement <2 x i64> %590, i64 0
  %dst_val25172887 = extractelement <2 x i64> %590, i64 1
  %mul_result2519 = mul i64 %dst_val25172887, %sub_result2556.peel
  %xor_result2529 = xor i64 %dst_val25272886, %src_val24912879
  %591 = insertelement <2 x i64> poison, i64 %xor_result2529, i64 0
  %592 = insertelement <2 x i64> %591, i64 %mul_result2519, i64 1
  store <2 x i64> %592, ptr %sunkaddr3644, align 8
  %dst_val_1282535 = zext i64 %dst_val25332885 to i128
  %593 = extractelement <2 x i64> %588, i64 1
  %src_val_1282536 = zext i64 %593 to i128
  %mul_result_1282537 = mul nuw i128 %dst_val_1282535, %src_val_1282536
  %umulh_result2538 = lshr i128 %mul_result_1282537, 64
  %umulh_result_642539 = trunc i128 %umulh_result2538 to i64
  %add_const_result2544 = add i64 %xor_result2529, %const3431
  %mul_result2550 = mul i64 %add_const_result2497, %mul_result2503
  %594 = insertelement <2 x i64> poison, i64 %mul_result2550, i64 0
  %595 = insertelement <2 x i64> %594, i64 %add_const_result2544, i64 1
  %sunkaddr3645 = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %595, ptr %sunkaddr3645, align 8
  %596 = extractelement <2 x i64> %588, i64 0
  %sub_result2556 = sub i64 %596, %593
  %597 = insertelement <2 x i64> poison, i64 %sub_result2556, i64 0
  %598 = insertelement <2 x i64> %597, i64 %umulh_result_642539, i64 1
  store <2 x i64> %598, ptr %0, align 8
  %add_const_result2560 = add i64 %593, %const3414
  store i64 %add_const_result2560, ptr %sunkaddr3641, align 8
  %mul_result2566 = mul i64 %sub_result2556, %add_const_result2544
  br label %continue_465

continue_465:                                     ; preds = %continue_465.loopexit, %continue_433
  %branch_taken2568.lcssa = phi i1 [ %branch_taken2392.lcssa, %continue_433 ], [ true, %continue_465.loopexit ]
  %src_val24912879.lcssa = phi i64 [ %src_val24912879.peel, %continue_433 ], [ %src_val24912879, %continue_465.loopexit ]
  %sub_result2556.lcssa = phi i64 [ %sub_result2556.peel, %continue_433 ], [ %sub_result2556, %continue_465.loopexit ]
  %mul_result2566.lcssa = phi i64 [ %mul_result2566.peel, %continue_433 ], [ %mul_result2566, %continue_465.loopexit ]
  %const3468 = bitcast i64 -18023591 to i64
  %const3446 = bitcast i64 -1619697906 to i64
  %const3428 = bitcast i64 1405900668 to i64
  %sunkaddr3646 = getelementptr i8, ptr %0, i64 48
  %599 = load <2 x i64>, ptr %sunkaddr3646, align 8
  %dst_val25802864 = extractelement <2 x i64> %599, i64 0
  %src_val25762865 = extractelement <2 x i64> %599, i64 1
  %mul_result2577 = mul i64 %src_val25762865, %sub_result2556.lcssa
  %xor_const_result2581 = xor i64 %dst_val25802864, 1023934078
  store i64 %xor_const_result2581, ptr %sunkaddr3646, align 8
  %add_shift_result2588 = add i64 %src_val25762865, %src_val24912879.lcssa
  %sunkaddr3647 = getelementptr i8, ptr %0, i64 16
  store i64 %add_shift_result2588, ptr %sunkaddr3647, align 8
  %600 = load <2 x i64>, ptr %sunkaddr3646, align 8
  %dst_val25922868 = extractelement <2 x i64> %600, i64 0
  %src_val26042869 = extractelement <2 x i64> %600, i64 1
  %sunkaddr3648 = getelementptr i8, ptr %0, i64 24
  %601 = load <2 x i64>, ptr %sunkaddr3648, align 8
  %src_val25932866 = extractelement <2 x i64> %601, i64 0
  %dst_val26032867 = extractelement <2 x i64> %601, i64 1
  %dst_val_1282594 = sext i64 %dst_val25922868 to i128
  %src_val_1282595 = sext i64 %src_val25932866 to i128
  %mul_result_1282596 = mul nsw i128 %src_val_1282595, %dst_val_1282594
  %smulh_result2597 = lshr i128 %mul_result_1282596, 64
  %smulh_result_642598 = trunc i128 %smulh_result2597 to i64
  store i64 %smulh_result_642598, ptr %sunkaddr3646, align 8
  %shifted2605 = shl i64 %src_val26042869, 2
  %add_shift_result2606 = add i64 %dst_val26032867, %shifted2605
  %sunkaddr3649 = getelementptr i8, ptr %0, i64 32
  store i64 %add_shift_result2606, ptr %sunkaddr3649, align 8
  %602 = load <2 x i64>, ptr %sunkaddr3648, align 8
  %src_val26112870 = extractelement <2 x i64> %602, i64 0
  %dst_val26102871 = extractelement <2 x i64> %602, i64 1
  %mul_result2612 = mul i64 %dst_val26102871, %src_val26112870
  %rotated2618 = tail call i64 @llvm.fshl.i64(i64 %mul_result2566.lcssa, i64 %mul_result2566.lcssa, i64 14)
  %603 = insertelement <2 x i64> poison, i64 %mul_result2612, i64 0
  %604 = insertelement <2 x i64> %603, i64 %rotated2618, i64 1
  store <2 x i64> %604, ptr %sunkaddr3649, align 8
  %xor_const_result2622 = xor i64 %src_val26042869, 795136315
  %mul_result2628 = mul i64 %xor_const_result2622, %rotated2618
  %sunkaddr3650 = getelementptr i8, ptr %0, i64 40
  store i64 %mul_result2628, ptr %sunkaddr3650, align 8
  %sunkaddr3651 = getelementptr i8, ptr %0, i64 8
  %605 = load <2 x i64>, ptr %sunkaddr3651, align 8
  %src_val26392872 = extractelement <2 x i64> %605, i64 0
  %dst_val26312873 = extractelement <2 x i64> %605, i64 1
  %rotated2634 = tail call i64 @llvm.fshl.i64(i64 %dst_val26312873, i64 %dst_val26312873, i64 62)
  %shifted2640 = shl i64 %src_val26392872, 2
  %add_shift_result2641 = add i64 %shifted2640, %src_val26112870
  %606 = insertelement <2 x i64> poison, i64 %rotated2634, i64 0
  %607 = insertelement <2 x i64> %606, i64 %add_shift_result2641, i64 1
  store <2 x i64> %607, ptr %sunkaddr3647, align 8
  %mul_result2647 = mul i64 %add_shift_result2641, %xor_const_result2622
  store i64 %mul_result2647, ptr %sunkaddr3648, align 8
  %608 = load <2 x i64>, ptr %sunkaddr3651, align 8
  %dst_val26502874 = extractelement <2 x i64> %608, i64 0
  %src_val26582875 = extractelement <2 x i64> %608, i64 1
  %rotated2653 = tail call i64 @llvm.fshl.i64(i64 %dst_val26502874, i64 %dst_val26502874, i64 54)
  store i64 %rotated2653, ptr %sunkaddr3651, align 8
  %xor_result2659 = xor i64 %src_val26582875, %xor_const_result2622
  %609 = load <2 x i64>, ptr %sunkaddr3651, align 8
  %dst_val26632876 = extractelement <2 x i64> %609, i64 0
  %src_val26642877 = extractelement <2 x i64> %609, i64 1
  %mul_result2665 = mul i64 %dst_val26632876, %src_val26642877
  store i64 %mul_result2665, ptr %sunkaddr3651, align 8
  %610 = load <2 x i64>, ptr %sunkaddr3650, align 8
  %dst_val26692857.peel = extractelement <2 x i64> %610, i64 1
  %mul_result2671.peel = mul i64 %dst_val26692857.peel, %src_val26642877
  %611 = load <2 x i64>, ptr %sunkaddr3649, align 8
  %src_val26862855.peel = extractelement <2 x i64> %611, i64 1
  %add_const_result2681.peel = add i64 %src_val26642877, %const3468
  %mul_result2687.peel = mul i64 %src_val26862855.peel, %xor_result2659
  %612 = insertelement <2 x i64> poison, i64 %mul_result2671.peel, i64 0
  %613 = insertelement <2 x i64> %612, i64 %mul_result2687.peel, i64 1
  store <2 x i64> %613, ptr %sunkaddr3646, align 8
  %614 = shufflevector <2 x i64> %611, <2 x i64> %610, <2 x i32> <i32 0, i32 2>
  %615 = shufflevector <2 x i64> %609, <2 x i64> <i64 poison, i64 -508479878>, <2 x i32> <i32 1, i32 3>
  %616 = xor <2 x i64> %614, %615
  %617 = add <2 x i64> %614, %615
  %618 = shufflevector <2 x i64> %616, <2 x i64> %617, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %618, ptr %sunkaddr3649, align 8
  %rotated2697.peel = tail call i64 @llvm.fshl.i64(i64 %mul_result2577, i64 %mul_result2577, i64 22)
  store i64 %rotated2697.peel, ptr %0, align 8
  %619 = load <2 x i64>, ptr %0, align 8
  %dst_val27012858.peel = extractelement <2 x i64> %619, i64 0
  %dst_val27072859.peel = extractelement <2 x i64> %619, i64 1
  %620 = extractelement <2 x i64> %616, i64 0
  %mul_result2703.peel = mul i64 %dst_val27012858.peel, %620
  %621 = extractelement <2 x i64> %617, i64 1
  %shifted2709.peel = shl i64 %621, 1
  %add_shift_result2710.peel = add i64 %dst_val27072859.peel, %shifted2709.peel
  %622 = insertelement <2 x i64> poison, i64 %mul_result2703.peel, i64 0
  %623 = insertelement <2 x i64> %622, i64 %add_shift_result2710.peel, i64 1
  store <2 x i64> %623, ptr %0, align 8
  %xor_const_result2714.peel = xor i64 %620, %const3428
  store i64 %xor_const_result2714.peel, ptr %sunkaddr3649, align 8
  %624 = bitcast <2 x i64> %613 to i128
  %dst_val_1282720.peel = and i128 %624, 18446744073709551615
  %mul_result_1282722.peel = mul nuw i128 %dst_val_1282720.peel, %dst_val_1282720.peel
  %umulh_result2723.peel = lshr i128 %mul_result_1282722.peel, 64
  %umulh_result_642724.peel = trunc i128 %umulh_result2723.peel to i64
  store i64 %umulh_result_642724.peel, ptr %sunkaddr3646, align 8
  %625 = load <2 x i64>, ptr %sunkaddr3649, align 8
  %shift3371.peel = shufflevector <2 x i64> %625, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %626 = sub <2 x i64> %625, %shift3371.peel
  %sub_result2731.peel = extractelement <2 x i64> %626, i64 0
  %627 = extractelement <2 x i64> %625, i64 1
  %mul_result2737.peel = mul i64 %627, %mul_result2687.peel
  %sub_result2743.peel = sub i64 %add_const_result2681.peel, %sub_result2731.peel
  %xor_const_result2747.peel = xor i64 %sub_result2731.peel, %const3446
  %628 = insertelement <2 x i64> poison, i64 %xor_const_result2747.peel, i64 0
  %629 = insertelement <2 x i64> %628, i64 %mul_result2737.peel, i64 1
  store <2 x i64> %629, ptr %sunkaddr3649, align 8
  %mul_result2753.peel = mul i64 %xor_const_result2747.peel, %add_shift_result2710.peel
  store i64 %mul_result2753.peel, ptr %sunkaddr3649, align 8
  %630 = and i128 %mul_result_1282722.peel, 3094851573952976584011939840
  %branch_condition2759.peel = icmp ne i128 %630, 0
  %or.cond3352.peel.not = select i1 %branch_taken2568.lcssa, i1 true, i1 %branch_condition2759.peel
  br i1 %or.cond3352.peel.not, label %continue_497, label %continue_497.loopexit

continue_497.loopexit:                            ; preds = %continue_465
  %sunkaddr3652 = getelementptr i8, ptr %0, i64 40
  %631 = load <2 x i64>, ptr %sunkaddr3652, align 8
  %dst_val26692857 = extractelement <2 x i64> %631, i64 1
  %mul_result2671 = mul i64 %dst_val26692857, %sub_result2743.peel
  %sunkaddr3653 = getelementptr i8, ptr %0, i64 32
  %632 = load <2 x i64>, ptr %sunkaddr3653, align 8
  %src_val26862855 = extractelement <2 x i64> %632, i64 1
  %mul_result2687 = mul i64 %src_val26862855, %mul_result2687.peel
  %633 = insertelement <2 x i64> poison, i64 %mul_result2671, i64 0
  %634 = insertelement <2 x i64> %633, i64 %mul_result2687, i64 1
  %sunkaddr3654 = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %634, ptr %sunkaddr3654, align 8
  %635 = shufflevector <2 x i64> %632, <2 x i64> %631, <2 x i32> <i32 0, i32 2>
  %636 = insertelement <2 x i64> <i64 poison, i64 -508479878>, i64 %sub_result2743.peel, i64 0
  %637 = xor <2 x i64> %635, %636
  %638 = add <2 x i64> %635, %636
  %639 = shufflevector <2 x i64> %637, <2 x i64> %638, <2 x i32> <i32 0, i32 3>
  store <2 x i64> %639, ptr %sunkaddr3653, align 8
  %rotated2697 = tail call i64 @llvm.fshl.i64(i64 %mul_result2703.peel, i64 %mul_result2703.peel, i64 22)
  store i64 %rotated2697, ptr %0, align 8
  %640 = load <2 x i64>, ptr %0, align 8
  %dst_val27012858 = extractelement <2 x i64> %640, i64 0
  %dst_val27072859 = extractelement <2 x i64> %640, i64 1
  %641 = extractelement <2 x i64> %637, i64 0
  %mul_result2703 = mul i64 %dst_val27012858, %641
  %642 = extractelement <2 x i64> %638, i64 1
  %shifted2709 = shl i64 %642, 1
  %add_shift_result2710 = add i64 %dst_val27072859, %shifted2709
  %xor_const_result2714 = xor i64 %641, %const3428
  store i64 %xor_const_result2714, ptr %sunkaddr3653, align 8
  %643 = bitcast <2 x i64> %634 to i128
  %dst_val_1282720 = and i128 %643, 18446744073709551615
  %mul_result_1282722 = mul nuw i128 %dst_val_1282720, %dst_val_1282720
  %umulh_result2723 = lshr i128 %mul_result_1282722, 64
  %umulh_result_642724 = trunc i128 %umulh_result2723 to i64
  store i64 %umulh_result_642724, ptr %sunkaddr3654, align 8
  %644 = load <2 x i64>, ptr %sunkaddr3653, align 8
  %shift3371 = shufflevector <2 x i64> %644, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %645 = sub <2 x i64> %644, %shift3371
  %sub_result2731 = extractelement <2 x i64> %645, i64 0
  %646 = extractelement <2 x i64> %644, i64 1
  %mul_result2737 = mul i64 %646, %mul_result2687
  %xor_const_result2747 = xor i64 %sub_result2731, %const3446
  %mul_result2753 = mul i64 %xor_const_result2747, %add_shift_result2710
  store i64 %mul_result2753, ptr %sunkaddr3653, align 8
  %add_const_result2681 = add i64 %sub_result2743.peel, %const3468
  %sub_result2743 = sub i64 %add_const_result2681, %sub_result2731
  br label %continue_497

continue_497:                                     ; preds = %continue_497.loopexit, %continue_465
  %mul_result2687.lcssa = phi i64 [ %mul_result2687.peel, %continue_465 ], [ %mul_result2687, %continue_497.loopexit ]
  %mul_result2703.lcssa = phi i64 [ %mul_result2703.peel, %continue_465 ], [ %mul_result2703, %continue_497.loopexit ]
  %add_shift_result2710.lcssa = phi i64 [ %add_shift_result2710.peel, %continue_465 ], [ %add_shift_result2710, %continue_497.loopexit ]
  %umulh_result_642724.lcssa = phi i64 [ %umulh_result_642724.peel, %continue_465 ], [ %umulh_result_642724, %continue_497.loopexit ]
  %mul_result2737.lcssa = phi i64 [ %mul_result2737.peel, %continue_465 ], [ %mul_result2737, %continue_497.loopexit ]
  %sub_result2743.lcssa = phi i64 [ %sub_result2743.peel, %continue_465 ], [ %sub_result2743, %continue_497.loopexit ]
  %sunkaddr3655 = getelementptr i8, ptr %0, i64 16
  store i64 %sub_result2743.lcssa, ptr %sunkaddr3655, align 8
  %mul_result2764 = mul i64 %add_shift_result2710.lcssa, %mul_result2703.lcssa
  %sunkaddr3656 = getelementptr i8, ptr %0, i64 8
  store i64 %mul_result2764, ptr %sunkaddr3656, align 8
  %647 = load <2 x i64>, ptr %sunkaddr3655, align 8
  %dst_val27742846 = extractelement <2 x i64> %647, i64 0
  %dst_val27682847 = extractelement <2 x i64> %647, i64 1
  %xor_result2770 = xor i64 %dst_val27682847, %dst_val27742846
  %shifted2776 = shl i64 %mul_result2687.lcssa, 1
  %add_shift_result2777 = add i64 %dst_val27742846, %shifted2776
  %dst_val_1282783 = zext i64 %xor_result2770 to i128
  %src_val_1282784 = zext i64 %mul_result2737.lcssa to i128
  %mul_result_1282785 = mul nuw i128 %dst_val_1282783, %src_val_1282784
  %umulh_result2786 = lshr i128 %mul_result_1282785, 64
  %umulh_result_642787 = trunc i128 %umulh_result2786 to i64
  %648 = insertelement <2 x i64> poison, i64 %add_shift_result2777, i64 0
  %649 = insertelement <2 x i64> %648, i64 %umulh_result_642787, i64 1
  store <2 x i64> %649, ptr %sunkaddr3655, align 8
  %rotated2794 = tail call i64 @llvm.fshl.i64(i64 %mul_result2737.lcssa, i64 %mul_result2737.lcssa, i64 61)
  %sunkaddr3657 = getelementptr i8, ptr %0, i64 40
  store i64 %rotated2794, ptr %sunkaddr3657, align 8
  %sunkaddr3658 = getelementptr i8, ptr %0, i64 32
  %650 = load <2 x i64>, ptr %sunkaddr3658, align 8
  %dst_val28192848 = extractelement <2 x i64> %650, i64 0
  %dst_val27982849 = extractelement <2 x i64> %650, i64 1
  %mul_result2800 = mul i64 %dst_val27982849, %dst_val28192848
  %xor_result2806 = xor i64 %add_shift_result2777, %mul_result2703.lcssa
  store i64 %xor_result2806, ptr %0, align 8
  %xor_const_result2810 = xor i64 %mul_result2687.lcssa, -943008173
  %sunkaddr3659 = getelementptr i8, ptr %0, i64 56
  store i64 %xor_const_result2810, ptr %sunkaddr3659, align 8
  %mul_result2816 = mul i64 %dst_val28192848, %add_shift_result2777
  store i64 %mul_result2816, ptr %sunkaddr3655, align 8
  %rotated2822 = tail call i64 @llvm.fshl.i64(i64 %dst_val28192848, i64 %dst_val28192848, i64 24)
  %651 = insertelement <2 x i64> poison, i64 %rotated2822, i64 0
  %652 = insertelement <2 x i64> %651, i64 %mul_result2800, i64 1
  store <2 x i64> %652, ptr %sunkaddr3658, align 8
  %653 = load <2 x i64>, ptr %0, align 8
  %dst_val28252850 = extractelement <2 x i64> %653, i64 0
  %xor_const_result2826 = xor i64 %dst_val28252850, 416956862
  %mul_result2832 = mul i64 %rotated2822, %umulh_result_642724.lcssa
  store i64 %mul_result2832, ptr %sunkaddr3658, align 8
  %sunkaddr3660 = getelementptr i8, ptr %0, i64 48
  %654 = load <2 x i64>, ptr %sunkaddr3660, align 8
  %dst_val28352852 = extractelement <2 x i64> %654, i64 0
  %xor_const_result2836 = xor i64 %dst_val28352852, 883861089
  store i64 %xor_const_result2836, ptr %sunkaddr3660, align 8
  %655 = xor <2 x i64> %654, %653
  %656 = insertelement <2 x i64> %655, i64 %xor_const_result2826, i64 0
  store <2 x i64> %656, ptr %0, align 8
  ret void
}

// Assuming these lines are within a valid context like a function or a block
let module_id = "hashx_module";
let function_module_id = "hashx_module";

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %2) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
[package]
name = "my_project"
version = "0.1.0"
edition = "2021"

[dependencies]