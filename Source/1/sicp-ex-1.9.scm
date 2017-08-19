;; ex 1.9

(define (inc n)
    (+ n 1))

(define (dec n)
    (- n 1))

;; 该过程为递归计算过程
(define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))

; 使用替换模型，展开过程如下：
; (plus 3 5)
; (inc (plus 2 5))
; (inc (inc (plus 1 5)))
; (inc (inc (inc (plus 0 5))))
; (inc (inc (inc 5)))
; (inc (inc 6))
; (inc 7)
; 8


;; 该过程为迭代计算过程
(define (plus-b a b)
    (if (= a 0)
        b
        (plus (dec a) (inc b))))

; 使用替换模型，展开过程如下：
;  (+ 3 5) 
;  (+ (dec 3) (inc 5)) 
;  (+ 2 6) 
;  (+ (dec 2) (inc 6)) 
;  (+ 1 7) 
;  (+ (dec 1) (inc 7)) 
;  (+ 0 8) 
;  8
