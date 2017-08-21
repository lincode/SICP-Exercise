;; test 2.14

(load "../test-manager/load.scm")
(load "sicp-ex-2.14.scm")

(define-test (interval-lem)

    (define R1 (make-center-width 40000 0.0001))
    (define R2 (make-center-width 80000 0.0001))
    (define S1 (par1 R1 R2))
    (define S2 (par2 R1 R2))
    (check (false? (equal? S1 S2)))

    ; center is equal.
    (check (> 0.0001 (/ (abs (- (center S1) (center S2)))
                        (center S1))))

    ; percent is very differcent.
    (check (< 0.0001 (/ (abs (- (percent S1) (percent S2))) 
                        (percent S1))))
)

(run-registered-tests)