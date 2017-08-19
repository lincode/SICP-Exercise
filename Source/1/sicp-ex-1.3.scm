;; ex 1.3

(define (sum-square-max x y z) 
    (define (sum-square x y)
        (+ (* x x) (* y y)))

    (cond ((and (>= x y) (>= z y)) 
            (sum-square x z))
          ((and (>= x y) (>= y z))
            (sum-square x y))
          ((and (>= y x) (>= z x))
            (sum-square z y))
          ((and (>= y x) (>= x z))
            (sum-square y x)))
    )