(load "9-inc.scm")
(load "9-dec.scm")

(define (plus-iter a b)
  (if (= a 0)
    b
    (plus-iter (dec a) (inc b))))
