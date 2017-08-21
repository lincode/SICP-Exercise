;; test 1.8

(load "../test-manager/load.scm")
(load "sicp-ex-1.8.scm")

(define-each-check
    (> 0.0001 
        (abs (- 3 (cube-root (* 3 3 3)))))
       
    (> 0.00001
        (abs (- 2 (cube-root (* 2 2 2)))))
)

(run-registered-tests)