
;; nft
(impl-trait .sip009.sip009)

(define-non-fungible-token my-nft uint)

(define-constant MINT_PRICE u100)
(define-constant WALLET_1 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; creator
(define-constant WALLET_2 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5) ;; artist

(define-data-var last-token-id uint u0)

(define-read-only (get-last-token-id )
    (ok (var-get last-token-id))

)


