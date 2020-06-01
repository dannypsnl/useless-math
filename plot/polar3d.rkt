#lang racket

(require plot)

(plot3d (polar3d (λ (phi p) 1))
        #:altitude 25)
