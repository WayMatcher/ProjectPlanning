# 1. Technische Dokumentation

## 1.1 Inhaltsverzeichnis

- [1. Technische Dokumentation](#1-technische-dokumentation)
  - [1.1 Inhaltsverzeichnis](#11-inhaltsverzeichnis)
  - [1.2 Einleitung](#12-einleitung)
  - [1.3 Systemübersicht](#13-systemübersicht)
    - [1.3.1 Architektur](#131-architektur)
    - [1.3.2 Komponenten](#132-komponenten)
      - [1.3.2.1 Backend](#1321-backend)
      - [1.3.2.2 Frontend](#1322-frontend)
      - [1.3.2.3 Datenbank](#1323-datenbank)
  - [1.4 Installation und Setup](#14-installation-und-setup)
    - [1.4.1 Backend](#141-backend)
      - [1.4.1.1 Voraussetzungen](#1411-voraussetzungen)
      - [1.4.1.2 Installation](#1412-installation)
      - [1.4.1.3 Konfiguration](#1413-konfiguration)
    - [1.4.2 Frontend](#142-frontend)
      - [1.4.2.1 Voraussetzungen](#1421-voraussetzungen)
      - [1.4.2.2 Installation](#1422-installation)
      - [1.4.2.3 Konfiguration](#1423-konfiguration)
      - [1.4.2.4 Starten](#1424-starten)
    - [1.4.3 Datenbank](#143-datenbank)
      - [1.4.3.1 Voraussetzungen](#1431-voraussetzungen)
      - [1.4.3.2 Installation](#1432-installation)
      - [1.4.3.3 Starten](#1433-starten)
  - [1.5 Verwendung](#15-verwendung)
    - [1.5.1 Frontend Nutzung](#151-frontend-nutzung)
    - [1.5.2 Backend Nutzung](#152-backend-nutzung)
  - [1.6 API Referenz](#16-api-referenz)
    - [1.6.1 Endpunkt 1: `GET /api/benutzer`](#161-endpunkt-1-get-apibenutzer)
    - [1.6.2 Endpunkt 2: `POST /api/benutzer`](#162-endpunkt-2-post-apibenutzer)
  - [1.7 Datenbankmodell](#17-datenbankmodell)
    - [1.7.1 Tabelle: `benutzer`](#171-tabelle-benutzer)
    - [1.7.2 Beziehungen](#172-beziehungen)
  - [1.8 Fehlerbehebung](#18-fehlerbehebung)
    - [1.8.1 Fehler 1: "Datenbankverbindung schlägt fehl"](#181-fehler-1-datenbankverbindung-schlägt-fehl)
    - [1.8.2 Fehler 2: "Frontend lädt nicht"](#182-fehler-2-frontend-lädt-nicht)
  - [1.9 Häufig gestellte Fragen (FAQ)](#19-häufig-gestellte-fragen-faq)
  - [1.10 Kontakt und Support](#110-kontakt-und-support)

---

## 1.2 Einleitung

In dieser technischen Dokumentation werden alle erforderlichen Hardware- und Softwarekomponenten beschrieben, die im Projekt *WayMatcher* verwendet wurden. Ziel ist es, einen umfassenden Überblick über das System zu geben, einschließlich seiner Architektur, Funktionalitäten und der Interaktion zwischen Backend, Frontend und Datenbank. Diese Dokumentation richtet sich an Entwickler, Administratoren und alle, die sich mit der Implementierung oder Wartung von *WayMatcher* befassen.

---

## 1.3 Systemübersicht

Dieser Abschnitt gibt einen Überblick über das gesamte System, das Backend, das Frontend und die Datenbank.

### 1.3.1 Architektur

Das System basiert auf einer modernen, cloudbasierten Architektur. Die Datenverwaltung erfolgt über eine Azure-Datenbank, die nahtlos mit dem Backend kommuniziert. Das Backend ist in C# mit .NET 9 implementiert und nutzt ASP.NET Core Web API zur Bereitstellung der API-Schnittstellen. Das Frontend wurde mit React und TypeScript entwickelt und wird über Vite gebündelt. Für das Styling und die Benutzeroberfläche kommt Bootstrap zum Einsatz. Die Kommunikation zwischen Frontend und Backend erfolgt über die bereitgestellten API-Endpunkte.

### 1.3.2 Komponenten

#### 1.3.2.1 Backend

- **Technologien**: Das Backend ist in C# mit .NET 9 entwickelt und nutzt ASP.NET Core Web API zur Bereitstellung der API-Endpunkte.  
- **Wichtige Funktionen**:  
  - Verarbeitung und Bereitstellung von Daten über REST-APIs  
  - Implementierung von Authentifizierungs- und Autorisierungsmechanismen  
  - Geschäftslogik zur Verarbeitung und Validierung von Benutzereingaben  
  - Fehler- und Ausnahmebehandlung zur Sicherstellung der Systemstabilität  
- **Datenfluss**:  
  - Das Backend empfängt Anfragen vom Frontend und verarbeitet diese entsprechend der Geschäftslogik.  
  - Daten werden aus der Azure-Datenbank abgerufen, verarbeitet und als API-Antwort zurückgegeben.  
  - Benutzeranfragen wie Authentifizierung oder Dateneingaben werden validiert und in der Datenbank gespeichert.  

#### 1.3.2.2 Frontend

- **Technologien**: Das Frontend basiert auf React mit TypeScript und wird mit Vite gebündelt. Bootstrap wird für das Styling und die Benutzeroberfläche verwendet.  
- **Wichtige Funktionen**:  
  - Anzeige und Interaktion mit den vom Backend bereitgestellten Daten  
  - Nutzung von API-Endpunkten zur Datenverarbeitung  
  - Benutzerfreundliche Navigation und UI-Komponenten mit Bootstrap  
  - Formularvalidierungen und Echtzeit-Aktualisierungen der Benutzeroberfläche  
- **Datenfluss**:  
  - Das Frontend sendet API-Anfragen an das Backend, z. B. um Benutzerdaten abzurufen oder Änderungen zu speichern.  
  - Die erhaltenen Daten werden verarbeitet und in der Benutzeroberfläche dargestellt.  
  - Benutzerinteraktionen (z. B. Klicks, Formulareingaben) lösen API-Anfragen aus, um Daten in der Datenbank zu aktualisieren.  

#### 1.3.2.3 Datenbank

- **Technologien**: Die Datenbank basiert auf Microsoft Azure SQL und wird zur Speicherung aller relevanten Daten genutzt.  
- **Wichtige Funktionen**:  
  - Speicherung und Verwaltung von Benutzer-, Transaktions- und Systemdaten  
  - Sicherstellung der Datenintegrität durch Beziehungen und Constraints  
  - Bereitstellung effizienter Abfragen für schnelle Datenverarbeitung  
  - Skalierbarkeit für hohe Nutzerzahlen und große Datenmengen  
- **Datenfluss**:  
  - Das Backend sendet Abfragen an die Datenbank, um Daten abzurufen oder zu speichern.  
  - Bei einer erfolgreichen API-Anfrage speichert die Datenbank die neuen oder aktualisierten Daten.  
  - Abfragen werden optimiert, um die Antwortzeiten und Systemleistung zu maximieren.  

---

## 1.4 Installation und Setup

Dieser Abschnitt beschreibt die Schritte zur Installation und Konfiguration des Systems, einschließlich Backend, Frontend und Datenbank.

### 1.4.1 Backend

#### 1.4.1.1 Voraussetzungen

Für das Backend wird das **ASP.NET 9 Framework** benötigt.

#### 1.4.1.2 Installation

1. Das Backend-Repository von GitHub klonen:  
   [WayMatcher Backend](https://github.com/WayMatcher/Backend.git)  
2. Abhängigkeiten gemäß der Projektanforderungen installieren.

#### 1.4.1.3 Konfiguration

1. Die Datei **appsettings.json** entsprechend den Umgebungsvariablen und Datenbankverbindungen anpassen.
2. Sicherstellen, dass alle erforderlichen API-Schlüssel und Konfigurationswerte korrekt gesetzt sind.

### 1.4.2 Frontend

#### 1.4.2.1 Voraussetzungen

Das Frontend erfordert die Installation von **Node.js**, **pnpm** und **React**.

#### 1.4.2.2 Installation

1. Das Frontend-Repository von GitHub klonen:  
   [WayMatcher Frontend](https://github.com/WayMatcher/Frontend.git)  
2. Alle erforderlichen Abhängigkeiten mit **pnpm** installieren.

#### 1.4.2.3 Konfiguration

- Die API-Endpunkte in der Konfigurationsdatei des Frontends anpassen, sodass sie mit dem Backend kommunizieren können.

#### 1.4.2.4 Starten

1. Das Frontend-Projekt starten, um die Benutzeroberfläche im Browser verfügbar zu machen.

### 1.4.3 Datenbank

#### 1.4.3.1 Voraussetzungen

Die **IP-Adresse** muss mit der Firewall verbunden sein, um eine reibungslose Verbindung zur Azure-Datenbank zu gewährleisten.

#### 1.4.3.2 Installation

1. Die Datenbank gemäß der [Datenbank-Dokumentation](https://github.com/WayMatcher/Database/blob/main/README.md) einrichten.
2. Die bereitgestellten Skripte ausführen, um die Datenbankstruktur zu erstellen.

#### 1.4.3.3 Starten

- Die vorbereiteten **SQL-Skripte** ausführen, um alle erforderlichen Tabellen und Relationen anzulegen.

---

## 1.5 Verwendung

### 1.5.1 Frontend Nutzung

- Der Benutzer öffnet die App im Browser.

### 1.5.2 Backend Nutzung

- Das Backend verarbeitet API-Anfragen.

---

## 1.6 API Referenz

### 1.6.1 Endpunkt 1: `GET /api/benutzer`

- **Beschreibung**: Gibt eine Liste aller Benutzer zurück.

### 1.6.2 Endpunkt 2: `POST /api/benutzer`

- **Beschreibung**: Erstellt einen neuen Benutzer.

---

## 1.7 Datenbankmodell

### 1.7.1 Tabelle: `benutzer`

- **Spalten**:
  - `id`: INT, Primärschlüssel

### 1.7.2 Beziehungen

- Ein Benutzer kann mehrere Posts haben.

---

## 1.8 Fehlerbehebung

### 1.8.1 Fehler 1: "Datenbankverbindung schlägt fehl"

- **Lösung**: Überprüfen Sie die Konfiguration der Datenbankverbindung.

### 1.8.2 Fehler 2: "Frontend lädt nicht"

- **Lösung**: Sicherstellen, dass der Backend-Server läuft.

---

## 1.9 Häufig gestellte Fragen (FAQ)

- **Wie ändere ich die Datenbankverbindung?**
  - `.env` oder `config.json` bearbeiten.

---

## 1.10 Kontakt und Support

- **E-Mail**: support@beispiel.com
- **Telefon**: +49 123 456789
