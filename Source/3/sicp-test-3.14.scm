;; test 3.14

(load "../test-manager/load.scm")
(load "sicp-ex-3.14.scm")

(define-test (mystery-test)

    (define v (list 'a 'b 'c))
    (define w (mystery v))
    (check (equal? (list 'c 'b 'a) w))
    (check (equal? (list 'a) v))
)

(run-registered-tests)
