> Backup of old Kanren code: https://kanren.sourceforge.net

Including:

- the complete KANREN and mini-KANREN code,
- extensive documentation,
- a tutorial,
- validation tests,
- as well as several sample applications.

------

# A declarative applicative logic programming system

KANREN is a declarative logic programming system with first-class relations, embedded in a pure functional subset of Scheme. The system has a set-theoretical semantics, true unions, fair scheduling, first-class relations, lexically-scoped logical variables, depth-first and iterative deepening strategies. The system achieves high performance and expressivity without cuts.

Applications of the system range from expert systems to polymorphic type inference and overloading resolution, to model checking and theorem proving. The system can be used as a meta-logic system.

KANREN works on any computer platform for which a Scheme implementation exists (from PalmPilot and iPAQ to Unix/Linux/Winxx/Mac workstations and servers to MindLego bricks). The system can be compiled or interpreted. Being essentially a Scheme library, KANREN can interact with the user through any graphical or command-line interface provided by the host Scheme implementation.

## Sample applications

[mini/type-inference.scm](mini/type-inference.scm)

Hindley-Milner type inference relation, which relates a term in a lambda-calculus with fixpoint, polymorphic let, sums and products -- and its type. The relation can be used for type inference (determining the type for a term), type checking (making sure that a term is of the given type), and term reconstruction (constructing a term that has the desired type). We may also specify a part of the term and a part of the type, and ask the system to fill in the rest. In the latter applications, this code acts as a theorem prover in intuitionistic logic.

[mini/logic.scm](mini/logic.scm)

This file illustrates the use of the typechecking relation (see above) for proving theorems in intuitionistic and classical logics.

[mini/leanTAP.scm](mini/leanTAP.scm)
leanTAP theorem prover by Bernhard Beckert and Joachim Posegga. The miniKanren implementation uses higher-order syntax (to avoid copy_term) and an advanced evaluator that removes the need for explicit iterative deepening.

[examples/zebra.scm](examples/zebra.scm)

The classic Zebra puzzle

[examples/mirror.scm](examples/mirror.scm)

Structural induction proof. We write an outline of an inductive proof that mirroring a binary tree twice is the identity transformation. The system fills out details and verifies that the conclusion of the proof indeed follows from the given axioms. KANREN is used as a meta-logic system to implement a backwards-chaining proof verifier.

[examples/mirror-equ.scm](examples/mirror-equ.scm)

Structural induction proof in equational theory. We can truly write the equivalence axioms, including the symmetry axiom (myeq a b) |- (myeq b a). Try to do that in Prolog!

[examples/typeclasses.scm](examples/typeclasses.scm)

Functional dependency satisfaction in Haskell typeclasses and deriving counter-examples. Overloading resolution for Haskell typeclasses in open and closed worlds. Our method can typecheck more programs than it is currently possible in Haskell.

[examples/deduction.scm](examples/deduction.scm)

Proving the Deduction Theorem for Hilbert Propositional Calculus by induction. The example also demonstrates generating inductive hypotheses.

[examples/pure-bin-arithm.scm](examples/pure-bin-arithm.scm)

Pure, declarative, and constructive binary arithmetics: Addition, multiplication, division with the remainder as sound and complete, pure, declarative relations that can be used in any mode and that recursively enumerate their domains. The relations define arithmetics over base-2 non-negative numerals of arbitrary size. If z is instantiated but x and y are not, (++o x y z) delivers all non-negative numbers that add to z and (\*\*o x y z) computes all factorizations of z.

[benchmarks/](benchmarks/)

Standard Prolog benchmarks: nrev, query, qsort, queens, etc. -- re-written for KANREN.

## miniKANREN

miniKANREN is a simplified KANREN without many bells, whistles, and optimizations of the full system. The goal of the simplifications was to make miniKANREN easier to explain. Many tutorials below are specifically miniKANREN tutorials. Incidentally, miniKANREN is quite efficient.

[mini/mk.scm](mini/mk.scm)

The complete implementation (used in the book).

[mini/mkextraforms.scm](mini/mkextraforms.scm)

Extra forms appearing in the framenotes of the book.

[mini/mkprelude.scm](mini/mkprelude.scm)

Useful definitions from the book.

[mini/mktests.scm](mini/mktests.scm)

All the examples used in the book.

## Documentation and tutorials

The Reasoned Schemer <br/>
Daniel P. Friedman, William E. Byrd and Oleg Kiselyov <br/>
MIT Press, Cambridge, MA, 2005.

## Availability

KANREN is OpenSource, distributed under the MIT license.

KANREN has been tested on the following Scheme systems:
Petite Chez Scheme, Chez Scheme, SCM, Gauche.

mini-KANREN has been tested on the following Scheme systems:
Petite Chez Scheme, Chez Scheme, SCM, Gauche, PLT Scheme/DrScheme v209 and v299.400.
