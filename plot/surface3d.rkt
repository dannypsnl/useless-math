#lang racket

(require plot)

(plot3d (surface3d (λ (x y) (* (cos x) (sin y)))
                   (- pi) pi (- pi) pi)
        #:title "A R x R → R function"
        #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")
