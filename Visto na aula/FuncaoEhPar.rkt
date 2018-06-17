#lang racket
(require quickcheck)

(define (par? n)
  (= (modulo n 2) 0)
)


