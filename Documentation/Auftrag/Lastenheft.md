# Lastenheft App-Entwickler

![Logo von WayMatcher](/Images/WM-Logo-Cropped.png)

- **Projekt:** WayMatcher – Fahrgemeinschafts-Applikation
- **Angebot an:** Hr. Rudigier & Hr. Wonnebauer
- **Auftraggeber:** Hr. Pausch
- **Autor des Dokuments:** Hr. Rudigier & Hr. Wonnebauer

---

## Projektbeschreibung

### Einführung und Zielbestimmung

Im Folgenden werden die Anforderungen für die Beurteilung ausführlich angeführt und bildet somit die Grundlage für den positiven Projektabschluss.

#### Beschreibung des Unternehmens/Organisation

"WayMatcher" ist ein Startup-Unternehmen, das sich auf die Entwicklung innovativer und nachhaltiger Mobilitätslösungen spezialisiert hat. Das Unternehmen verfolgt das Ziel, den Individualverkehr zu reduzieren und die Nutzung von umweltfreundlichen Verkehrsmitteln zu fördern.

#### Beschreibung und Hintergründe des Projektpraktikums

Im Rahmen des Projektpraktikums soll die Webanwendung "WayMatcher" entwickelt werden, die eine Plattform zur Vermittlung von Mitfahrgelegenheiten bietet. Das Projektpraktikum dient dazu, die in der Berufsschule erworbenen Kenntnisse in der Praxis anzuwenden und Erfahrungen in der Softwareentwicklung zu sammeln.

### Produktübersicht und Einsatz

#### Aktuelle Situation

Derzeit existiert keine zentrale und benutzerfreundliche Plattform, die die Vermittlung von Mitfahrgelegenheiten im regionalen Bereich effizient unterstützt. WayMatcher soll diese Lücke schließen und eine einfache und komfortable Möglichkeit bieten, Mitfahrgelegenheiten anzubieten oder zu finden.

#### Beschreibung des Soll-Konzepts

WayMatcher soll eine Webanwendung sein, die es Nutzern ermöglicht, Reisetermine mit detaillierten Informationen zu erstellen und nach passenden Mitfahrgelegenheiten zu suchen. Die Anwendung soll sowohl für die Desktop- als auch für die mobile Nutzung optimiert sein und eine intuitive Benutzeroberfläche bieten.

#### Beschreibung von minimalen Schnittstellen und Funktionen

##### Relationale Datenbank

- Eine relationale Datenbank (Azure) wird zur Speicherung der Anwendungsdaten verwendet.
- Die Datenbank enthält Tabellen für Benutzer, Reisetermine, Nachrichten, etc.

##### Backend

- Das Backend wird mit C# mittels ASP.NET (MVC) implementiert.
- Es stellt eine REST-API für die Kommunikation mit dem Frontend bereit.
- Das Backend ist verantwortlich für die Datenverwaltung, die Benutzerauthentifizierung und die Businesslogik der Anwendung.

##### Frontend

- Das Frontend wird mit React über TypeScript entwickelt.
- Es bietet eine benutzerfreundliche Oberfläche zur Interaktion mit der Anwendung.
- Das Frontend kommuniziert mit dem Backend über die REST-API Schnittstelle.

##### Quellcodeverwaltung

- Die Quellcodeverwaltung erfolgt mit Git.
- Ein Git-Repository wird zur Speicherung und Versionierung des Quellcodes verwendet.
- Das Git-Repository verwendet ein Remote Repository auf GitHub wo auch die Dokumentation erfolgt.

#### Funktionale Anforderungen

- Reisetermine:
  - Erstellen von Reiseterminen mit folgenden Daten: Typ (Passagier/Pilot), Zielort, Datum & Uhrzeit (wiederkehrend), Strecke (Start & Ziel mit Radius), Plätze, Inhaber, Preis/km (automatische Berechnung), One-Shot/Seriell, Beschreibung, Fortbewegungsmittel, Status (offen, limitiert, abgebrochen, erledigt).
  - Beitreten und Erstellen von Reiseterminen.
  - Abbrechen von Reiseterminen mit Begründung.
  - Integrierter Chat innerhalb eines Reisetermins.
- Einladungen zu Reiseterminen:
  - Versenden von Einladungen mit Reisetermin-Daten und kurzer Nachricht.
  - Pflicht zum Ausfüllen des Passagierformulars nach Annahme der Einladung.
  - Möglichkeit für Piloten, das Passagierformular zu akzeptieren oder abzulehnen.
- Passagierformular:
  - Ausfüllen des Formulars mit Zielort, Startort (inkl. Suchradius), Datum & Uhrzeit, Passagiere, Beschreibung.
  - Erstellen von Angeboten an Piloten.
  - Abbrechen des Termins mit Begründung.
- Benutzerverwaltung:
  - Registrierung und Login mit E-Mail, Passwort und Benutzername.
  - Profilverwaltung: Führerschein, Fahrzeugbesitz, Profilbild, Beschreibung, Terminverlauf, Offene Termine, Statistik, Bewertungen (1-5 Sterne).
  - Login/Registrierung/Bearbeiten/Löschen Funktionen.
  - Liste von Fortbewegungsmitteln.
- Suche/Filter:
  - Suche nach Reiseterminen anhand von Orten/Strecke, Uhrzeit/Datum (Hin- und Rückfahrt), Anzahl freie Plätze, bestimmte Benutzer, beigetretene Reisetermine.
- Karte:
  - Ansicht der Strecke (bevorzugt Google Maps) mit Start- und Endpunkt.
  - Öffnen/Schließen Funktionen für die Kartenansicht.

#### Nichtfunktionale Anforderungen (Leistungen, Daten)

- **Usability**: Intuitive Bedienung, klare Navigation, übersichtliche Gestaltung, Barrierefreiheit.
- **Performance**: Schnelle Ladezeiten, hohe Verfügbarkeit, Skalierbarkeit.
- **Sicherheit**: Datenschutz, Datensicherheit, sichere Authentifizierung.
- **Zuverlässigkeit**: Stabilität, Fehlertoleranz, Datenintegrität.
- **Kompatibilität**: Browserkompatibilität, Gerätekompatibilität, Betriebssystemkompatibilität.
- **Wartbarkeit**: Modularer Aufbau, Dokumentation, Testbarkeit.

#### Technische Grundlagen

- Die Website soll lokal gehosted werden können.
- Soll für Mobile-Geräte benutzbar sein.
- Es muss dem Benutzer schnell reagieren.

#### Projektverlauf

- Definition des Projektumfangs und der Ziele.
- Analyse der Anforderungen und Erstellung des Lastenhefts.
- Kommunikation zwischen den Projektmitgliedern
  - wöchentliche Besprechungen mit Dokumentation
  - wöchentliche Planungen (mit Kanban Board über GitHub)
  - Leserechte für Projektbetreuer
- Design und Entwicklung der Anwendung (Frontend und Backend).
- Testphase und Fehlerbehebung.
- Deployment und Inbetriebnahme der Anwendung.

### Minimale Qualitätsanforderungen an den Quellcode

- Sauberer, lesbarer und gut dokumentierter Code.
- Einhaltung einheitlicher Code-Konventionen.
- Getesteter und fehlerfreier Code.

### Applikation im Livebetrieb

- Bereitstellung auf einem lokalen Server.
- Skalierbare Infrastruktur zur Unterstützung einer wachsenden Nutzerzahl.

### Zeitliche Vorgaben und Deadlines

- Projektstart: 05.02.2025
- Lastenheft abgeschlossen: 07.02.2025
- Pflichtenheft abgeschlossen: 21.02.2025
- Umsetzung
  - Start: 24.02.2025
  - Ende: 18.03.2025
- Testphase
  - Start: 18.03.2025
  - Ende: 24.03.2025
- Projektpräsentation: 25.03.2025
- Projektabschluss: 01.04.2025

### Erweiterungen

- Google Maps Karte
- Chat zwischen Benutzern
- Intelligente Pfadfindung der Reisetermine (z.B. Suche in einem Radius am Weg)
- Deteilreichere Benutzerprofile (z.B. Bewertungen, Auto, etc.)
