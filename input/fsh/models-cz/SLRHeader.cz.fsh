// -------------------------------------------------------------------------------
//  Logical Model                SLRHeaderCz.fsh
// -------------------------------------------------------------------------------
Logical: LogCzSLRHeader
Id: SLRHeaderCz
Title: "SLR – Hlavička (CZ)"
Description:  """Hlavička hlášení laboratorního výsledku – NZIS."""
* insert SetFmmandStatusRule ( 1, draft )
* hlavicka 1..1 Base "SLR – Hlavička (CZ)" """Hlavička hlášení laboratorního výsledku – NZIS."""
* hlavicka.identifikacePacienta 1..1 Base "Identifikace pacienta" """"""
* hlavicka.identifikacePacienta.identifikatorPacienta 1..1 string "Identifikátor pacienta" """Resortní číslo pacienta (RID). Nejde o číslo pojištěnce ani rodné číslo! K získání RID je nutné použít související vyhledávací API funkce."""
* hlavicka.identifikacePacienta.datumNarozeni 1..1 date "Datum narození" """Datum narození jako kontrolní doplňující atribut k RID."""
* hlavicka.kontaktniInformacePacienta 0..1 Base "Kontaktní informace pacienta" """"""
* hlavicka.kontaktniInformacePacienta.adresa 0..* Address "Adresa" """Adresa současného pobytu pacienta"""
* hlavicka.kontaktniInformacePacienta.telekomunikacniKontaktTelefon 0..* ContactPoint "Telekomunikační kontakt (telefon)." """Kontaktní telefon na pacienta."""
* hlavicka.adresaRuian 0..* Base "Adresa RUIAN" """Adresní místo současného pobytu pacienta dle RUIAN. Pokud je uvedeno, předchozí položky adresy zůstávají prázdné"""
* hlavicka.adresaRuian.uhrada 1..1 Base "Úhrada" """Informace o způsobu úhrady objednávky vyšetření"""
* hlavicka.adresaRuian.uhrada.zpusobUhrady 0..1 string "Způsob úhrady" """Způsob úhrady objednávky (zdravotní pojištění, hradí pacient, jiný)"""
* hlavicka.adresaRuian.uhrada.informaceOPlatci 0..1 string "Informace o plátci" """Identifikace zdravotní pojišťovny, na kterou je vyšetření účtování, případně kód pro samoplátce"""
* hlavicka.adresaRuian.pracovisteZadatele 1..* Base "Pracoviště žadatele" """Žadatelem může být samotná laboratoř"""
* hlavicka.adresaRuian.pracovisteZadatele.icoZadatele 1..1 Identifier "IČO žadatele" """"""
* hlavicka.adresaRuian.pracovisteZadatele.pczZadatele 1..1 Identifier "PČZ žadatele" """Kód zdravotnického zařízení dle NRPZS"""
* hlavicka.icpZadatele 0..1 Base "IČP žadatele" """Povinné, pokud je vyšetření vykazované na pojišťovnu"""
* hlavicka.icpZadatele.jmenoAPrijmeniLekare 1..1 string "Jméno a příjmení lékaře" """Kontaktní osoba v rámci zařízení"""
* hlavicka.icpZadatele.pracovisteOdberovehoMista 1..* Base "Pracoviště odběrového místa" """Odběrovým místem může být i žadatel nebo samotná laboratoř"""
* hlavicka.icpZadatele.pracovisteOdberovehoMista.icoZadatele 1..1 Identifier "IČO žadatele" """"""
* hlavicka.icpZadatele.pracovisteOdberovehoMista.pczZadatele 1..1 Identifier "PČZ žadatele" """Kód zdravotnického zařízení dle NRPZS"""
* hlavicka.telekomunikacniKontaktTelefon 1..1 Base "Telekomunikační kontakt (telefon)." """"""
* hlavicka.telekomunikacniKontaktTelefon.jmenoAPrijmeniLekare 1..1 string "Jméno a příjmení lékaře" """Kontaktní osoba v rámci zařízení"""
* hlavicka.telekomunikacniKontaktTelefon.metadataDokumentu 1..1 Base "Metadata dokumentu" """"""
* hlavicka.telekomunikacniKontaktTelefon.metadataDokumentu.cisloVysledku 0..1 string "Číslo výsledku" """Číslo výsledku přidělené centrálním systém. Lze použít pro editaci již nahlášeného výsledku. Pokud null, je založen nový výsledek."""
* hlavicka.telekomunikacniKontaktTelefon.metadataDokumentu.cisloZadanky 0..1 string "Číslo žádanky" """Číslo žádanky z elektronického žádankového systému (jakmile bude k dispozici)"""
* hlavicka.telekomunikacniKontaktTelefon.metadataDokumentu.datumVydani 1..1 date "Datum vydání" """Datum a čas vydání výsledku laboratoří"""
//--- END