;; ex 2.17

(define (last-pair items)
    (if (not (pair? (cdr items)))
        items
        (last-pair (cdr items))))