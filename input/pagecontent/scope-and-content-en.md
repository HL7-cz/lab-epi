## Purpose of the Document

The purpose of this **Implementation Guide** is to define and describe a **data interface based on HL7 FHIR**, designed for **electronic reporting of microbiological test results** from laboratory information systems to the central **Infectious Diseases Information System (ISIN)**, thereby supporting data collection within the **SCOPE-IS** project.  

The guide focuses on the essential data elements required for reporting and also considers relevant legal, regulatory, and organizational aspects.

## Scope of the Document

This Implementation Guide describes the design of an **HL7 FHIR-based interface** for electronic reporting of microbiological test results.  

It **does not cover** the transport layer, authentication, security mechanisms, or specific implementation details — these are subject to separate technical and integration specifications.  

The document focuses on:
- the structure and definitions of data for profiling the content of the report in the HL7 FHIR environment,  
- an overview of related legal, regulatory, and organizational aspects.

## Included Areas

This Implementation Guide includes:
- the definition of the content of electronic reporting of microbiological findings in the HL7 FHIR format,  
- the description of actors (laboratory, requester, collection site, patient) and their identification,  
- the design of the dataset based on the data elements described in the source document (material, method, method details, agent, results, antibiotic susceptibility),  
- recommendations for the use of existing national code systems and FHIR profiles consistent with the laboratory result report standard,  
- the definition of legal, regulatory, and organizational aspects relevant to infectious disease reporting.

## Excluded Areas

This Implementation Guide **does not include**:
- the design of the transport layer and communication protocols (message transmission, authentication, encryption),  
- the design of internal processes and data models of laboratory information systems,  
- the detailed design of FHIR profiles, JSON or XML structures, and specific API interfaces (these will be addressed in subsequent technical specifications),  
- reporting from sources other than laboratories (e.g., outpatient physicians, inpatient facilities).