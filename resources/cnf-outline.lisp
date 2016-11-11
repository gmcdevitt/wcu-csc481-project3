;;;  OUTLINE OF CODE TO DO CNF IN PROPOSITIONAL LOGIC
;;;  Nov 12, 14.  RWW
;;;============================================================================
;;; CONSTANTS

(defconstant *variables*             '(P Q R S T U))
(defconstant *negation-symbol*       '-)
(defconstant *conjunction-symbol*    '&)
(defconstant *disjunction-symbol*    'v)
(defconstant *conditional-symbol*    '->)
(defconstant *bi-conditional-symbol* '<->)


;;;============================================================================
;;; SELECTORS
;;;---------------------------------------------
;;; Operators

(defun negation-operator (F) 

(defun conjunction-operator (F) 

(defun disjunction-operator (F) 

(defun conditional-operator (F) 

(defun bi-conditional-operator (F)

;;;---------------------------------------------
;;; Operands
  
(defun negation-operand (F)

(defun conjunction-operand-1 (F) 
(defun conjunction-operand-2 (F) 

(defun disjunction-operand-1 (F) 
(defun disjunction-operand-2 (F) 

(defun conditional-operand-1 (F) 
(defun conditional-operand-2 (F) 

(defun bi-conditional-operand-1 (F) 
(defun bi-conditional-operand-2 (F) 


;;;===================================================================
;;; INQUISITORS

(defun variable-p (F) 

(defun negation-p (F)
  
(defun double-negation-p (F)
  
(defun conjunction-p (F)

(defun disjunction-p (F)

(defun conditional-p (F)  

(defun bi-conditional-p (F)

;;;===================================================================
;;; CONSTRUCTORS

(defun make-variable (F)

(defun make-negation (F)

(defun make-disjunction (LF RF)

(defun make-conjunction (LF RF)

(defun make-conditional(LF RF)
	
(defun make-bi-conditional (LF RF)

;;;====================================================================
;;; REMOVE ARROWS
(defun remove-arrows (F)

;;;====================================================================
;;; BRING IN NEGATION, REMOVING DOUBLE NEGATIONS AS WE GO
(defun bring-in-negation (F)
	
;;;====================================================================
;; This function is a little trickier than you expect
(defun distribute-disjunction (F) 

;; helper function
(defun distribute-disjunction-2 (F) 
;;;===================================================================

(defun cnf (F)
  (distribute-disjunction(bring-in-negation(remove-arrows F))))

;;;===================================================================
;;; END OF FILE
