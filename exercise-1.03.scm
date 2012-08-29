(define (square x)
  (* x x))

;sum of the squares of the two larger numbers
(define (sum-larger-square x y z)
  (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
        ((and (< y x) (< y z)) (+ (square x) (square z)))
        (else (+ (square x) (square y)))))

