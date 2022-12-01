; Load everything (for interactive use: Gauche Scheme)
; gosh -I . load-all-gauche.scm
; $Id: load-all-gauche.scm,v 4.50 2005/02/12 00:04:18 oleg Exp $

(load "lib/gauche-specific.scm")
(load "lib/term.scm")
(load "lib/kanren.ss")
(load "examples/type-inference.scm")
(load "examples/typeclasses.scm")
(load "examples/zebra.scm")
(load "examples/mirror.scm")
(load "examples/mirror-equ.scm")
(load "examples/deduction.scm")
(load "examples/pure-bin-arithm.scm")
