;; test 2.11

(load "../test-manager/load.scm")
(load "sicp-ex-2.11.scm")

(define-test (interval-mul)

    (define interval-1 (make-interval -1 2))
    (define interval-2 (make-interval 5 7))
    (define interval-3 (make-interval -7 14))
    (check (equal? interval-3 
                   (new-mul-interval interval-2 interval-1)))
)

(run-registered-tests)