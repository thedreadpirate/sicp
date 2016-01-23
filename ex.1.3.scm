(define (square a) (* a a))

(define (larger a b) (if (> a b) a b))

(define (square-largest a b c)
    (if (> a b)
        (+ (square a) (square (larger b c)))
        (+ (square b) (square (larger a c)))))

(display (= 13 (square-largest 3 2 1)))
(display (= 13 (square-largest 3 1 2)))
(display (= 13 (square-largest 2 3 1)))
(display (= 13 (square-largest 1 2 3)))
(display (= 13 (square-largest 1 3 2)))
