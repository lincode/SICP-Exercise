;; test 3.23

(load "../test-manager/load.scm")
(load "deque.scm")

(define-test (deque)

    (define mq (make-deque)) 
    ((mq 'rear-insert-deque!) 'a) 
    ((mq 'rear-insert-deque!) 'b) 
    ((mq 'rear-insert-deque!) 'c) 
    ((mq 'front-insert-deque!) 'd) 
    ((mq 'front-insert-deque!) 'e) 
    ((mq 'front-insert-deque!) 'f) 
    ((mq 'front-delete-deque!)) 
    ((mq 'rear-delete-deque!)) 
    
    (check (equal? (list 'e 'd 'a 'b) ((mq 'print))))
)

(run-registered-tests)
