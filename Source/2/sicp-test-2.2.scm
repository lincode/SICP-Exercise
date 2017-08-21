;; test 2.2

(load "../test-manager/load.scm")
(load "sicp-ex-2.2.scm")

(define-test (segment)

    (define seg (make-segment (make-point 2.0 3.0)
                              (make-point 10.0 15.0)))

    (define midpoint (midpoint-segment seg))

    (check (equal? (make-point 6.0 9.0) midpoint))
)

(run-registered-tests)
