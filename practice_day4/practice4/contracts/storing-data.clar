
;; storing-data
;; <add a description here>

;; constants
;;
(define-constant CONTRACT_DEPLOYER tx-sender)

;; (define-constant CONTRACT_OWNER (as-contract tx-sender) tx-sender)

(define-constant ERR_INVALID_OWNER (err u100))

(define-constant MINT_COUNT u2000)

(define-data-var counter uint u0)

(define-data-var name (string-utf8 20) u"Hello Stackers")

(define-data-var listing (list 20 uint) (list u0 u2 u4))

(define-data-var responses (response bool (string-ascii 20)) (err "This is an error"))

(var-set listing (list u30 u40))
(var-get listing)
(var-get responses)
;; data maps and vars
;;

;; private functions
;;

;; public functions
;;
