@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %c = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703602), i8 addrspace(1)** %c
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475918266823271), i8 addrspace(1)** %c
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475918266823271), i8 addrspace(1)** %c
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038128226), i8 addrspace(1)** %c
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %c, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %6), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/const1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 4, scope: !5)
