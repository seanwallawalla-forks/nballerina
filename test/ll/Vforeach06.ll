@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %32, label %9
9:
  store i64 6, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp slt i64 %11, 10
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  br i1 %13, label %21, label %14
14:
  %15 = zext i1 0 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
18:
  %19 = load i64, i64* %i
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %i
  br label %10
21:
  %22 = load i64, i64* %i
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %24 = load i64, i64* %i
  %25 = icmp eq i64 %24, 6
  store i1 %25, i1* %3
  %26 = load i1, i1* %3
  br i1 %26, label %27, label %28
27:
  br label %18
28:
  %29 = zext i1 1 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
32:
  call void @_bal_panic(i64 772)
  unreachable
}
