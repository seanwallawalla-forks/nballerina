@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"may not reach\00\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 19, i16 19, [20 x i8] c"failed successfully\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %25, label %10
10:
  %11 = call i8 addrspace(1)* @_B_newError(), !dbg !10
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1, !dbg !10
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 792633534417207296
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %20, label %18
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %19, i8 addrspace(1)** %4
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !11
  ret void
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %22, i8 addrspace(1)** %6
  br label %23
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
define internal i8 addrspace(1)* @_B_newError() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i64 8), !dbg !12
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1, !dbg !12
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check06-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"newError", linkageName:"_B_newError", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
