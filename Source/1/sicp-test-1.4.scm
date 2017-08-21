;; test 1.4

(load "../test-manager/load.scm")
(load "sicp-ex-1.4.scm")

(define-each-check
    (= 5
       (a-plus-abs-b 2 3))
    (= 5
       (a-plus-abs-b 2 (- 3))))

(run-registered-tests)
