// -------------------------------------------------------------------------------
//  Logical Model                SLRHeaderEn.fsh
// -------------------------------------------------------------------------------
Logical: LogEnSLRHeader
Id: SLRHeaderEn
Title: "SLR – Header (EN)"
Description:  """Header of the laboratory result reporting – NZIS."""
* insert SetFmmandStatusRule ( 1, draft )
* header 1..1 Base "SLR – Header (EN)" """Header of the laboratory result reporting – NZIS."""
* header.identifikacePacienta 1..1 Base "Identifikace pacienta" """"""
* header.identifikacePacienta.identifikatorPacienta 1..1 string "Identifikátor pacienta" """Resortní číslo pacienta (RID). Nejde o číslo pojištěnce ani rodné číslo! K získání RID je nutné použít související vyhledávací API funkce."""
* header.identifikacePacienta.datumNarozeni 1..1 date "Datum narození" """Datum narození jako kontrolní doplňující atribut k RID."""
* header.kontaktniInformacePacienta 0..1 Base "Kontaktní informace pacienta" """"""
* header.kontaktniInformacePacienta.adresa 0..* Address "Adresa" """Adresa současného pobytu pacienta"""
* header.kontaktniInformacePacienta.telekomunikacniKontaktTelefon 0..* ContactPoint "Telekomunikační kontakt (telefon)." """Kontaktní telefon na pacienta."""
* header.adresaRuian 0..* Base "Adresa RUIAN" """Adresní místo současného pobytu pacienta dle RUIAN. Pokud je uvedeno, předchozí položky adresy zůstávají prázdné"""
* header.adresaRuian.uhrada 1..1 Base "Úhrada" """Informace o způsobu úhrady objednávky vyšetření"""
* header.adresaRuian.uhrada.zpusobUhrady 0..1 string "Způsob úhrady" """Způsob úhrady objednávky (zdravotní pojištění, hradí pacient, jiný)"""
* header.adresaRuian.uhrada.informaceOPlatci 0..1 string "Informace o plátci" """Identifikace zdravotní pojišťovny, na kterou je vyšetření účtování, případně kód pro samoplátce"""
* header.adresaRuian.pracovisteZadatele 1..* Base "Pracoviště žadatele" """Žadatelem může být samotná laboratoř"""
* header.adresaRuian.pracovisteZadatele.icoZadatele 1..1 Identifier "IČO žadatele" """"""
* header.adresaRuian.pracovisteZadatele.pczZadatele 1..1 Identifier "PČZ žadatele" """Kód zdravotnického zařízení dle NRPZS"""
* header.icpZadatele 0..1 Base "IČP žadatele" """Povinné, pokud je vyšetření vykazované na pojišťovnu"""
* header.icpZadatele.jmenoAPrijmeniLekare 1..1 string "Jméno a příjmení lékaře" """Kontaktní osoba v rámci zařízení"""
* header.icpZadatele.pracovisteOdberovehoMista 1..* Base "Pracoviště odběrového místa" """Odběrovým místem může být i žadatel nebo samotná laboratoř"""
* header.icpZadatele.pracovisteOdberovehoMista.icoZadatele 1..1 Identifier "IČO žadatele" """"""
* header.icpZadatele.pracovisteOdberovehoMista.pczZadatele 1..1 Identifier "PČZ žadatele" """Kód zdravotnického zařízení dle NRPZS"""
* header.telekomunikacniKontaktTelefon 1..1 Base "Telekomunikační kontakt (telefon)." """"""
* header.telekomunikacniKontaktTelefon.jmenoAPrijmeniLekare 1..1 string "Jméno a příjmení lékaře" """Kontaktní osoba v rámci zařízení"""
* header.telekomunikacniKontaktTelefon.metadataDokumentu 1..1 Base "Metadata dokumentu" """"""
* header.telekomunikacniKontaktTelefon.metadataDokumentu.cisloVysledku 0..1 string "Číslo výsledku" """Číslo výsledku přidělené centrálním systém. Lze použít pro editaci již nahlášeného výsledku. Pokud null, je založen nový výsledek."""
* header.telekomunikacniKontaktTelefon.metadataDokumentu.cisloZadanky 0..1 string "Číslo žádanky" """Číslo žádanky z elektronického žádankového systému (jakmile bude k dispozici)"""
* header.telekomunikacniKontaktTelefon.metadataDokumentu.datumVydani 1..1 date "Datum vydání" """Datum a čas vydání výsledku laboratoří"""
//--- END