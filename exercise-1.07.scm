(define (new-good-enough? guess x)
  (< (abs (- guess 
             (improve guess x))) 
     ;The precision should be different based on whether old guess is greater than 1
     (if (> (abs guess) 1)
       0.0001 
       (* guess 0.0001))))
