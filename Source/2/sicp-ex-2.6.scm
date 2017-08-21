;; ex 2.6

(define (add-1 n)
    (lambda (f) 
        (lambda (x) 
            (f ((n f) x)))))

(define zero 
    (lambda (f) 
        (lambda (x) 
            x)))

(define one 
    (lambda (f) 
        (lambda (x) 
            (f x))))

(define two 
    (lambda (f) 
        (lambda (x) 
            (f (f x)))))

(define three
    (lambda (f) 
        (lambda (x) 
            (f (f (f x))))))

; 从以上形式可以看出Church计数中，从Zero开始，数值每加一，过程内都增加一次对 f 的调用。

; Church计算中，加法过程如下：
(define (add a b) 
    (lambda (f) 
        (lambda (x) 
            ((a f) ((b f) x)))))