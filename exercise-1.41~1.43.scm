(define (double f)
  (lambda (x) (f (f x))))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (iter result a)
    (if (> a n) result 
      (iter (compose result f) (+ a 1))))
  (if (<= n 1) f
    (iter f 2)))

