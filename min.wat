(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "min" (func $min))
 (func $min (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (select
   (get_local $1)
   (get_local $0)
   (i32.lt_s
    (get_local $1)
    (get_local $0)
   )
  )
 )
)
