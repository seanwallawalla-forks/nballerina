@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [5 x i8] c"1.00\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i64 @_bal_decimal_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0) !dbg !5 {
  %d = alloca i8 addrspace(1)*
  %2 = alloca i1
  %d.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %d.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %26, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %d
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %10 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  %11 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %9, i8 addrspace(1)* %10)
  %12 = icmp eq i64 %11, 0
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %21
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  store i8 addrspace(1)* %15, i8 addrspace(1)** %d.1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %d.1
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  %18 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  %19 = extractvalue {i8 addrspace(1)*, i64} %18, 1
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %28
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  store i8 addrspace(1)* %22, i8 addrspace(1)** %d.2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %d.2
  ret i8 addrspace(1)* %23
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
28:
  %29 = extractvalue {i8 addrspace(1)*, i64} %18, 0
  store i8 addrspace(1)* %29, i8 addrspace(1)** %3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %30
31:
  %32 = or i64 %19, 1536
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 %32), !dbg !9
  store i8 addrspace(1)* %33, i8 addrspace(1)** %4
  br label %24
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec1 to i8*)), !dbg !11
  %8 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %7), !dbg !11
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !11
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-singleton/decimal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 12, column: 15, scope: !7)
!12 = !DILocation(line: 12, column: 4, scope: !7)