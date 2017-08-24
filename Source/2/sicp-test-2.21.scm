;; test 2.21

(load "../test-manager/load.scm")
(load "sicp-ex-2.21.scm")

(define-test (square-list)

    (check (equal? (square-list (list 1 2 3)) (list 1 4 9)))
    (check (equal? (square-list-2 (list 1 2 3)) (list 1 4 9)))

)

(run-registered-tests)