;; test 2.12

(load "../test-manager/load.scm")
(load "sicp-ex-2.12.scm")

(define-test (interval-mul)

    (define interval-1 (make-interval 1.0 3.0))
    (define interval-2 (make-center-percent 2.0 0.5))
    (check (equal? interval-1 interval-2))
)

(run-registered-tests)