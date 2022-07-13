
;; counter
;; <add a description here>
;; get count so anyone can read the counter function
;; count-up only the contract owner can call this one
;; constants
;;
(define-constant contract-owner tx-sender)

(define-data-var count uint u200)

(define-read-only (get-count)
(var-get count)
)
(define-public (count-up) 
(begin
(asserts! (is-eq contract-owner tx-sender) (err false))
(ok (var-set count (+ (var-get count)  u5)))
)
)



;; public functions
;;
