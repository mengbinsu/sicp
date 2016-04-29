(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (multi b n)
  (multi-iter b n 0))

(define (multi-iter b n a)
  (cond ((= n 0)
         a)
        ((even? n)
         (multi-iter (double b)
                    (halve n)
                    a))
        ((odd? n)
         (multi-iter b
                    (- n 1)
                    (+ b a)))))
