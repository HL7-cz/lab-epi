// -------------------------------------------------------------------------------
//  Logical Model                SLRBodyCz.fsh
// -------------------------------------------------------------------------------
Logical: LogCzSLRBody
Id: SLRBodyCz
Title: "SLR – Tělo (CZ)"
Description:  """Tělo hlášení laboratorního výsledku – NZIS."""
* insert SetFmmandStatusRule ( 1, draft )
* telo 1..1 Base "SLR – Tělo (CZ)" """Tělo hlášení laboratorního výsledku – NZIS."""
* telo.klinickeInformace 1..1 Base "Klinické informace" """"""
* telo.klinickeInformace.diagnoza 1..* CodeableConcept "Diagnóza" """Kód diagnózy dle MKN10 podle žadatele/klinika"""
* telo.datumPriznaku 0..1 date "Datum příznaků" """Datum prvních příznaků"""
* telo.antivirovaAntibiotickaLecbaPredOdberem 0..* string "Antivirová/antibiotická léčba před odběrem" """Informace, zda byla nasazen nějaká relevantní léčba před samotným odběrem. Významná informace i pro laboratoř,"""
* telo.datumReceptu 0..1 date "Datum receptu" """Pokud byla nasazena, údaj o datum vystavení receptu (údaj dostupný v IS žadatele)"""
* telo.suklKodLeciva 0..1 string "SUKL kód léčiva" """SUKL kód z eReceptu, údaj dostupný v IS žadatele"""
* telo.informaceOVzorku 1..1 string "Informace o vzorku" """"""
* telo.cisloVzorku 0..1 string "Číslo vzorku" """Identifikace vzorku dle hlásící laboratoře, umožňuje agregovat nálezy z jednoho vzorku"""
* telo.datumOdberu 1..1 date "Datum odběru" """Datum odběru vzorku"""
* telo.material 1..1 Base "Materiál" """Vyšetřovaný materiál (systém + specifikace)"""
* telo.material.datoveElementyVysledkuVysetreni 1..1 Base "Datové elementy výsledku vyšetření" """"""
* telo.material.datoveElementyVysledkuVysetreni.datumVysetreni 1..1 date "Datum vyšetření" """Datum a čas dokončení vyšetření"""
* telo.material.datoveElementyVysledkuVysetreni.metoda 1..1 string "Metoda" """Laboratorní metoda (procedura)"""
* telo.material.datoveElementyVysledkuVysetreni.metodaCil 1..1 string "Metoda cíl" """Upřesnění metody"""
* telo.material.datoveElementyVysledkuVysetreni.agens 1..* string "Agens" """Zjišťované agens"""
* telo.material.datoveElementyVysledkuVysetreni.vysledek 1..1 string "Výsledek" """Kvalitativní výsledek vyšetření"""
* telo.material.datoveElementyVysledkuVysetreni.vysledekKvantitativni 0..1 string "Výsledek kvantitativní" """Kvantitativní výsledek, pokud daná metoda umožňuje stanovit"""
* telo.material.datoveElementyVysledkuVysetreni.vysledekJednotka 0..1 string "Výsledek jednotka" """Jednotka kvantitativního výsledku, povinné, pokud je uveden vysledekKvantitativni"""
* telo.material.cutoff 0..1 string "cutOff" """V případě kvantitativného výsledku, hodnota cut-off pro danou metodu a laboratoř"""
* telo.antibiotikum 0..* string "Antibiotikum" """V případě bakteriálního nálezu se uvede antibiotikum, na které bylo agens citlivé"""
* telo.latka 1..1 Base "Látka" """"""
* telo.latka.hodnoceni 1..1 string "Hodnocení" """"""
//--- END