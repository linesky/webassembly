(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00")
 (export "memory" (memory $0))
 (export "stacks" (func $stacks))
 (func $stacks (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (get_local $1)
       (i32.const 2)
      )
     )
     (br_if $label$0
      (i32.eq
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.const 0)
     )
     (br_if $label$1
      (get_local $1)
     )
     (set_local $2
      (i32.const -1)
     )
     (br_if $label$1
      (i32.gt_s
       (tee_local $1
        (i32.load offset=12
         (i32.const 0)
        )
       )
       (i32.const 511)
      )
     )
     (i32.store offset=12
      (i32.const 0)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (i32.shl
        (get_local $1)
        (i32.const 2)
       )
       (i32.const 16)
      )
      (get_local $0)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $2
     (i32.load
      (i32.add
       (i32.shl
        (i32.load offset=12
         (i32.const 0)
        )
        (i32.const 2)
       )
       (i32.const 16)
      )
     )
    )
   )
   (return
    (get_local $2)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_s
     (tee_local $1
      (i32.load offset=12
       (i32.const 0)
      )
     )
     (i32.const 1)
    )
   )
   (i32.store offset=12
    (i32.const 0)
    (tee_local $1
     (i32.add
      (get_local $1)
      (i32.const -1)
     )
    )
   )
   (return
    (i32.load
     (i32.add
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
      (i32.const 16)
     )
    )
   )
  )
  (i32.const -1)
 )
)
