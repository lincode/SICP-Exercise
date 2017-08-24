;; test 3.16

(load "../test-manager/load.scm")
(load "sicp-ex-3.13.scm")
(load "sicp-ex-3.16.scm")

(define-test (count-pair-cycle)
    
    (define three (cons (cons 'a '()) (cons 'c '())))
    (check (= 3 (count-pairs three)))

    (define four (cons (cons 'a 'b) 'c))
    (check (= 2 (count-pairs four)))

    (define seven (cons three three))
    (check (= 7 (count-pairs seven)))

    ;; cycle
    (define crycle (make-cycle (cons 1 (cons 2 (cons 3 '())))))
    ;(count-pairs crycle)
    ;Aborting!: maximum recursion depth exceeded
)

(run-registered-tests)