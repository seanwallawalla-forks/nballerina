@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %29, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %14 = call i64 @_B_foo(i8 addrspace(1)* %13)
  store i64 %14, i64* %1
  %15 = load i64, i64* %1
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %18 = call i64 @_B_foo(i8 addrspace(1)* %17)
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %22 = call i64 @_B_foo(i8 addrspace(1)* %21)
  store i64 %22, i64* %5
  %23 = load i64, i64* %5
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %26 = call i64 @_B_foo(i8 addrspace(1)* %25)
  store i64 %26, i64* %7
  %27 = load i64, i64* %7
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
define i64 @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %x.1 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  br i1 %15, label %36, label %39
clause.0:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  store i64 %17, i64* %x.1
  %18 = load i64, i64* %x.1
  %19 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %45, label %42
pattern.0:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 504403158265495552
  br i1 %25, label %47, label %50
pattern.1:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 504403158265495552
  br i1 %30, label %53, label %56
pattern.2:
  br label %31
31:
  ret i64 -1
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  %38 = icmp eq i64 %37, 1
  store i1 %38, i1* %2
  br label %40
39:
  store i1 0, i1* %2
  br label %40
40:
  %41 = load i1, i1* %2
  br i1 %41, label %clause.0, label %pattern.0
42:
  %43 = extractvalue {i64, i1} %19, 0
  store i64 %43, i64* %5
  %44 = load i64, i64* %5
  ret i64 %44
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %32
47:
  %48 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  %49 = icmp eq i64 %48, 2
  store i1 %49, i1* %3
  br label %51
50:
  store i1 0, i1* %3
  br label %51
51:
  %52 = load i1, i1* %3
  br i1 %52, label %clause.0, label %pattern.1
53:
  %54 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  %55 = icmp eq i64 %54, 3
  store i1 %55, i1* %4
  br label %57
56:
  store i1 0, i1* %4
  br label %57
57:
  %58 = load i1, i1* %4
  br i1 %58, label %clause.0, label %pattern.2
}
