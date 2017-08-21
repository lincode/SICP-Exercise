;; test 2.6

(load "../test-manager/load.scm")
(load "sicp-ex-2.6.scm")

(define-test (church)

    (define (church-to-int cn)
        ((cn (lambda (n) (+ n 1))) 0))

    (check (= 1 (church-to-int one)))
    (check (= 2 (church-to-int two)))
    (check (= 3 (church-to-int three)))    
    (check (= 3 (church-to-int (add one two))))

    (check (= 4 ((one square) 2)))
    (check (= 16 ((two square) 2)))
    (check (= (((add two one) square) 2)))


)

(run-registered-tests)
