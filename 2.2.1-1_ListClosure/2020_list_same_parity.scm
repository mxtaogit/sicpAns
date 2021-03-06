(define (same-parity . l)
  (if (= (remainder (car l) 2) 0)
    (even-l l)
    (odd-l l)))
(define (even-l l)
  (define (filter-even li even-li)
    (if (null? li)
      even-li
      (filter-even (cdr li)
                   (if (= (remainder (car li) 2) 0)
                     (cons (car li) even-li)
                     even-li))))
  (reverse (filter-even l '())))
(define (odd-l l)
  (define (filter-odd li odd-li)
    (if (null? li)
      odd-li
      (filter-odd (cdr li)
                   (if (= (remainder (car li) 2) 1)
                     (cons (car li) odd-li)
                     odd-li))))
  (reverse (filter-odd l '())))

