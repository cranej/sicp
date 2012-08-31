;product - recursive
(define (product term a next b)
  (if (> a b) 1
    (* (term a)
       (product term (next a) next b))))

;product - iterative
(define (product2 term a next b)
  (define (iter a result)
    (if (> a b) result 
      (iter (next a) (* (term a ) result))))
  (iter a 1))

;factorial n
(define (factorial n)
  (product (lambda (x) x) 
           1 
           (lambda (x) (+ x 1)) 
           n)) 

;caculate PI using formula: PI = 4 * ((2 * 4 * 4 * 6 * 6 * 8...) / (3 * 3 * 5 * 5 * 7 * 7...))
(define (get-pi limit)
  (define (inc x) (+ x 1))
  (* (/ (product (lambda (x) (if (odd? x) (+ x 1) (+ x 2)))
                 1
                 inc
                 limit)
        (product (lambda (x) (if (even? x) (+ x 1) (+ x 2)))
                 1
                 inc
                 limit))
     4.0))
