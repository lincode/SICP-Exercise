;; ex 2.13

(load "interval.scm")
(load "make-interval-center-width.scm")

(define (percent-tolerance i)
        (/ (width i) (center i)))

(define (make-interval-center-percent c p)
    (make-center-width c (* c p)))

; 证明：
; a = [Ca*(1 - 0.5*Ta), 
;      Ca*(1 + 0.5*Ta)] 
; 其中 Ca 为 a 的 center，Ta 为 a 的 tolerance。 
; b = [Cb*(1 - 0.5*Tb), 
;      Cb*(1 + 0.5*Tb)]
; a*b = [Ca*Cb*(1 - 0.5*(Ta + Tb) + 0.25*Ta*Tb),
;        Ca*Cb*(1 + 0.5*(Ta + Tb) + 0.25*Ta*Tb)]
; 由于 Ta 和 Tb 都为很小的数，其乘积可以忽略。
; a*b = [Ca*Cb*(1 - 0.5*(Ta + Tb),
;        Ca*Cb*(1 + 0.5*(Ta + Tb)]
; 所以 Tab = Ta + Tb 

; 查看文件 sicp-test-2.13.scm
; 可以看到在误差为很小的百分数时，两个区间乘积的误差值近似为两个区间误差的和。 
