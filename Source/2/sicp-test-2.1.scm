;; test 2.1

(load "../test-manager/load.scm")
(load "sicp-ex-2.1.scm")

(define-test (rational)

  (define x (make-rat -1 2))
  (define y (make-rat 2 3))
  (define z (make-rat 1 6))
  (define r (add-rat x y))

  (check (equal? z r))
)

(run-registered-tests)