(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (multi b n)
  (cond ((= n 0)
         0)
        ((even? n)
            (double (multi b (halve n))))
        ((odd? n)
            (+ b (multi b (- n 1))))))
