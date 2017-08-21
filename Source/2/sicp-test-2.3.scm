;; test 2.3

(load "../test-manager/load.scm")
(load "sicp-ex-2.3.scm")

(define-test (rectangle)

    (define s1 (make-segment (make-point 1.0 1.0) 
                             (make-point 1.0 4.0)))
    (define s2 (make-segment (make-point 1.0 1.0) 
                             (make-point 4.0 1.0)))
    (define r (make-rect s1 s2))

    (check (= 9.0 (area-rect r)))
    (check (= 12.0 (perimeter-rect r)))
)

(run-registered-tests)