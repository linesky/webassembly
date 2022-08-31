(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) "hello world...\n\00")
 (export "memory" (memory $0))
 (export "eeppromX" (func $eeppromX))
 (func $eeppromX (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (block $label$0
   (br_if $label$0
    (i32.gt_u
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const -1)
      )
     )
     (i32.const 14)
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
  (select
   (i32.const 0)
   (i32.const 15)
   (get_local $0)
  )
 )
)
