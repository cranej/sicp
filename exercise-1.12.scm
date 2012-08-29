;recursive process
(define (pascal-triangle n)
  (cond ((<= n 0) "invalid n") 
        ((= n 1) (list 1))
        ((= n 2) (list 1 1))
        (else (get-next (pascal-triangle (- n 1)) '()))))

;iterative process
(define (YangHui-triangle n)
  (define (yh-iter lst n1)
    (if (= n1 n) lst
      (yh-iter (get-next lst '()) (+ n1 1))))
  (cond ((<= n 0) "invalid n") 
        ((= n 1) (list 1))
        ((= n 2) (list 1 1))
        (else (yh-iter (list 1 2 1) 3)))) 

;construct next row
(define (get-next lst p)
  (if (= (length lst) 1) (append (cons 1 p) (list 1))
    (get-next (cdr lst) (append p (list (+ (car lst) (car (cdr lst))))))))
