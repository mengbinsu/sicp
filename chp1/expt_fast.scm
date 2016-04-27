(define (fast_expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast_expt b (/ n 2))))
        (else (* b (fast_expt b (- n 1))))))
(define (even? n)
  (= (remainder n 2) 0))
(define (square a) (* a a))

(fast_expt 2 10)
