@_Bi04root0 = constant {i32, i32, i64, [3 x i64]} {i32 0, i32 3, i64 1, [3 x i64] [i64 5, i64 513, i64 257]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
