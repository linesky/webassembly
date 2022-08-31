(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "power" (func $power))
 (func $power (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)
     (i32.const 1)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.ne
      (get_local $1)
      (i32.const 1)
     )
    )
    (return
     (get_local $0)
    )
   )
   (set_local $2
    (i32.add
     (get_local $1)
     (i32.const -1)
    )
   )
   (set_local $1
    (i32.const 0)
   )
   (set_local $3
    (get_local $0)
   )
   (loop $label$2
    (set_local $3
     (i32.mul
      (get_local $3)
      (get_local $0)
     )
    )
    (br_if $label$2
     (i32.lt_s
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (get_local $3)
 )
)
