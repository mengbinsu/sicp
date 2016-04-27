(define (fast-expt a n)
  (fast-expt-iter a n 1))
(define (square x) (* x x))
(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt-iter a n product)
  (cond ((= n 0) 
         product)
        ((even? n) 
         (fast-expt-iter a
                            (/ n 2)
                            (* (square a) product)))
        (else (* n (fast-expt-iter a
                                   (/ (- n 1) 2)
                                   (* (square a) product))))))
