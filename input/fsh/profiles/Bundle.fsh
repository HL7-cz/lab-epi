// ======================================
// Bundle (message)
// ======================================
Profile: CZ_BundleLabReportMessage
Parent: Bundle
Id: cz-bundle-lab-report-message
Title: "Bundle (message) – CZ Lab Report"
Description: "Message bundle s MessageHeader a DiagnosticReport + souvisejícími zdroji"
* ^status = #active
* obeys inv-msg-one-mh
* type = #message (exactly)
* entry 2..*
* timestamp 1..1
* entry.resource 1..1
* entry.fullUrl 1..1
* entry.link 0..0

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "První slice je MessageHeader, další jsou payload resources."

* entry contains
    header 1..1 and
    body 1..*

* entry[header].resource only CZ_MessageHeaderLabReport
* entry[header].fullUrl 1..1
* entry[header].resource 1..1

* entry[body].resource only
    CZ_LabReport_DR or
    CZ_LabResult_Obs or
    CZ_Lab_Specimen or
    CZ_Lab_ServiceRequest or
    //CZ_Lab_Patient or
    //CZ_Lab_Organization or
    //CZ_Lab_Practitioner or
    CZ_Lab_Coverage
