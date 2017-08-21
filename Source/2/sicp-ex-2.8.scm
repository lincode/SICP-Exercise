;; ex 2.8

(load "interval.scm")

;; 定义 sub-interval 为下界和上界的差值
(define (sub-interval x y)
    (make-interval (- (lower-bound x) (lower-bound y))
                   (- (upper-bound x) (upper-bound y))))
