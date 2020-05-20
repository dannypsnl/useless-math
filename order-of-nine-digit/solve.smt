(declare-const m Int)
(declare-const a0 Int)
(declare-const a1 Int)
(declare-const a2 Int)
(declare-const a3 Int)
(declare-const a4 Int)
(declare-const a5 Int)
(declare-const a6 Int)
(declare-const a7 Int)
(declare-const a8 Int)
(assert (< a0 10))
(assert (< a1 10))
(assert (< a2 10))
(assert (< a3 10))
(assert (< a4 10))
(assert (< a5 10))
(assert (< a6 10))
(assert (< a7 10))
(assert (< a8 10))
(assert (> a0 0))
(assert (> a1 0))
(assert (> a2 0))
(assert (> a3 0))
(assert (> a4 0))
(assert (> a5 0))
(assert (> a6 0))
(assert (> a7 0))
(assert (> a8 0))
(assert (not (= a0 a1)))
(assert (not (= a0 a2)))
(assert (not (= a0 a3)))
(assert (not (= a0 a4)))
(assert (not (= a0 a5)))
(assert (not (= a0 a6)))
(assert (not (= a0 a7)))
(assert (not (= a0 a8)))
(assert (not (= a1 a2)))
(assert (not (= a1 a3)))
(assert (not (= a1 a4)))
(assert (not (= a1 a5)))
(assert (not (= a1 a6)))
(assert (not (= a1 a7)))
(assert (not (= a1 a8)))
(assert (not (= a2 a3)))
(assert (not (= a2 a4)))
(assert (not (= a2 a5)))
(assert (not (= a2 a6)))
(assert (not (= a2 a7)))
(assert (not (= a2 a8)))
(assert (not (= a3 a4)))
(assert (not (= a3 a5)))
(assert (not (= a3 a6)))
(assert (not (= a3 a7)))
(assert (not (= a3 a8)))
(assert (not (= a4 a5)))
(assert (not (= a4 a6)))
(assert (not (= a4 a7)))
(assert (not (= a4 a8)))
(assert (not (= a5 a6)))
(assert (not (= a5 a7)))
(assert (not (= a5 a8)))
(assert (not (= a6 a7)))
(assert (not (= a6 a8)))
(assert (not (= a7 a8)))

(define-fun f ((a Int) (b Int)) Int
  (+ (* 10 a) b))

(declare-const sum2 Int)
(assert (= sum2 (f a0 a1)))
(declare-const sum3 Int)
(assert (= sum3 (f sum2 a2)))
(declare-const sum4 Int)
(assert (= sum4 (f sum3 a3)))
(declare-const sum5 Int)
(assert (= sum5 (f sum4 a4)))
(declare-const sum6 Int)
(assert (= sum6 (f sum5 a5)))
(declare-const sum7 Int)
(assert (= sum7 (f sum6 a6)))
(declare-const sum8 Int)
(assert (= sum8 (f sum7 a7)))
(declare-const sum9 Int)
(assert (= sum9 (f sum8 a8)))

(assert (= (mod sum2 2) 0))
(assert (= (mod sum3 3) 0))
(assert (= (mod sum4 4) 0))
(assert (= (mod sum5 5) 0))
(assert (= (mod sum6 6) 0))
(assert (= (mod sum7 7) 0))
(assert (= (mod sum8 8) 0))
(assert (= (mod sum9 9) 0))
(assert (= sum9 m))

; Solve
(check-sat)
(get-model)
