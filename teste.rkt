#lang racket

(require quickcheck)
(require "funcoesMatematicas.rkt")

; teste por Propriedades
; propriedade: O sucessor de todo par eh IMPAR
(define prop-alternancia-par-impar
    (property ([n arbitrary-integer])   ; Função do quickcheck que definirá variáveis aleatórias para n
              (xor (par? n) (par? (+ n 1))) ; O quicktest checará essa função para verificar que a propriedade se mantem
              )
            )

(define prop-se-impar-nao-par
    (property ([n arbitrary-integer])
            (==> (par? n) (not (impar? n)))))


(define fatorial-n-fatorial-n+1
    (property 
        ([n arbitrary-natural])
        (= (* (+ n 1) (fatorial n)) (fatorial (+ n 1)))))

(quickcheck prop-alternancia-par-impar)
(quickcheck prop-se-impar-nao-par)
(quickcheck fatorial-n-fatorial-n+1)
; propriedade: O predecessor de todo par é PAR

; Teste por Exemplos
