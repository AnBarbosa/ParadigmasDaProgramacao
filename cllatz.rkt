#lang racket

(define (collatz-f n)
    (if (par? n)
    (/ n 2)
    (add1 (* 3 n))))

(define collatz n
    (or (= 1 n) collatz (collatz-f n)))


