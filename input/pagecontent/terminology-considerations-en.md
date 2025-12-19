## Terminology – Code Systems

Laboratory test code systems are essential for configuring electronic reporting.  
Within the working group, several independent code systems were defined, representing subsets of items from the national code system **NČLP**.

Defined code systems:
- Material codes (sample origin)
- Basic examination method codes
- Agent codes (detected microorganisms)
- Specific method target codes

###  Material Code System

This code system is a subset of items from the NČLP microbiology system list  
**[NCMPSYST](https://www.dastacr.cz/dasta/hypertext/ZAVINACGCSMB_N.htm)**.  

The list of items is provided in **Annex 1**.

### Basic Method Code System

This code system is a subset of items from the NČLP procedure list  
**[NCLPPROC](https://www.dastacr.cz/dasta/hypertext/ZAVINACGCP_PNNA.htm)**.  

The list of items is provided in **Annex 1**.

### Agent Code System

This code system reflects the infectious agents monitored under **disease surveillance**.  
It is a subset of items from the NČLP microbiology agent list  
**[NCMPAG](https://www.dastacr.cz/dasta/hypertext/ZAVINACGAGENSSEZ.htm)**.  

The code system is mapped to **SNOMED CT** and may be extended as needed.  
The list of items is provided in **Annex 1**.

For the pilot project under **SCOPE-IS**, the following infectious agents were selected:

| ICD-10 Code | Diagnosis |
|--------------|------------|
| A02.0 | Salmonella enteritis |
| A04.5 | Enteritis, agent: *Campylobacter* |
| A37.0 | Whooping cough, agent: *Bordetella pertussis* |
| B05 | Measles |
| B15 | Acute hepatitis A |
| B16 | Acute hepatitis B |
| B17.1 | Acute hepatitis C |
| B17.2 | Acute hepatitis E |

### Antibiotic Susceptibility Code System

This code system is a subset of items from the NČLP code list for antibiotic susceptibility assessment  
**[LMHCN](https://dastacr.cz/dasta/nclp_data/ds_DS/lmhcn.xml)**.  

For early warning reporting purposes, the key values are:

| Code | Meaning |
|------|----------|
| C | susceptible |
| I | susceptible, increased exposure |
| R | resistant |