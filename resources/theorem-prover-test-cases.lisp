;;; 30 test propositions for Project3

;;; Note the syntax, especially for negation: eg, (- P) and  (- - P) instead of the more usual -P --P
;;;-------------------------------------------------------------------------------------------

;;;===================================================================

(defconstant f1  'P)
(defconstant f2  '(- P))
(defconstant f3  '(- - P))
(defconstant f4  '(- - - P))
(defconstant f5  '(P -> Q))
(defconstant f6  '(P v (- P)))
(defconstant f7  '((P v Q) -> P))
(defconstant f8  '(P <-> Q))
(defconstant f9  '((((P -> Q) -> R) -> S)-> ((Q -> R) -> (P -> S))))
(defconstant f10 '((- S) & (- T)))
(defconstant f11 '((P -> Q) & (Q -> R)))
(defconstant f12 '(((P -> Q) & (Q -> R)) -> (P -> R)))
(defconstant f13 '((P & Q) -> P))
(defconstant f14 '((P -> Q) -> ((- Q) -> (- P))))
(defconstant f15 '((P -> (- Q)) v ((- P) & (- Q))))
(defconstant f16 '((P -> (- Q)) v (P & Q)))
(defconstant f17 '((P -> Q) <-> ((- Q) -> (- P))))
(defconstant f18 '((P -> Q) -> ((- Q) -> (- P))))
(defconstant f19 '(((- Q) -> (- P)) -> (P -> Q)))
(defconstant f20 '(P -> ((P -> Q) <-> Q)))
(defconstant f21 '(((P & Q) -> R) <-> ((P & (- R)) -> Q)))
(defconstant f22 '((P -> (- Q)) v ((- P) & (- Q))))
(defconstant f23 '(P -> ((- P) -> Q)))
(defconstant f24 '(((- P) -> Q) -> ((- Q) -> P)))
(defconstant f25 '(((- P) -> P) -> P))
(defconstant f26 '(((- P) -> P) -> (- P)))
(defconstant f27 '((-(P -> Q)) -> P))
(defconstant f28 '((P <-> Q) <-> (Q <-> P)))
(defconstant f29 '((P <-> Q) -> (Q <-> P)))
(defconstant f30 '((P <-> Q) -> (Q -> P)))

;;;===================================================================

;;;-------------------------------------------------------------------------------------------
;;; For reference, here is the syntax 
;;; 
;;;   P Q R S T U     ;; these are the only allowed variables
;;;   -               ;; negation 
;;;   &               ;; conjunction 
;;;   v               ;; disjunction              
;;;   ->              ;; implication/conditional
;;;   <->             ;; biconditional
;;;-----------------------------------------------------


(defun tautology-simple-p (F)
  (format t "~%~a~%" F)
  (run-resolution (make-db F)))

(defun tautology-driver (name F)
  (format t "~%~a = ~a~%" name F)
  (run-resolution (make-db F))
  (terpri))

(defmacro tautology-p (F)
  `(tautology-driver (quote ,F) ,F))


(defun doall ()
  (tautology-p  f1)  		  
  (tautology-p  f2)   
  (tautology-p  f3)
  (tautology-p  f4)  
  (tautology-p  f5)   
  (tautology-p  f6)
  (tautology-p  f7)  
  (tautology-p  f8)   
  (tautology-p  f9)
  (tautology-p  f10)  
  (tautology-p  f11)   
  (tautology-p  f12)
  (tautology-p  f13)  
  (tautology-p  f14)   
  (tautology-p  f15)
  (tautology-p  f16)
  (tautology-p  f17)   
  (tautology-p  f18)   
  (tautology-p  f19)   
  (tautology-p  f20) 
  (tautology-p  f21)
  (tautology-p  f22)  
  (tautology-p  f23) 
  (tautology-p  f24) 
  (tautology-p  f25)
  (tautology-p  f26)
  (tautology-p  f27)
  (tautology-p  f28)
  (tautology-p  f29)
  (tautology-p  f30))

