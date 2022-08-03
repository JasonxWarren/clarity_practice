
;; nft
(impl-trait .sip009.sip009)

(define-non-fungible-token my-nft uint)

(define-constant MINT_PRICE u100)
(define-constant WALLET_1 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; creator
(define-constant WALLET_2 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5) ;; artist

(define-data-var last-token-id uint u0)

;; (define-data-var URI (string-ascii 20) "ipfs://djflkdjalkdjflksdajfdl/{id}")

(define-read-only (get-last-token-id )
    (ok (var-get last-token-id))

)

(define-read-only (get-token-uri (id uint))
    (ok none)
)

(define-read-only (get-owner (id uint))
(ok (nft-get-owner? my-nft id))
)

(define-public (transfer (id uint) (sender principal) (receiver principal)) 
    (nft-transfer? my-nft id sender receiver)
 
)
(define-public (mint (recipient principal))
    (let
     (
         (id (+ (var-get last-token-id) u1))
         (portion-of-total (/ MINT_PRICE u2))
     )
     (try! (stx-transfer? portion-of-total recipient WALLET_1))
     (try! (stx-transfer? portion-of-total recipient WALLET_2))
     (try! (nft-mint? my-nft id recipient))
    )
)