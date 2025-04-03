# WayMatcher - Linux Server Setup

## Virtual Machine anlegen

Wir haben einen physischen Proxmox Server verwendet, welcher eine VM für die App laufen lassen soll.

Diese VM hat die Version Ubuntu 24.04.2 LTS laufen.  
Der VM wurden acht Kerne und 8 GB RAM zugewiesen.  
Sie kann mit SSH gemanaged werden.

Darauf wurde dann ein neuer Ordner unter `/var/opt/WayMatcher` erstellt.

Dieser Ordner enthält das Front- und Backend repository.

## Installation Frontend

### Installation Nodejs & pnpm (Node Package Manger)

Nodejs und pnpm werden benötigt um einen Build vom Frontend zu erstellen.

#### Nodejs

Um die neueste LTS Version von Nodejs installieren zu können haben wir Node Version Manager (nvm) verwendet: <https://github.com/nvm-sh/nvm>  
Das Installscript kann mit diesem Befehl ausgeführt (Stand 19.03.2025):

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
```

Wenn man dann eine neue Session startet, kann man den nvm Befehl ausführen.
*dieses Skript ist User-basiert, also jeder User muss das für sich ausführen*

Um nun die neueste Version installieren zu können, muss man nur noch `nvm install --lts` ausführen.

#### pnpm (Node Package Manger)

Der Package manager ist schneller als npm und cached einige Packages, falls nötig.

Ihn kann man mit diesem Befehl installieren:

```bash
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

Auch hier muss man seine Session neustarten.  
*dieses Skript ist User-basiert, also jeder User muss das für sich ausführen*

---

## Installation Backend

Um das Backend auf dem Server ausführen zu können, wird asp dotnet für das Web API benötigt.

Es wird ein Build aus Visual Studio erstellt, welcher dann manuell auf dem Server hochgeladen wird.

Dieser Build kann nur mit einem Zertifikat ausgeführt werden. Dieses Zertifikat wird durch Let's Encrypt bereitsgestellt.

Damit wird das Backend dann auf dem Pfad <https://waymatcher.hobedere.com/api> bereitgestellt.
