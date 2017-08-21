;; test 2.15

(load "../test-manager/load.scm")
(load "sicp-ex-2.14.scm")

(define-test (interval-lem)

    (define R1 (make-center-width 40000 0.0001))
    (define R2 (make-center-width 80000 0.0001))
    (define S1 (par1 R1 R2))
    (define S2 (par2 R1 R2))

    (check (> (percent S1) (percent S2)))
)

(run-registered-tests)