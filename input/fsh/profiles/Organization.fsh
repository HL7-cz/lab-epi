// ===================================
// Organization – žadatel / laboratoř
// ===================================
Profile: CZ_Lab_Organization
Parent: CZ_OrganizationCore
Id: cz-lab-organization
Title: "Organization – CZ Lab (IČO/PCZ/ICP)"
Description: "Organizace (žadatel, laboratoř, odběrové místo) s identifikátory IČO/PCZ/ICP"
* ^status = #active
* identifier 1..* MS
//* identifier contains ICO 1..1 and ICP 0..1

* telecom 0..*  // (41) kontaktní telefon
