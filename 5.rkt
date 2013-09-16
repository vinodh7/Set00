;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data definition : None

;; sq : Number -> Number

;; GIVEN: A whole number
;; RETURNS: Square of the given number

;; Design Strategy: Domain Knowledge

;; Examples 
; (sq 0) => 0
; (sq 5) => 25
; (sq -1) => 1

(define (sq n)
  (* n n))

;; Test Cases
(require rackunit)
(test-case "square test"
           (check-equal? (sq 5) 25 "Incorrect Result")
           (check-equal? (sq 0) 0 "Incorrect Result")
           (check-equal? (sq -1) 1 "Incorrect Reuslt")
           )


