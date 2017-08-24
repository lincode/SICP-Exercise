;; ex 2.18

(define (reverse items)
    (define (iter items result)
        (if (null? items)
            result
            (iter (cdr items) (cons (car items) result))))
    (iter items '()))