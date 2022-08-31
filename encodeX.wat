(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) "\05\00\00\00\07\00\00\00\t\00\00\00\03\00\00\00G\00\00\00\n\00\00\00\n\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\02\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\0f\00\00\00\10\00\00\00")
 (export "memory" (memory $0))
 (export "encodeX" (func $encodeX))
 (func $encodeX (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const -1)
  )
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (get_local $0)
     (i32.const 15)
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 2)
      )
      (i32.const 16)
     )
    )
   )
  )
  (get_local $1)
 )
)
