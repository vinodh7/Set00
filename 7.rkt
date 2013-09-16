;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data definition

;; circumference : Number -> Number

;; GIVEN: the radius r of a circle
;; RETURNS: its circumference, using the formula 2*pi*r

; Design Strategy : Domain Knowledge

;; Examples
; (circumference 1) => 6.283185
; (circumference 0) => 0

(define (circumference r)
  (* 2 (* pi r))
  )

;; Test Cases

(require rackunit)
(test-case "Circumference of a circle"
     (check-= (circumference 1) 6.283185 0.001 "Incorrect Result")      
     (check-= (circumference 0) 0 0.001 "Incorrect Result")
     )

