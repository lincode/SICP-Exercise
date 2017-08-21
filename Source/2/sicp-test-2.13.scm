;; test 2.13

(load "../test-manager/load.scm")
(load "sicp-ex-2.13.scm")

(define-test (tolerance)

    (define i (make-interval-center-percent 10 0.05)) 
    (define j (make-interval-center-percent 10 0.04)) 
    (define pt (percent-tolerance (mul-interval i j)))
    (check (> 0.01 (/ (abs (- pt (+ 0.05 0.04)))
                      pt)))
)

(run-registered-tests)