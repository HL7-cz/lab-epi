// ===================================
// MedicationStatement – ATB/ATV před odběrem
// ===================================
Profile: CZ_Lab_MedicationStatement
Parent: MedicationStatement
Id: cz-lab-medicationstatement
Title: "MedicationStatement – ATB/ATV před odběrem"
Description: "Léčba před odběrem – adherence, datum vystavení, SUKL kód"
* ^status = #active
* status 1..1
* subject 1..1
* subject //only Reference(CZ_Lab_Patient)
//* adherence 0..1
//* adherence.coding 0..1
//* adherence.coding from http://hl7.org/fhir/ValueSet/medication-statement-adherence (preferred)
* effective[x] 0..1 // (14) datumReceptu (pokud dává smysl)
* medication[x] 1..1
* medicationCodeableConcept from $SUKL (preferred)
