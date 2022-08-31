(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "floatEmulator" (func $floatEmulator))
 (func $floatEmulator (; 0 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (get_local $2)
      (i32.const 3)
     )
    )
    (set_local $1
     (i32.div_s
      (get_local $0)
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (set_local $1
    (select
     (i32.mul
      (get_local $1)
      (get_local $0)
     )
     (select
      (i32.sub
       (get_local $0)
       (get_local $1)
      )
      (select
       (i32.const 0)
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (get_local $2)
      )
      (i32.eq
       (get_local $2)
       (i32.const 1)
      )
     )
     (i32.eq
      (get_local $2)
      (i32.const 2)
     )
    )
   )
  )
  (select
   (i32.div_s
    (get_local $0)
    (i32.const 1000)
   )
   (select
    (i32.mul
     (get_local $0)
     (i32.const 1000)
    )
    (get_local $1)
    (i32.eq
     (get_local $2)
     (i32.const 4)
    )
   )
   (i32.eq
    (get_local $2)
    (i32.const 5)
   )
  )
 )
)
