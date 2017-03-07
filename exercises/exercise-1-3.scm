;; Create a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (square-largest-two x y z)
  (if (>= x y)
      (sum-of-squares x 
                      (if (>= y z) 
                          y 
                          z))
      (sum-of-squares y
                      (if (>= x z)
                          x
                          z))))


(square-largest-two 5 3 1)
