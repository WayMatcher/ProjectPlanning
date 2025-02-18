# **WayMatcher**

## **Gewünschte Features**

### **Reisetermine**

Ein Reisetermin enthält folgende Daten:

- **Typ**: Passagier oder Pilot  
- **Zielort**  
- **Datum & Uhrzeit** (wiederkehrend möglich)  
- **Strecke** (Start & Ziel mit Streckenradius)  
- **Plätze**  
- **Inhaber**  
- **Preis/km** (soll sich automatisch berechnen)  
- **One-Shot / Seriell** (einmalig oder wiederkehrend)  
- **Beschreibung**  
- **Chat-Funktion**  
- **Beitreten/Erstellen Funktion**  
- **Abbrechen Funktion** (mit Begründung)  
- **Fortbewegungsmittel**  

#### **Status eines Reisetermins**

- **Offen** → Passagiere können frei beitreten (Plätze verfügbar)  
- **Limitiert** → Passagiere können Angebote schreiben oder werden eingeladen  
- **Abgebrochen** → Pilot hat den Termin abgebrochen  
- **Erledigt** → Der Termin wurde wahrgenommen  

---

### **Einladung in einen Reisetermin**

Eine Einladung enthält folgende Daten:

- **Reisetermin**  
- **Passagier**  
- **Kurze Nachricht**  

Nach Annahme der Einladung muss der Passagier ein **Passagierformular** ausfüllen.  
Der Pilot entscheidet dann, ob das Formular für ihn passt.  

---

### **Passagierformular**

Ein Formular, das benötigt wird, um einem Reisetermin beizutreten.  
Es kann auch genutzt werden, um von einem Piloten für eine bestimmte Strecke gefunden zu werden.  

Das Formular enthält:

- **Zielort**  
- **Startort** (inkl. Suchradius)  
- **Datum & Uhrzeit**  
- **Passagiere**  
- **Beschreibung**  
- **Angebot an Piloten erstellen**  
- **Termin-Abbrechen Funktion** (mit Begründung)  

---

## **Benutzer**

Ein Benutzer kann Reisetermine erstellen und enthält folgende Daten:

- **E-Mail***  
- **Passwort***  
- **Benutzername***  
- **Führerschein** (Ja/Nein)  
- **Hat Auto** (Ja/Nein)  
- **Profilbild**  
- **Beschreibung**  
- **Terminverlauf**  
- **Offene Termine**  
- **Statistik**  
- **Bewertung** (1-5 Sterne)  
- **Login/Registrierung/Bearbeiten/Löschen Funktionen**  
- **Liste von Fortbewegungsmitteln**  

---

## **Suche/Filter**

Reisetermine können gefiltert werden nach:

- **Orte/Strecke**  
- **Uhrzeit/Datum** (Hin- und Rückfahrt)  
- **Anzahl freie Plätze**  
- **Bestimmte Benutzer**  
- **Beigetretene Reisetermine**  

---

## **Karte**

Die Strecke soll (bevorzugt über Google Maps) angezeigt werden:  

- **Anfangspunkt**  
- **Endpunkt**  
- **Öffnen/Schließen Funktionen**  

---

## **Ziele**

- **Website inkl. Mobilvariante**  
- **Erfüllung aller Requirements**  

---

## **Technologien**

### **Programmiersprachen**

#### **Frontend**

- dotnet MAUI (C#)  
- ASP.net  
- TypeScript (React)  

#### **Backend**

- dotnet (C#)  
- TypeScript (React)  
