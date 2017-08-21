;; ex 2.12

(load "make-center-width-interval.scm")

(define (make-center-percent c p)
    (make-center-width c (* c p)))

(define (percent i)
    (/ (width i) (center i)))
