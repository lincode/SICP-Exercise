;; ex 2.20

(define (same-parity first . others)
    (filter (if (even? first)
                even?
                odd?) 
            (cons first others)))