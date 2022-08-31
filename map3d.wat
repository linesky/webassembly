(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) " \n*\n \n*\n \n*\n \n*\n\00")
 (export "memory" (memory $0))
 (export "map3d" (func $map3d))
 (func $map3d (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $1
      (i32.add
       (tee_local $0
        (i32.add
         (i32.add
          (i32.shl
           (get_local $1)
           (i32.const 1)
          )
          (get_local $0)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (i32.const -3)
      )
     )
     (i32.const 15)
    )
   )
   (return
    (i32.load8_s
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
   )
  )
  (i32.shl
   (i32.lt_u
    (get_local $0)
    (i32.const 3)
   )
   (i32.const 1)
  )
 )
)
