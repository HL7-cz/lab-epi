// =========================
// Specimen – vzorek
// =========================
Profile: CZ_Lab_Specimen
Parent: CZ_SpecimenLab
Id: cz-lab-specimen
Title: "Specimen – CZ Lab"
Description: "Vzorek; identifikace vzorku + typ materiálu + datum odběru + odběrové místo"
* ^status = #active
* identifier 1..* MS   // (3) cisloVzorku
* type 1..1 MS         // (19) Materiál (národní číselník)
* subject 1..1
* subject only Reference(CZ_Lab_Patient)
* collection.collected[x] 1..1 MS // (17) datumOdberu
* collection.collector 0..1
* collection.bodySite 0..0
