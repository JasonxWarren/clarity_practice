
;; cargo
;; <add a description here>

;; constants
(define-constant CONTRACT-OWNER tx-sender)
;; possible statuses for a shipment
(define-constant STATUS (list "pending" "in transit" "shipped"))

(define-data-var last-shipment-id uint u0)

(define-map Shipments uint {
    from: (string-ascii 25),
    to: (string-ascii 25),
    shipper: principal,
    receiver: principal,
    status: (string-ascii 25),
})

(define-public (create-shipment (ship-from (string-ascii 25)) (ship-to (string-ascii 25)) (receiver principal))
(let (
    (new-shipment-id (+ (var-get last-shipment-id) u1))
)
(map-set Shipments new-shipment-id {
    from: ship-from,
    to: ship-to,
    shipper: tx-sender,
    receiver: receiver,
    status: "pending",
})
(var-set last-shipment-id new-shipment-id)
(ok true)
)
)

(define-read-only (get-shipment (shipment-id uint))
(ok (map-get? Shipments shipment-id))
)

;; existing shipment -id
;; shipment was created by the shipper

(define-public (update-shipment (shipment-id uint) (status (string-ascii 25)))
    (let 
    (
        (existing-shipment (map-get? Shipments shipment-id))
    )
    (ok true)
    )
)
