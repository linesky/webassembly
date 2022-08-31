(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "ram2value" (func $ram2value))
 (func $ram2value (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.gt_u
      (tee_local $0
       (i32.add
        (tee_local $3
         (i32.add
          (i32.shl
           (get_local $0)
           (i32.const 1)
          )
          (get_local $3)
         )
        )
        (i32.const -1)
       )
      )
      (i32.const 1024)
     )
    )
    (set_local $3
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 2)
      )
      (i32.const 16)
     )
    )
    (br_if $label$0
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.store
     (get_local $3)
     (get_local $2)
    )
    (return
     (get_local $2)
    )
   )
   (return
    (i32.shl
     (i32.eqz
      (get_local $3)
     )
     (i32.const 9)
    )
   )
  )
  (i32.load
   (get_local $3)
  )
 )
)
