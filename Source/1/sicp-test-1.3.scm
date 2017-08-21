;; test 1.3

(load "../test-manager/load.scm")
(load "sicp-ex-1.3.scm")

(define-each-check

    (= 13
        (sum-square-max 1 2 3))
    (= 20
        (sum-square-max -2 4 -8))
)

(run-registered-tests)