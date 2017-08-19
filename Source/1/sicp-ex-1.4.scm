;; ex 1.4

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

;; 根据b的值，返回（+ a b）或者 (- a b)
