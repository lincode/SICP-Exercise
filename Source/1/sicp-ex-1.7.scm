;; ex 1.7

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter old-guess x)
    (let ((new-guess (improve old-guess x)))
        (if (new-good-enough? old-guess new-guess)
            new-guess
            (sqrt-iter new-guess x)))) 

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (square x)
    (* x x))

; (define (sqrt-iter guess x)
;     (if (good-enough? guess x)
;         guess
;         (sqrt-iter (improve guess x)
;             x)))
;
; (define (good-enough? guess x)
;     (< (abs (- (square guess) x)) 0.001))

; 先使用原来的 good-enough? 测试:
;
; 1 ]=> (sqrt 0.00009)
;
; ;Value: .03220324381282134
; 
; 1 ]=> (sqrt 999900000000000000000000000000000000000000000000000000000000000000000000000000000)
; ;挂掉了


(define (new-good-enough? old-guess new-guess)
    (> 0.01
       (/ (abs (- new-guess old-guess))
          old-guess)))

; 使用新的 new-good-enough? 测试:
;
; 1 ]=> (sqrt 0.00009)
; ;Value: 9.486833049684392e-3
;
; 1 ]=> (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
; ;Value: 9.486982144406554e41