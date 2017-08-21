;; test 1.7

(load "../test-manager/load.scm")
(load "sicp-ex-1.7.scm")

(define-test (sqrt)

    (define small 0.000003)
    (define big 9000000000)

    (check (> 0.0001 
            (abs (/ (- small (sqrt (square small)))
                    small))))
       
    (check (> 0.00001
            (abs (/ (- big (sqrt (square big)))
                    big))))
)

(run-registered-tests)