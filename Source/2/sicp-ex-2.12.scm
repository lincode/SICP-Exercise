;; ex 2.12

(load "make-interval-center-width.scm")

(define (make-center-percent c p)
    (make-center-width c (* c (/ p 100.0))))

(define (percent i)
    (* (/ (width i) (center i)) 100.0))