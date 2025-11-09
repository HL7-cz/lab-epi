// -------------------------------------------------------------------------------
//  Logical Model                SLRBodyEn.fsh
// -------------------------------------------------------------------------------
Logical: LogEnSLRBody
Id: SLRBodyEn
Title: "SLR – Body (EN)"
Description:  """Body of the laboratory result reporting – NZIS."""
* insert SetFmmandStatusRule ( 1, draft )
* body 1..1 Base "SLR – Body (EN)" """Body of the laboratory result reporting – NZIS."""
* body.klinickeInformace 1..1 Base "Klinické informace" """"""
* body.klinickeInformace.diagnoza 1..* CodeableConcept "Diagnóza" """Kód diagnózy dle MKN10 podle žadatele/klinika"""
* body.datumPriznaku 0..1 date "Datum příznaků" """Datum prvních příznaků"""
* body.antivirovaAntibiotickaLecbaPredOdberem 0..* string "Antivirová/antibiotická léčba před odběrem" """Informace, zda byla nasazen nějaká relevantní léčba před samotným odběrem. Významná informace i pro laboratoř,"""
* body.datumReceptu 0..1 date "Datum receptu" """Pokud byla nasazena, údaj o datum vystavení receptu (údaj dostupný v IS žadatele)"""
* body.suklKodLeciva 0..1 string "SUKL kód léčiva" """SUKL kód z eReceptu, údaj dostupný v IS žadatele"""
* body.informaceOVzorku 1..1 string "Informace o vzorku" """"""
* body.cisloVzorku 0..1 string "Číslo vzorku" """Identifikace vzorku dle hlásící laboratoře, umožňuje agregovat nálezy z jednoho vzorku"""
* body.datumOdberu 1..1 date "Datum odběru" """Datum odběru vzorku"""
* body.material 1..1 Base "Materiál" """Vyšetřovaný materiál (systém + specifikace)"""
* body.material.datoveElementyVysledkuVysetreni 1..1 Base "Datové elementy výsledku vyšetření" """"""
* body.material.datoveElementyVysledkuVysetreni.datumVysetreni 1..1 date "Datum vyšetření" """Datum a čas dokončení vyšetření"""
* body.material.datoveElementyVysledkuVysetreni.metoda 1..1 string "Metoda" """Laboratorní metoda (procedura)"""
* body.material.datoveElementyVysledkuVysetreni.metodaCil 1..1 string "Metoda cíl" """Upřesnění metody"""
* body.material.datoveElementyVysledkuVysetreni.agens 1..* string "Agens" """Zjišťované agens"""
* body.material.datoveElementyVysledkuVysetreni.vysledek 1..1 string "Výsledek" """Kvalitativní výsledek vyšetření"""
* body.material.datoveElementyVysledkuVysetreni.vysledekKvantitativni 0..1 string "Výsledek kvantitativní" """Kvantitativní výsledek, pokud daná metoda umožňuje stanovit"""
* body.material.datoveElementyVysledkuVysetreni.vysledekJednotka 0..1 string "Výsledek jednotka" """Jednotka kvantitativního výsledku, povinné, pokud je uveden vysledekKvantitativni"""
* body.material.cutoff 0..1 string "cutOff" """V případě kvantitativného výsledku, hodnota cut-off pro danou metodu a laboratoř"""
* body.antibiotikum 0..* string "Antibiotikum" """V případě bakteriálního nálezu se uvede antibiotikum, na které bylo agens citlivé"""
* body.latka 1..1 Base "Látka" """"""
* body.latka.hodnoceni 1..1 string "Hodnocení" """"""
//--- END