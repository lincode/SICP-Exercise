;; ex 1.5

;;如果对过程 p 求值，将会陷入无限求值。
(define (p) (p))

;;如果解析器是应用求值（applicative order evaluation），就会先求值 p，从而陷入无限循环。
;;如果解析器是正则求值（normal order evaluation），求值结果为0。
(define (test x y)
    (if (= x 0)
        0
        y))