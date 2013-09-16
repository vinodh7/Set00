;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data definition : None

;; twolargeint-sum : Number Number Number -> Number

;; GIVEN : Three integers a b and c
;; RETURNS : Sum of two large integers out of a b and c

;; Design Strategy : Domain Knowledge

;; Examples
; (twolargeint-sum 2 4 5) => 9
; (twolargeint-sum 2 -4 5) => 7
; (twolargeint-sum 2 4 -5) => 6

(define (twolargeint-sum a b c)
  (cond [(and (or (< a b) (= a b)) (or (< a c) (= a c))) (+ b c)]
        [(and (or (< b a) (= b a)) (or (< b c) (= b c))) (+ a c)]
        (else (+ a b))  
  ))


;; Test Cases
(require rackunit)
(test-case "Sum of two large numbers out of 3 numbers"
           (check-equal? (twolargeint-sum 2 4 5) 9 "Incorrect Number")
           (check-equal? (twolargeint-sum 2 -4 5) 7 "Incorrect Number")
           (check-equal? (twolargeint-sum 2 4 -5) 6 "Incorrect Number")
           (check-equal? (twolargeint-sum 5 3 3) 8 "Incorrect Number")
           )



