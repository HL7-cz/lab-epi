// =========================
// Invariants (rules)
// =========================

// 1) Message bundle musí mít jeden MessageHeader a DR ve focus
Invariant: inv-msg-one-mh
Description: "Bundle(message) MUST contain exactly one MessageHeader as first entry"
Severity: #error
Expression: "entry.first().resource is MessageHeader"

Invariant: inv-msg-focus-dr
Description: "MessageHeader.focus must reference a DiagnosticReport"
Severity: #error
Expression: "focus.exists() and focus.resolve() is DiagnosticReport"

// 2) Kvantitativní výsledek musí mít UCUM jednotku a kód
Invariant: inv-obs-qty-ucum
Description: "If Observation.valueQuantity is present, unit must be UCUM with code"
Severity: #error
Expression: "valueQuantity.exists() implies (valueQuantity.system = 'http://unitsofmeasure.org' and valueQuantity.code.exists())"

// 3) Pokud je vysledek kvantitativní, cut-off v referenceRange
Invariant: inv-obs-cutoff
Description: "If quantitative result, provide referenceRange.low/high as cut-off when relevant"
Severity: #warning
Expression: "valueQuantity.exists() implies referenceRange.exists()"

// 4) Patient: RID + birthDate jako kontrolní pár
Invariant: inv-patient-rid-bd
Description: "Patient SHOULD carry RID and birthDate"
Severity: #warning
Expression: "identifier.where(system = 'https://ncez.mzcr.cz/fhir/sid/rid').exists() and birthDate.exists()"
