; Load everything (for interactive use)
; $Id: load-all-bigloo.scm,v 4.50 2005/02/12 00:04:17 oleg Exp $
(module kanren
  (include "lib/bigloo-specific.scm")
  (include "lib/kanren.ss")

  (include "examples/type-inference.scm")
  (include "examples/typeclasses.scm")
  (include "examples/zebra.scm")
  (include "examples/mirror.scm")
  (include "examples/mirror-equ.scm")
  (include "examples/deduction.scm")
)
;(load "benchmarks/alg-complexity.scm") ; must be last