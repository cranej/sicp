;recursive process
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

;iterative process
(define (f2 n)
  (define (f-iter c b a n1)
    (let ((p (+ a (* 2 b) (* 3 c))))
      (if (>= n1  n ) p 
        (f-iter b a p (+ n1 1)))))
  (if (< n 3) n
    (f-iter 0 1 2 3)))

