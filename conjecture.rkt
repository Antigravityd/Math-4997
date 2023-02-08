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

(define (jump-pabr p a b r)
  (intfn p a b r #:depth 4))

(define (check-jump impl p a b r)
  (define vals
    (hash ()))
  (assume (> p 0))
  (assume (> a 0))
  (assume (> b 0))
  (assume (> r 0))
  )
(define conjecture
  (synthesize
   #:forall (list p a b r)
   #:guarantee (if )))

(define (extrapolate alist)
  (let ([arity (length (car (car alist)))])
    ())
