#lang racket/gui

(require racket/gui/base)

(define frame (new frame% 
		[label "Exemplo"]
		[width 300] [height 300]))

(define msg (new message% [parent frame] [label "Sem eventos até agora"]))

(new button% [parent frame] 
	[label "Clique Aqui"] 
	[callback (lambda (button event) 
		(send msg set-label "Botão apertado") )])

(new button% [parent frame] [label "Sair"]
	 [callback (lambda (button event) (send frame show #f))]
)

(define my-canvas% 
	(class canvas%
		(define/override (on-event event)
			 (send msg set-label "Canvas Mouse"))
		(define/override (on-char event) 
			 (send msg set-label "Canvas keyboard"))
		(super-new)))
(new my-canvas% [parent frame])

(send frame show #t)

