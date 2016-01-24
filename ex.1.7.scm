(define (sqrt x) (sqrt-iter 1.0 x 2.0))

(define (sqrt-iter guess x prev)
    (if (good-enough? guess prev)
        guess
        (sqrt-iter (improve guess x) x guess)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess oldguess)
   (< (abs (- guess oldguess))
      (* guess 0.001)))

(define (square x) (* x x))

(display "\n")
(display (exact->inexact (sqrt 4)))
(display "\n")
(display (exact->inexact (sqrt 100)))
(display "\n")
(display (exact->inexact (sqrt 36)))
(display "\n")
(display (exact->inexact (sqrt 256)))
