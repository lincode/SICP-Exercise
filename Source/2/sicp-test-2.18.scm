;; test 2.18

(load "../test-manager/load.scm")
(load "sicp-ex-2.18.scm")

(define-each-check

    (equal? (reverse (list 1 2 3)) (list 3 2 1))
    (equal? (reverse (list 2 9 12)) (list 12 9 2))
)

(run-registered-tests)