// =======================================
// ServiceRequest – žádanka (pokud existuje)
// =======================================
Profile: CZ_Lab_ServiceRequest
Parent: ServiceRequest
Id: cz-lab-servicerequest
Title: "ServiceRequest – CZ Lab Order (message context)"
Description: "Elektronická žádanka; pokud existuje číslo žádanky"
* ^status = #active
* status 1..1
* intent 1..1
* code 0..1 // účel vyšetření/typ požadavku (pokud se používá)
* subject 1..1
* subject //only Reference(CZ_Lab_Patient)
* requester 0..1
* reasonCode 0..* MS // (12) diagnozaKod (MKN-10)
* reasonCode from $MKN10 (preferred)
* identifier 1..* MS // (2) cisloZadanky
