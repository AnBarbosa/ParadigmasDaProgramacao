#lang racket

(provide fatorial)
(provide par?)
(provide impar?)


(define (par? n)
    (= (modulo n 2) 0))
    
(define (impar? n)
    (= (modulo n 2) 1))

(define (fatorial n)
    (if (= n 0)
        1
        (* n (fatorial (- n 1)))))

