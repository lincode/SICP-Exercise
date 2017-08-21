;; ex 2.3

;; load make-segment
(load "sicp-ex-2.2.scm")

;; 我们先假设我们拥有了获得矩形长和宽的过程：length-of-rectangle 和 width-of-rectangle
;; 由此可以得出计算周长和面积的过程：
(define (perimeter-rect rect)
    (let ((length (length-of-rect rect))
          (width (width-of-rect rect)))
        (* 2 (+ length width))))

(define (area-rect rect)
    (let ((length (length-of-rect rect))
          (width (width-of-rect rect)))
        (* length width)))

;; 方法1：使用两条线段
;; 这里省略了对初始化参数的检查:
;; 1 应该检查长和宽两条线段有共同断点
;; 2 应该检查长和宽两条线段相互垂直
(define (make-rect length-seg width-seg)
    (cons length-seg width-seg))

(define (length-seg-of-rect rect)
    (car rect))

(define (width-seg-of-rect rect)
    (cdr rect))

(define (length-of-rect rect)
    (let ((seg (length-seg-of-rect rect)))
      (length-segment seg)))

(define (width-of-rect rect)
    (let ((seg (width-seg-of-rect rect)))
        (length-segment seg)))

;; 方法2：使用一个顶点，以及长和宽的值
; (define (make-rect bottom-left length width)
;   (cons bottom-left (cons length width)))

; (define (length-of-rect rect)
;   (car (cdr rect)))

; (define (width-of-rect rect)
;   (cdr (cdr rect)))

; ;; Usage:
; (define r (make-rect (make-point 1 1) 3 3))
; (display "area: ")
; (display (area-rect r))
; (newline)
; (display "perimeter: ")
; (display (perimeter-rect r))

;; 可以发现这两种构造方法定义出来矩形都可以用相同的周长和面积计算过程计算