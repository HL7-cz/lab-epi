// -------------------------------------------------------------------------------
//  Concept Map – SLR Body → CZ Lab (message)
//  File: SLRBodyEn-to-CZLab.fsh
// -------------------------------------------------------------------------------
Instance: SLRBodyEn-to-CZLab
InstanceOf: ConceptMap
Usage: #definition
* name = "SLRBodyEnToCZLab"
* title = "SLR Body (EN) to CZ Lab (message) mapping"
* status = #draft
* experimental = true
* description = "Maps SLR Body logical model to CZ Lab message profiles"
* purpose = "Shows how body data elements map to ServiceRequest/Specimen/DiagnosticReport/Observation/etc."
* sourceUri = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* targetUri = "https://example.org/fhir/ImplementationGuide/cz-lab-message"

// -------------------- Group 1: Order (ServiceRequest) --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_Lab_ServiceRequest)

* group[=].element[+].code = #SLRBodyEn.body.order.identifier
* group[=].element[=].display = "Order number"
* group[=].element[=].target.code = #ServiceRequest.identifier
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRBodyEn.body.order.reason
* group[=].element[=].display = "Order reason (diagnosis)"
* group[=].element[=].target.code = #ServiceRequest.reasonCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ICD-10 (MKN-10) where applicable."

// Link into DR
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRBodyEn.body.order
* group[=].element[=].display = "Order"
* group[=].element[=].target.code = #DiagnosticReport.basedOn
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Reference(ServiceRequest)."

// -------------------- Group 2: Specimen --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_Lab_Specimen)

* group[=].element[+].code = #SLRBodyEn.body.specimen.sampleNumber
* group[=].element[=].display = "Sample identifier"
* group[=].element[=].target.code = #Specimen.identifier
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRBodyEn.body.specimen.collectionDate
* group[=].element[=].display = "Collection date/time"
* group[=].element[=].target.code = #Specimen.collection.collectedDateTime
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRBodyEn.body.specimen.material
* group[=].element[=].display = "Material (Specimen type)"
* group[=].element[=].target.code = #Specimen.type
* group[=].element[=].target.equivalence = #equivalent

// Link Specimen into DR and Obs
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRBodyEn.body.specimen
* group[=].element[=].display = "Specimen info"
* group[=].element[=].target.code = #DiagnosticReport.specimen
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabResult_Obs)

* group[=].element[+].code = #SLRBodyEn.body.specimen
* group[=].element[=].display = "Specimen info"
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #relatedto

// -------------------- Group 3: Results (Observations) --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabResult_Obs)

* group[=].element[+].code = #SLRBodyEn.body.result.examDate
* group[=].element[=].display = "Examination date/time"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRBodyEn.body.result.method
* group[=].element[=].display = "Method"
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRBodyEn.body.result.analyteOrAgent
* group[=].element[=].display = "Analyte / Agent"
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Tested analyte/agent (e.g., detection of pathogen)."

* group[=].element[+].code = #SLRBodyEn.body.result.qualitativeResult
* group[=].element[=].display = "Qualitative result"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SLRBodyEn.body.result.quantitativeResult.value
* group[=].element[=].display = "Quantitative value"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Use UCUM units."

* group[=].element[+].code = #SLRBodyEn.body.result.quantitativeResult.unit
* group[=].element[=].display = "Unit (UCUM)"
* group[=].element[=].target.code = #Observation.valueQuantity.unit
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRBodyEn.body.result.cutOff
* group[=].element[=].display = "Cut-off"
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Model cut-off in referenceRange.low/high."

// AST (antibiotic susceptibilities) – per-antibiotic Observation
* group[=].element[+].code = #SLRBodyEn.body.result.antibiotic
* group[=].element[=].display = "Antibiotic susceptibility (S/I/R)"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Model as multiple Observations (code=susceptibility test, value=S/I/R)."

// Link Observations into DR
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRBodyEn.body.result
* group[=].element[=].display = "Results"
* group[=].element[=].target.code = #DiagnosticReport.result
* group[=].element[=].target.equivalence = #relatedto

// -------------------- Group 4: Clinical context --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_Lab_MedicationStatement)

* group[=].element[+].code = #SLRBodyEn.body.clinicalInformation.priorTherapy
* group[=].element[=].display = "Antiviral/antibiotic therapy before collection"
* group[=].element[=].target.code = #MedicationStatement
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Use adherence/effective[x]/medicationCodeableConcept (SÚKL)."

* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_Lab_Patient)

* group[=].element[+].code = #SLRBodyEn.body.clinicalInformation.symptomOnset
* group[=].element[=].display = "Symptom onset date"
* group[=].element[=].target.code = #Patient.extension:symptom-onset
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Prefer Condition.onsetDateTime or a dedicated Observation; extension here only if required."

// -------------------- Group 5: Performer (laboratory) --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_Lab_Organization)

* group[=].element[+].code = #SLRBodyEn.body.laboratory.organizationIdentifiers
* group[=].element[=].display = "Lab organization IČO/PCZ/ICP"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRBodyEn.body.laboratory
* group[=].element[=].display = "Performing laboratory"
* group[=].element[=].target.code = #DiagnosticReport.performer
* group[=].element[=].target.equivalence = #relatedto

// -------------------- Group 6: Presented form & attachments --------------------
* group[+].source = "https://example.org/fhir/StructureDefinition/SLRBodyEn"
* group[=].target = Canonical(CZ_LabReport_DR)

* group[=].element[+].code = #SLRBodyEn.body.presentedForm
* group[=].element[=].display = "Presented form (PDF, etc.)"
* group[=].element[=].target.code = #DiagnosticReport.presentedForm
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #SLRBodyEn.body.attachments
* group[=].element[=].display = "Additional attachments"
* group[=].element[=].target.code = #DiagnosticReport.media.link.content.attachment
* group[=].element[=].target.equivalence = #relatedto
