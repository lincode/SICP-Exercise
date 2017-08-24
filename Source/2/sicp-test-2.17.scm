;; test 2.17

(load "../test-manager/load.scm")
(load "sicp-ex-2.17.scm")

(define-each-check

    (equal? (last-pair (list 1 2 3)) (list 3))
    (equal? (last-pair (list 2 9 12)) (list 12))
)

(run-registered-tests)