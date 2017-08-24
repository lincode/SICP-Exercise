;; ex 2.21

(define (square-list items)
    (if (null? items)
        '()
        (cons (square (car items))
              (square-list (cdr items)))))

(define (square-list-2 items)
    (map square items))