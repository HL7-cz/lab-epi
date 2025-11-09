// =========================
// Patient – CZ Core + RID
// =========================
Profile: CZ_Lab_Patient
Parent: CZ_PatientCore
Id: cz-lab-patient
Title: "Patient – CZ Lab (RID)"
Description: "Pacient s RID, adresou a kontaktem; pro message kontext"
* ^status = #active
* obeys inv-patient-rid-bd
* identifier 1..* MS
//* identifier contains RID 1..1
* birthDate 1..1 MS        // (5) datumNarozeni
* address 0..1 MS
* telecom 0..* MS // (10) Telefon
