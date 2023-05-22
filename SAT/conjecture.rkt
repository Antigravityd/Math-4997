(require rosette/lib/synthax)

(define-grammar (intfn p a b r)
  [expr
   (choose w x y z (?? integer?)
           ((bop) (expr) (expr))
           ((uop) (expr)))]
  [bop
   (choose + - * quotient remainder modulo min max)]
  [uop
   (choose abs sgn -)])

(define (next-pabr p a b r)
  (list (intfn p a b r #:depth 4)
        (intfn p a b r #:depth 4)
        (intfn p a b r #:depth 4)
        (intfn p a b r #:depth 4)))

(define observed p a b r)

(define conjecture
  (synthesize
   #:forall (list p a b r)
   #:guarantee (begin
                 (assume (>= p 3))
                 (assume (>= a 1))
                 (assume (>= b 0))
                 (assume (>= r 1))
                 (assume (= (modulo p 2)
                            1))
                 (assume (<= a (/ (sub1 p)
                                  2)))
                 (assume (< b
                            (- p (2 * a))))
                 (= (jump-pabr p a b r)
                    (observed p a b r)))))

(define (extrapolate alist)
  (let ([arity (length (car (car alist)))])
    ())
