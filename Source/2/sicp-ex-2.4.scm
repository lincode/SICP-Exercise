;; ex 2.4

(define (cons x y)
    (lambda (m) (m x y)))

(define (car z)
    (z (lambda (p q) p)))

(define (cdr z)
    (z (lambda (p q) q)))

; 代换过程：
; (car (cons 2 3))
; (car (lambda (m) (m 2 3)))
; ((lambda (m) (m 2 3)) (lambda (p q) p))
; ((lambda (p q) p) 2 3))
; 2

; (cdr (cons 2 3))
; (cdr (lambda (m) (m 2 3)))
; ((lambda (m) (m 2 3)) (lambda (p q) q))
; ((lambda (p q) q) 2 3))
; 3