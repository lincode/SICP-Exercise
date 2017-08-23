;; ex 3.13

(load "sicp-ex-3.12.scm")

(define (make-cycle x)
    (set-cdr! (last-pair x) x)
    x)

; 1 ]=> (define z (make-cycle (list 'a 'b 'c)))

; ;Value: z

; 1 ]=> z

; 打印一个环，console 会挂了
