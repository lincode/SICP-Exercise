;; ex 1.10

(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) 
                   (A x (- y 1))))))

; 1 ]=> (A 1 10)

; ;Value: 1024

; 1 ]=> (A 2 4)

; ;Value: 65536

; 1 ]=> (A 3 3)

; ;Value: 65536


; 函数 f 应该是 2*n
(define (f n) (A 0 n))

; 函数 g 应该是 2^n
(define (g n) (A 1 n))

; 函数 h 应该是 2^2^… (n-1 次)
(define (h n) (A 2 n)) 
