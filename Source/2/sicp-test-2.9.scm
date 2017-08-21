;; test 2.9

(load "../test-manager/load.scm")
(load "interval.scm")

(define-test (interval-operations)

    (define interval-1 (make-interval 1 2))
    (define interval-2 (make-interval 5 7))
    (define interval-3 (make-interval 4 5))
    (define width-1 (width interval-1))
    (define width-2 (width interval-2))
    (define width-sub (- width-2 width-1))
    (define width-add (+ width-2 width-1))
    (define width-mul (* width-2 width-1))
    (define width-div (/ width-2 width-1))

    (check (= width-sub 
              (width (sub-interval interval-2 interval-1))))
    (check (= width-add
              (width (add-interval interval-2 interval-1))))
    (check (false? (= width-mul
                   (width (mul-interval interval-2 interval-1)))))
    (check (false? (= width-div
                   (width (div-interval interval-2 interval-1)))))

)

(run-registered-tests)