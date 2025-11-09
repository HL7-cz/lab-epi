// =========================================================
// Observation – výsledek (qual/quant) + AST (citlivosti)
// =========================================================
Profile: CZ_LabResult_Obs
Parent: CZ_ObservationResultLaboratory
Id: cz-labresult-obs
Title: "Observation – CZ Lab Result (qual/quant, AST)"
Description: "Jednotlivé výsledky včetně kvalitativních a kvantitativních hodnot; AST modelováno per antibiotikum"
* ^status = #active
* obeys inv-obs-qty-ucum
* obeys inv-obs-cutoff
* status 1..1
* code 1..1 MS     // (20) Metoda/analyt (kóduj dle NČLP/LOINC)
* method 0..1 MS   // (21) metodaCil (upřesnění metody)
* subject 1..1 MS
* subject only Reference(CZ_Lab_Patient)
* effective[x] 1..1 MS // (18) datumVysetreni
* performer 1..* MS
* performer only Reference(CZ_Lab_Organization)
* specimen 1..1 MS
* specimen only Reference(CZ_Lab_Specimen)
// Výsledek:
// - kvalitativní: valueCodeableConcept (např. Detected/Not detected podle NCLP/LOINC VS)
// - kvantitativní: valueQuantity + UCUM + referenceRange(low/high) jako cut-off
* value[x] 0..1 MS
* interpretation 0..* // doplňující interpretace
* referenceRange 0..* MS
