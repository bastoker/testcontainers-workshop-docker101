# testcontainers-workshop-docker101
Testcontainers Docker 101 opdracht

# Opdracht

## Pas de index.html file aan
Personaliseer je website door wat leuks toe te voegen als content op je site.
Hint: Emoji's geven bonuspunten

## Maken Docker image

In deze Dockerfile gebruiken we de officiële Nginx-basisimage als webserver, we kopiëren het index.html bestand naar de standaard HTML-directory van Nginx, stellen we poort 80 (de standaard HTTP-poort) beschikbaar en starten we Nginx.

Open een terminal en ga naar de root-folder van dit project.
Voer de volgende opdracht uit om het Docker-image te bouwen, volgens het recept in de Dockerfile:

Mac/Linux: 
``./create-docker-image.sh``

Windows: 
``win-docker-create-image.bat``

## Starten van een container o.b.v. dit image
Zodra het image succesvol is gebouwd, kunnen we een container op basis daarvan starten met de volgende opdracht:

``docker run -d -p 8080:80 docker-101:main``

Hierin gebeurt een hele hoop. Deze opdracht start een container op basis van ons eigen aangepaste Nginx-image, koppelt poort 8080 op je PC (host) aan poort 80 binnen de container (-p 8080:80), en voert de container uit in detached-modus (-d).
_Detached_ wil zeggen dat we de container in de achtergrond draaien, en dus na starten terugkomen in onze shell.

Ga nu in een browser naar http://localhost:8080 en bewonder je eigen pagina (of die van je buurman of vrouw)

## Bekijken draaiende containers en logs

Maar hoe kunnen we zien dat de container nog draait, zonder naar de site zelf toe te gaan bijvoorbeeld?
Alle containers zijn op te vragen door het volgende commando te gebruiken:

``docker ps``

Dit staat voor 'Docker Processes'. Want elke container is synoniem met 1 process op OS-niveau.

**TIP**: Dit commando is ook altijd handig om te gebruiken als je wilt checken of Docker goed gestart is op je PC :-)

De eerste kolom is het container-id. Door dat te knippen en te plakken en vervolgens in het volgende commando
te gebruiken kunnen we de _System Output_ van het process zien:

``docker logs <container-id>``
Dus bijv:
``docker logs 9d18b2a81b30``

## Afronden opdracht
Rond deze opdracht af door het container-id op te slaan in het bestand ``container.txt``.

Voeg deze wijziging door met met een ``git commit`` en ``git push`` naar deze Git-repo. Je kan de test ook in de UI
van GitHub.com zelf aanpassen.

## Na afloop
Na afloop kan je de evt. draaiende container verwijderen door het volgende commando uit te voeren:
`` docker kill <container-id>``
