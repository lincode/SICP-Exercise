;; ex 2.14

(load "make-interval-center-width.scm")

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))
 
(define (par2 r1 r2)
  (let ((one (make-interval 1.0 1.0)))
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

; Lem 是的对的。sicp-test-2.14.scm 给出了证明。
; 这是区间的相等性的问题：
; A = [1, 4];
; B = [1, 4];
; A/A 应该等于 1，因为我们知道它们相等。
; 但是我们使用过程 (div-interval A A) 计算，得到的结果 [0.25, 4]。
; A/A 的计算结果等于 A/B。
; 这是因为对于 A 和 B，我们并不知道它们的确切值，它们也许处于区间[1, 4]中任何位置。
; 但是 A 和 A，我们认为它们相等，但是我们构造的演算过程却无法分辨。
; 根本原因是我们没有清晰定义区间相等。我们使用序对表示一个区间。
; 但是显然序对这一结构，无法区分 A/A 和 A/B 这种区别。