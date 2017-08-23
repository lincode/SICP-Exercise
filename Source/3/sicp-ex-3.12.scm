;; ex 3.12

(define (last-pair x)
    (if (null? (cdr x))
        x
        (last-pair (cdr x))))

(define (append! x y)
    (set-cdr! (last-pair x) y)
    x)

(define (append x y)
    (if (null? x)
        y
        (cons (car x) (append (cdr x) y))))

;; 返回见 scip-test-3.12.scm