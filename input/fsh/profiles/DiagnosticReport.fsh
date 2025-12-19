// ========================================================
// DiagnosticReport – navazuje na CZ Lab diagnostický report
// ========================================================
Profile: CZ_LabReport_DR
Parent: CZ_DiagnosticReportLab
Id: cz-labreport-dr
Title: "DiagnosticReport – CZ Lab Report (message payload)"
Description: "Diagnostický report jako hlavní payload – agregace Observations + odkazy na Pacienta, Vzorek, Žádanku a Laboratoř"
* ^status = #active
* status 1..1
* code 1..1
* code from http://loinc.org (preferred) // 11502-2 apod. pro 'Laboratory report'
* identifier 0..* MS // (1) cisloVysledku
* subject 1..1 MS
* subject only Reference(CZ_Lab_Patient)
* specimen 1..* MS
* specimen only Reference(CZ_Lab_Specimen)
* performer 1..* MS
* performer only Reference(CZ_Lab_Organization)
* issued 1..1 MS   // (44) datumVydani
* effective[x] 0..0 // čas DR se používá přes issued; čas měření je v Observation
* basedOn 0..1 MS
* basedOn //only Reference(CZ_Lab_ServiceRequest) // (2) cisloZadanky
* result 1..* MS
* result only Reference(CZ_LabResult_Obs)
* conclusionCode 0..* // (23) kvalitativní závěry (není náhrada za Observation)
