#lang scribble/manual
@require[@for-label[racket/base]
         scribble-math
         plot plot/utils]

@title{A common misunderstood about Limit}
@author+email["Lîm Tsú-thuàn" "dannypsnl@gmail.com"]

Suppose there have two functions,

@$$-mathjax{f(x) = \sqrt{x - 1}}

and

@$$-mathjax{g(x) = \sqrt{1 - x}}

We can calculate their limit of @$-mathjax{1}, both are @$-mathjax{0}

@$$-mathjax{\lim\limits_{x \to 1} f = 0}
@$$-mathjax{\lim\limits_{x \to 1} g = 0}

Accordings to formula

@$$-mathjax{\lim\limits_{x \to n} (f + g) = \lim\limits_{x \to n} f + \lim\limits_{x \to n} g}

, thus

@$$-mathjax{\lim\limits_{x \to 1} (f + g) = 0}

is correct? And this is graph of @$$-mathjax{f + g}

@(plot (list
        (function
         (λ (x) (sqrt (- x 1)))
         0 2
         #:color (->color 'navy)
         #:label "y = -√(x-1)")
        (function
         (λ (x) (sqrt (- 1 x)))
         0 2
         #:color (->color 'red)
         #:label "y = -√(1-x)")))

, it looks promising. Unfortunately, this is incorrect because

@$$-mathjax{\lim\limits_{x \to 1} (f + g)}

has no result. Back to the domain of @$-mathjax{f}(@$-mathjax{D_f}) and domain of @$-mathjax{g}(@$-mathjax{D_g}), originally @$-mathjax{\lim\limits_{x \to 1}} is meaninful since interval of @$-mathjax{x = 1} is existed, but in the new domain @$-mathjax{D_f \cap D_g}, @$-mathjax{x = 1} has no interval around it, so no limit actually.

What is the point here, the point is check limit existed by checking domain has interval around it is important, don't forget about it.
