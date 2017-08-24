;; test 2.19

(load "../test-manager/load.scm")
(load "sicp-ex-2.19.scm")

(define-each-check

    (= 292 (cc 100 us-coins))
    (= 104561 (cc 100 uk-coins))
)

(run-registered-tests)