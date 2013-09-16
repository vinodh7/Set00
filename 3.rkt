;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data definition : None

;; f->c : Number -> Number

;; GIVEN : A temperature in degrees Fahrenheit as an argument
;; RETURNS : The equivalent temp erasture in degree celsius

;; Design Strategy : Domain Knowledge

;; Examples:
;  (f->c 32) => 0
;  (f->c 100) => 37.77

(define (f->c ft)
  (* (- ft 32) (/ 5 9))) 

;; Test cases
(require rackunit)
   

(test-case "f->c test" 
           (check-equal? (f->c 32) 0 "Incorrect result")
           (check-= (f->c 100) 37.77 .01 "Incorrect result")
           )

  