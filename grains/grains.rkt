#lang racket

(provide square total)

(define (square n)
  (expt 2 (sub1 n)))

(define (total)
  (let ([ns (stream->list (in-range 1 65))])
    (foldr + 0 (map square ns))))
