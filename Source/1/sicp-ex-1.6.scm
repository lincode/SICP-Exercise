;; ex 1.6

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (square x)
    (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

;; new-if 只是一个普通的函数，它没有 if 所具有的特殊形式。解释器使用“应用求值”，每个传入的实际参数都会被求值。
;; 当使用 new-if 时，无论 predicate 是真还是假，then-clause 和 else-clause 两个分支都会被求值。 
;; 因为无论测试结果如何， sqrt-iter 都会一直递归下去。
(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
        (else else-clause)))