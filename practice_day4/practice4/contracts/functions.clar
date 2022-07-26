
;; functions
;; <add a description here>

;; constants
;;
(define-data-var even-values uint u0)

(define-public (count-even (number uint))
    (begin
    (var-set even-values (+ (var-get even-values) u1))

    (if (is-eq (mod number u2) u0)
      (ok "the number is even")
      (err "the number is uneven")
    )
    )
)

;; data maps and vars
;;

;; private functions
;;

;; public functions
;;
