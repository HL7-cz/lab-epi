// ===================================
// Practitioner – žadatel / laboratoř
// ===================================
Profile: CZ_Lab_Practitioner
Parent: CZ_PractitionerCore
Id: cz-lab-practitioner
Title: "Practitioner – CZ Lab"
Description: "Zdravotnický pracovník (např. kontaktní osoba žadatele / laboratoře)"
* ^status = #active
* name 1..1
* telecom 0..*

// Lze doplnit CZ PractitionerRole, pokud ho v IG používáš
