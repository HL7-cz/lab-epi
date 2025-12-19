// -------------------------------------------------------------------------------
//  Concept Map – SLR Header → CZ Lab (message)
//  File: SLRHeaderEn-to-CZLab.fsh
// -------------------------------------------------------------------------------
Instance: SLRHeaderEn-to-CZLab
InstanceOf: ConceptMap
Usage: #definition
* name = "SLRHeaderEnToCZLab"
* title = "SLR Header (EN) to CZ Lab (message) mapping"
* status = #draft
* experimental = true
* description = "Maps SLR Header logical model to CZ Lab message profiles"
* purpose = "Shows how header data elements map to MessageHeader/DiagnosticReport/etc."
* sourceUri = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* targetUri = "https://example.org/fhir/ImplementationGuide/cz-lab-message"

// -------------------- Group 1: Header → MessageHeader --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* group[=].target = Canonical(CZ_MessageHeaderLabReport)

* group[=].element[+].code = #SLRHeaderEn.header
* group[=].element[=].display = "Header root"
* group[=].element[=].target.code = #MessageHeader
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRHeaderEn.header.informationRecipient
* group[=].element[=].display = "Information recipient"
* group[=].element[=].target.code = #MessageHeader.destination.endpoint
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Destination system that should receive the message."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.dateTime
* group[=].element[=].display = "Report date and time"
* group[=].element[=].target.code = #MessageHeader.timestamp
* group[=].element[=].target.equivalence = #relatedto

// -------------------- Group 2: Header → DiagnosticReport --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRHeaderEn.header.subject
* group[=].element[=].display = "Patient/subject"
* group[=].element[=].target.code = #DiagnosticReport.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Reference(Patient) → CZ_Lab_Patient"

* group[=].element[+].code = #SLRHeaderEn.header.metadata.documentId
* group[=].element[=].display = "Document Id"
* group[=].element[=].target.code = #DiagnosticReport.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Business identifier of the lab report (for updates)."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.type
* group[=].element[=].display = "Document type"
* group[=].element[=].target.code = #DiagnosticReport.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Prefer LOINC 11502-2 (Laboratory report)."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.status
* group[=].element[=].display = "Document status"
* group[=].element[=].target.code = #DiagnosticReport.status
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRHeaderEn.header.metadata.dateTime
* group[=].element[=].display = "Report date and time"
* group[=].element[=].target.code = #DiagnosticReport.issued
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRHeaderEn.header.metadata.language
* group[=].element[=].display = "Language"
* group[=].element[=].target.code = #DiagnosticReport.language
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRHeaderEn.header.author
* group[=].element[=].display = "Author"
* group[=].element[=].target.code = #DiagnosticReport.performer
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Organization or Practitioner/Role who produced the report."

* group[=].element[+].code = #SLRHeaderEn.header.author
* group[=].element[=].display = "Author (interpreter)"
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter
* group[=].element[=].target.equivalence = #relatedto

// Items more typical for a document Composition – marked as unmatched in message pattern
* group[=].element[+].code = #SLRHeaderEn.header.legalAuthenticator
* group[=].element[=].display = "Legal authenticator"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "No direct element in message pattern; would map to Composition.attester(mode='legal')."

* group[=].element[+].code = #SLRHeaderEn.header.validator
* group[=].element[=].display = "Result validator"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "No direct element in DR; optional business attribute."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.title
* group[=].element[=].display = "Document title"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Composition.title in document paradigm."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.custodian
* group[=].element[=].display = "Report custodian"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Composition.custodian in document paradigm."

* group[=].element[+].code = #SLRHeaderEn.header.metadata.confidentiality
* group[=].element[=].display = "Confidentiality"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Could be conveyed via meta.security on DR/Bundle; no fixed target here."

// -------------------- Group 3: Header → Patient / Organization --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* group[=].target = Canonical(CZ_Lab_Patient)

* group[=].element[+].code = #SLRHeaderEn.header.subject.identifier
* group[=].element[=].display = "RID (patient identifier)"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "system=https://ncez.mzcr.cz/fhir/sid/rid"

* group[=].element[+].code = #SLRHeaderEn.header.subject.birthDate
* group[=].element[=].display = "Birth date"
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRHeaderEn.header.subject.address
* group[=].element[=].display = "Address (incl. RÚIAN ext)"
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRHeaderEn.header.subject.telecom
* group[=].element[=].display = "Phone"
* group[=].element[=].target.code = #Patient.telecom
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* group[=].target = Canonical(CZ_Lab_Organization)

* group[=].element[+].code = #SLRHeaderEn.header.informationRecipient.organization
* group[=].element[=].display = "Recipient organization"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "IČO/PCZ/ICP identifiers as per CZ_OrganizationCore."

// -------------------- Group 4: Header → Coverage (payer) --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRHeaderEn"
* group[=].target = Canonical(CZ_Lab_Coverage)

* group[=].element[+].code = #SLRHeaderEn.header.payer
* group[=].element[=].display = "Health insurance/payment"
* group[=].element[=].target.code = #Coverage
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Coverage.payor → Organization (insurer). Link via ServiceRequest/Claim if used."
