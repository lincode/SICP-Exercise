;; dequeue.scm

 (define (make-deque) 
   (let ((front-ptr '()) 
         (rear-ptr '())) 

     (define (front-insert-deque! item) 
       (let ((new-pair (list item '() '()))) 
         (cond ((null? front-ptr) 
                (set! front-ptr new-pair) 
                (set! rear-ptr new-pair)) 
               (else 
                (set-cdr! (cdr new-pair) front-ptr) 
                (set-car! (cdr front-ptr) new-pair) 
                (set! front-ptr new-pair))) 
         front-ptr)) 

     (define (rear-insert-deque! item) 
       (let ((new-pair (list item '() '()))) 
         (cond ((null? front-ptr) 
                (set! front-ptr new-pair) 
                (set! rear-ptr new-pair)) 
               (else 
                (set-car! (cdr new-pair) rear-ptr) 
                (set-cdr! (cdr rear-ptr) new-pair) 
                (set! rear-ptr new-pair))) 
         front-ptr)) 

     (define (front-delete-deque!) 
       (set! front-ptr (cddr front-ptr)) 
       (set-car! (cdr front-ptr) '()) 
       front-ptr) 

     (define (rear-delete-deque!) 
       (set! rear-ptr (cadr rear-ptr)) 
       (set-cdr! (cdr rear-ptr) '()) 
       front-ptr) 

     (define (print) 
       (define (iter x result) 
                (if (null? (cddr x)) 
                    (append result (cons (car x) '())) 
                    (iter (cddr x) (append result (cons (car x) '()))))) 
       (iter front-ptr '())) 
      
     (define (dispatch m) 
       (cond ((eq? m 'front-ptr) front-ptr) 
             ((eq? m 'rear-ptr) rear-ptr) 
             ((eq? m 'print) print) 
             ((eq? m 'empty-queue?) (null? front-ptr)) 
             ((eq? m 'front-delete-deque!) front-delete-deque!) 
             ((eq? m 'rear-delete-deque!) rear-delete-deque!) 
             ((eq? m 'rear-insert-deque!) rear-insert-deque!) 
             ((eq? m 'front-insert-deque!) front-insert-deque!) 
             (else 
              (display "Bad operate")))) 
     dispatch)) 

; 双向链表的实现每次创建的 new-pair 拥有两个指针，分别指向前结点和后结点。