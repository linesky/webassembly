(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (export "memory" (memory $0))
 (export "scores" (func $scores))
 (func $scores (; 0 ;) (param $0 i32) (result i32)
  (i32.store offset=12
   (i32.const 0)
   (tee_local $0
    (i32.add
     (i32.load offset=12
      (i32.const 0)
     )
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
)
