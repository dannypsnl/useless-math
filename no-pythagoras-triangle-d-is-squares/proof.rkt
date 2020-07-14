#lang rosette/safe

(define-symbolic a b c integer?)
(define-symbolic d integer?)

(solve
  (begin
   (assert (> d 0))
   (assert (> a 0))
   (assert (> b 0))
   (assert (> c 0))
   (assert (= (expt c) (+ (expt a) (expt b))))
   (assert (= (/ (* a b) 2) (expt d)))))
