;; test 1.6

(load "../test-manager/load.scm")
(load "sicp-ex-1.6.scm")

(define-each-check

    (= 1
       (new-if #t 1 2))

    (= 2
       (new-if #f 1 2))

)

(run-registered-tests)
