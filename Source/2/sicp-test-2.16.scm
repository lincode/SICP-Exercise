;; test 2.16

(load "../test-manager/load.scm")
(load "interval.scm")

(define-test (interval-arithmetic)


    (define a (make-interval 2 4))

    (define b (make-interval -2 0))
 
    (define c (make-interval 3 8))
 
    ; a*(b + c)
    (define x (mul-interval a
                            (add-interval b c)))

    ; a*b + a*c
    (define y (add-interval (mul-interval a b)
                            (mul-interval a c)))

    (check (false? (equal? x y)))
)

(run-registered-tests)