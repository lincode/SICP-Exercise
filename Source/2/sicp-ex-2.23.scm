;; ex 2.23

(define (for-each proc items)
    (if (not (null? items))
        (begin 
            (proc (car items))
            (for-each proc (cdr items)))))