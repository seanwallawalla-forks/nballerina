%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32, i64, [1 x i64]} {i32 0, i32 1, i64 1, [1 x i64] [i64 5]}
@_Be04root0 = constant i32 0
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x {i8 addrspace(1)*, i32}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 1, [1 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i32 2}]}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x {i8 addrspace(1)*, i32}]}* @.subtype0 to %UniformSubtype*)]}
declare i1 @_bal_record_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
