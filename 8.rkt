;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data definition : None

;; circle-area : Number  -> Numbe

;; GIVEN : Radius of the circle
;; RETURNS : Area circle from its radius, using the formula 3.1414 *r^2

;; Design strategy : Domain Knowledge

;; Examples 
; (circle-area 1) => 3.1415
; (circle-area 5) => 78.5375
; (circle-area 7) => 153.9335

(define (circle-area r)
  (* 3.1415 (* r r))) 


;; Test cases
(require rackunit)
(test-case "Area of circle"
      (check-= (circle-area 1) 3.1415 0.001 "Incorrect Result")
      (check-= (circle-area 5) 78.5375 0.001 "Incorrect Result")
      (check-= (circle-area 7) 153.9335 0.001 "Incorrect Result")
      )

