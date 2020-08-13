#lang racket

(require plot)

(plot (function
       (λ (x) (log x 10))
       -1 30
       #:label "y = log10(x)"))

(plot (function
       (λ (x) (expt x 10))
       -1 30
       #:label "y = x ^ 10"))

(plot (function
       (λ (x) (* (- (sqrt 3)) (expt x 3)))
       -10 10
       #:label "y = -√3x^3"))
