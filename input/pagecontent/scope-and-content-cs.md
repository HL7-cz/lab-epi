## Účel dokumentu

Účelem této implementační příručky je definovat a popsat **datové rozhraní ve formátu HL7 FHIR** určené pro **elektronické hlášení výsledků mikrobiologických vyšetření** z laboratorních informačních systémů do centrální databáze **Informačního systému infekčních nemocí (ISIN)**, čímž podpoří sběr dat v rámci projektu **SCOPE-IS**.  

Příručka se zaměřuje na nezbytné datové prvky potřebné pro vlastní hlášení a rovněž zohledňuje příslušné právní, regulační a organizační aspekty.

## Rozsah dokumentu

Tato implementační příručka popisuje návrh **FHIR rozhraní pro elektronické hlášení výsledků mikrobiologických vyšetření**.  

Příručka **neřeší** transportní kanál, autentizaci, bezpečnostní mechanismy ani konkrétní technické detaily přenosu dat – ty budou předmětem navazujících technických a integračních specifikací.  

Dokument se zaměřuje na:
- strukturu a definice dat pro profilování obsahu hlášení v prostředí HL7 FHIR,  
- přehled souvisejících právních, regulačních a organizačních aspektů.

## Zahrnuté oblasti

Tato implementační příručka zahrnuje:
- definici obsahu elektronického hlášení mikrobiologických nálezů ve formátu HL7 FHIR,  
- popis aktérů (laboratoř, žadatel, odběrové místo, pacient) a jejich identifikace,  
- návrh datové sady vycházející z položek popsaných v podkladovém dokumentu (materiál, metoda, upřesnění metody, agens, výsledky, citlivost na antibiotika),  
- doporučení k využití existujících národních číselníků a profilů FHIR používaných ve standardu laboratorní výsledkové zprávy,  
- vymezení právních, regulačních a organizačních aspektů relevantních pro hlášení infekčních nemocí.

## Nezahrnuté oblasti

Tato implementační příručka **nezahrnuje**:
- návrh transportní vrstvy a komunikačních protokolů (způsob předání zprávy, autentizace, šifrování),  
- návrh interních procesů a datových modelů laboratorních informačních systémů,  
- detailní návrh FHIR profilů, struktur JSON či XML a konkrétní rozhraní API (ty budou řešeny v navazujících technických specifikacích),  
- hlášení z jiných zdrojů než z laboratoří (např. ambulantní lékaři, lůžková zařízení).
