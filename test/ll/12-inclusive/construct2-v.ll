@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_tagged_clear_exact_any(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %27, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %11)
  %12 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %12)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %13)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %r
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)** %s
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %17 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %16, i8 addrspace(1)* %15)
  %18 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  %20 = call i8 addrspace(1)* @_bal_tagged_clear_exact_any(i8 addrspace(1)* %19), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)** %s
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %23 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %22, i8 addrspace(1)* %21)
  %24 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %22, i8 addrspace(1)* %23)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !9
  %26 = call i8 addrspace(1)* @_bal_tagged_clear_exact_any(i8 addrspace(1)* %25), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/construct2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
