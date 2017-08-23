;; test 3.12

(load "../test-manager/load.scm")
(load "sicp-ex-3.23.scm")

(define-test (append-test)

    (define x (list 'a 'b)) 
    (define y (list 'c 'd))     
    (define z (append x y)) 
    (check (equal? (list 'a 'b 'c 'd) z))
    (check (equal? (list 'a 'b) x))
    (check (equal? (list 'b) (cdr x)))

    (define w (append! x y))
    (check (equal? (list 'a 'b 'c 'd) w))
    (check (equal? (list 'b 'c 'd ) (cdr x)))
)

(run-registered-tests)
