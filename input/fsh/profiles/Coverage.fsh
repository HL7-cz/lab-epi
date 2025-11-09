// ===================================================
// Volitelně Coverage – plátce (pojišťovna) a kód poj.
// ===================================================
Profile: CZ_Lab_Coverage
Parent: Coverage
Id: cz-lab-coverage
Title: "Coverage – zdravotní pojišťovna"
Description: "Pokrytí pojištěním pro vykazování (zdravotní pojišťovna, kód)"
* ^status = #active
* beneficiary 1..1
* beneficiary //only Reference(CZ_Lab_Patient)
* payor 1..1
* payor //only Reference(CZ_Lab_Organization)
