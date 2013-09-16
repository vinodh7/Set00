;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data Definition : None

;; tip: Number Number -> Number

;; GIVEN: The amount of bill and the percentage of tip
;; RETURNS: The amount of tip in dollars

;; Examples:
; (tip 10 0.15) => 1.5
; (tip 20 0.17) => 3.4 D

(define (tip t p)
  (* t p))


;; Test Cases
(require rackunit)
(test-case "tip test"
           (check-= (tip 10 0.15) 1.5 .001 "Incorrect Result")
           (check-= (tip 20 0.17) 3.4 .001 "Incorrect Result")
           )