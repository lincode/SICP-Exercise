;; ex 2.22

;; method 1
(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things)
                  (cons (square (car things)) 
                        answer))))
    (iter items '()))

; iter 的作用是把 things 里的元素一个个取出，平方后依次放入 answer 前面。
; 所以便呈现出和 items 相反的顺序。

;; method 2
(define (square-list-2 items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things)
                  (cons answer
                        (square (car things))))))
    (iter items '()))

; 以 (list 1 2 3 4) 为例，这将会获得一个如下形式的序对 ((((() . 1) . 4) . 9) . 16)