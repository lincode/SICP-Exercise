;; test 2.20

(load "../test-manager/load.scm")
(load "sicp-ex-2.20.scm")

(define-each-check

    (equal? (same-parity 1 2 3 4 5 6 7) (list 1 3 5 7))
    (equal? (same-parity 2 3 4 5 6 7) (list 2 4 6))
)

(run-registered-tests)