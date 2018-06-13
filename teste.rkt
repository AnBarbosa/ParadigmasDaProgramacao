#lang racket

(require quickcheck)

(define (par? n)
    (= (modulo n 2) 0))
    
(define (impar? n)
    (= (modulo n 2) 1))

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

(quickcheck prop-alternancia-par-impar)
(quickcheck prop-se-impar-nao-par)

; propriedade: O predecessor de todo par é PAR

; Teste por Exemplos
