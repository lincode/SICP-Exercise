;; test 2.8

(load "../test-manager/load.scm")
(load "sicp-ex-2.8.scm")

(define-test (interval)

    (define interval-1 (make-interval 1 2))
    (define interval-2 (make-interval 5 7))
    (define interval-3 (make-interval 4 5))
    (check (equal? interval-3 
                   (sub-interval interval-2 interval-1)))
)

(run-registered-tests)