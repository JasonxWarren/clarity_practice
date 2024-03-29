
;; math
(impl-trait .divider-trait.divider)
(impl-trait .multiplier-trait.multiplier)

(define-read-only (divide-2 (a uint))
  (ok (/ a u2))
)
;; (contract-call? .math divide-2 u100)

(define-read-only (divide-3 (a uint))
  (ok (/ a u3))
)
;; (contract-call? .math divide-3 u90)

(define-read-only (multiply-2 (a uint) (b uint))
  (ok (* a b))
)
;; (contract-call? .math multiply-2 u9 u10)

(define-read-only (multiply-3 (a uint) (b uint) (c uint))
  (ok (* (* a b) c))
)
;; (contract-call? .math multiply-3 u9 u10 u10)
