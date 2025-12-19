// ======================================
// MessageHeader (custom CZ specialization)
// ======================================
Profile: CZ_MessageHeaderLabReport
Parent: MessageHeader
Id: cz-messageheader-lab-report
Title: "MessageHeader – CZ Lab Report (message)"
Description: "Message header pro hlášení laboratorního výsledku (message paradigma)"
* ^status = #active
* event[x] only Coding
* eventCoding.system 1..1
* eventCoding.system = $czEvents (exactly)
* eventCoding.code 1..1
* focus 1..1
* focus only Reference(CZ_LabReport_DR)
* source.endpoint 1..1
* destination 1..1
* destination.endpoint 1..1

// volitelně odlišíš typy zpráv přes required binding na lokální VS událostí
