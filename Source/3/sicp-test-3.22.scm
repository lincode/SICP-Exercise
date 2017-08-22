;; test 3.22

(load "../test-manager/load.scm")
(load "sicp-ex-3.22.scm")

(define-test (queue-test)

  (define q (make-queue))

  (check (q 'empty-queue?))
  ((q 'insert-queue!) 'a)
  (check (false? (q 'empty-queue?)))
)

(run-registered-tests)