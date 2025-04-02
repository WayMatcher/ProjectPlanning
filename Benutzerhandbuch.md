# Web-App Benutzer-Dokumentation

Willkommen zur Benutzer-Dokumentation der WayMatcher Web-App! Diese Anleitung hilft Ihnen, sich mit den Funktionen der App vertraut zu machen und ihre Nutzung zu optimieren.

## Inhaltsverzeichnis

- [Web-App Benutzer-Dokumentation](#web-app-benutzer-dokumentation)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Einführung](#einführung)
  - [Systemanforderungen](#systemanforderungen)
  - [Registrierung und Anmeldung](#registrierung-und-anmeldung)
    - [Registrierung](#registrierung)
    - [Anmeldung](#anmeldung)
  - [Hauptfunktionen](#hauptfunktionen)
    - [Funktion 1: Neuen "Way" erstellen](#funktion-1-neuen-way-erstellen)
    - [Funktion 2: E-Mails als Benachrichtigungen](#funktion-2-e-mails-als-benachrichtigungen)
    - [Funktion 3: Match Anfragen oder verschicken](#funktion-3-match-anfragen-oder-verschicken)
    - [Funktion 4: Benutzer bwerten](#funktion-4-benutzer-bwerten)
    - [Funktion 5: Benutzer Bearbeiten](#funktion-5-benutzer-bearbeiten)
  - [Fehlerbehebung](#fehlerbehebung)
    - [Problem 1: Seite ladet nicht richtig?](#problem-1-seite-ladet-nicht-richtig)
    - [Problem 2: MfA Code funktioniert nicht?](#problem-2-mfa-code-funktioniert-nicht)
  - [Support](#support)

## Einführung

WayMatcher ist eine Web-App, die entwickelt wurde, um Mitfahrgelegenheiten zu planen. Diese Anleitung führt Sie durch die grundlegenden Funktionen und Möglichkeiten der App.

## Systemanforderungen

Um die WayMatcher Web-App zu verwenden, stellen Sie sicher, dass Ihr System die folgenden Anforderungen erfüllt:

- **Webbrowser**: Chromium basierter Browser oder Firefox
- **Internetverbindung**: Eine stabile Internetverbindung ist erforderlich.
- **Sonstiges**: JavaScript aktiviert und Cookies aktiviert

## Registrierung und Anmeldung

### Registrierung

1. Besuchen Sie die <https://waymatcher.hobedere.com/> und klicken Sie auf den **Register**-Button.
![Register Button](images/Register.png)
2. Geben Sie Ihre persönlichen Daten wie Name, E-Mail-Adresse und Passwort ein.
![Userdaten eingeben](images/userdaten-eingeben.png)
3. Adresse eingeben
![Adresse eingeben](images/adresse-eingeben.png)
![Ergebnis](images/adresse-ergebnis.png)
4. Fahrzeug(e) hinzufügen
![Fahrzeug hinzufügen](images/fahrzeug-hinzufuegen.png)
5. Zusammenfassung
![Zusammenfassung](images/zusammenfassung-registrieung.png)

### Anmeldung

1. Besuchen Sie die <https://waymatcher.hobedere.com/> und klicken Sie auf den **Login**-Button.
2. Geben Sie Ihre E-Mail-Adresse oder Benutzername und Ihr Passwort ein.
![Login](images/login.png)
3. Klicken Sie auf **Submit**, um auf Ihr Konto zuzugreifen.

## Hauptfunktionen

### Funktion 1: Neuen "Way" erstellen

- **Beschreibung**: Diese Funktion ermöglicht es Ihnen, einen neuen "Way" (Fahrgemeinschaft) zu erstellen.
- **So verwenden Sie sie**:
   1. Melden Sie sich auf der Website an.
   2. Gehen Sie zu "Ways" in der Navigationsleiste.
   3. Wählen Sie "Create new Way", dann entweder ein "Passenger Way" (man möchte irgendwo hin kommen) oder "Pilot Way" (man fährt wo hin und sucht mitfahrer).
   ![Way Erstellen](images/way-erstellen.png)
   4. Tragen Sie die Daten ein und drücken Sie "Submit"
   ![Way Details eingeben](images/way-details-eingeben.png)
   5. Der Weg wird angezeigt
   ![Way anzeigen](images/display-way.png)

### Funktion 2: E-Mails als Benachrichtigungen

- **Beschreibung**: Man kann durch E-Mails benachrichtigt werden, wenn Änderungen geschehen.
  ![E-mails](images/emails.png)

### Funktion 3: Match Anfragen oder verschicken

- **Beschreibung**: Mit dieser Funktion kann man den Besitzer des Ways anfragen, dass man ein Mitglied wird oder, der Besitzer kann einen Benutzer einladen um ein Mitglied zu werden.
- **Verwendung**:
  - Auf "Request Invite" oder "Invite Person" klicken
  - Nachricht eingeben
  - Request/Invite as Pilot anhaken (ob der Benutzer die Passenger oder Pilot rolle bekommt)
  - Evtl. Usernamen eingeben (falls man Personen einladen möchte)
  - Request/Invite Button klicken
  ![Owner Anfrage](images/owner-anfrage.png)

### Funktion 4: Benutzer bwerten

- **Beschreibung**: Der Benutzer kann bewertet am Profil werden
- ![Benutzer Bewerten](images/Benutzer-bewerten.png)

### Funktion 5: Benutzer Bearbeiten

- **Beschreibung**: Der Benutzer kann vom Profil aus bewertet werden
- **Verwendung**:
  - Man geht auf sein Profil (*/profile/*)
  - Dort klickt man auf "Edit"
  - Auf der nächsten Seite kann man den Benutzer, die Adresse und die Fahrzeuge bearbeiten
  ![User Edit](images/benutzer-bearbeiten.png)

## Fehlerbehebung

### Problem 1: Seite ladet nicht richtig?

**Lösung**:

1. Überprüfen Sie, ob Ihre Internetverbindung stabil ist.
2. Löschen Sie den Cache Ihres Browsers.
3. Versuchen Sie, die App im Inkognito-Modus zu öffnen.
4. Überprüfen Sie ob das Backend und Frontend richtig gestartet ist.

### Problem 2: MfA Code funktioniert nicht?

**Lösung**:

1. Stellen Sie sicher, dass Sie einen Unterstützen Browser verwenden
2. Überprüfen Sie, ihre E-Mails erneut auf aktuelle E-Mails
3. Überprüfen Sie, dass die Login Daten korrekt sind.

## Support

Wenn Sie Unterstützung benötigen, bitte einen Issue in eines der GitHub Repositories erstellen.
**Inhalt**:

- Wo passiert der Fehler?
- Wann ist der Fehler passiert?
- Was waren Daten die eingebene wurden?
- Gab es eine Fehlermeldung?
- Inhalt der Fehlermeldung.

*Danke, dass Sie WayMatcher verwenden! Wir hoffen, dass diese Anleitung Ihnen hilft, die besten Funktionen der App zu entdecken.*
