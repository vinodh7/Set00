;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data Definition : None

;; quadratic-root : Number Number Number -> Number

;; GIVEN : a number a, a number b and a number c
;; RETURNS : Root of the equation using the given numbers

;; Design Strategy : Domain Knowledge

;; Examples 
; (quadratic-root  1 4 2) => -0.585786
; (quadratic-root -1 2 1) => -0.414214
; (quadratic-root 1 -4 3) => 3

(define (quadratic-root a b c)
  (/ (+ (* b -1) (sqrt(- (* b b) (* 4 (* a c))))) (* 2 a))
  )

;;Test cases
(require rackunit)
(test-case "roots of quadratic equation test"

          (check-= (quadratic-root 1 4 2) -0.5857 0.001 "Incorrect Result")
          (check-= (quadratic-root -1 2 1) -0.4142 0.001 "Incorrect Result")
          (check-= (quadratic-root 1 -4 3) 3 .001 "Incorrect Result")
)
           
