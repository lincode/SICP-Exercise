;; ex 2.2

;; Point
(define (make-point x y)
    (cons x y))

(define (x-point point)
    (car point))

(define (y-point point)
    (cdr point))

;; Segment
(define (make-segment start-point end-point)
    (cons start-point end-point))

(define (start-segment seg)
    (car seg))

(define (end-segment seg)
    (cdr seg))

(define (midpoint-segment seg)
    (let ((start (start-segment seg))
          (end (end-segment seg)))
         (make-point (average (x-point start) 
                              (x-point end))
                     (average (y-point start) 
                              (y-point end)))))

(define (length-segment seg)
    (let ((start (start-segment seg))
          (end (end-segment seg)))
        (let ((vertical (abs (- (y-point start)
                                (y-point end))))
              (horizontal (abs (- (x-point start)
                                  (x-point end)))))
        (sqrt (+ (square vertical) (square horizontal))))))

(define (average x y)
    (/ (+ x y) 2.0))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ", ")
    (display (y-point p))
    (display ")"))