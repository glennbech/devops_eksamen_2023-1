# oppgave 1

## A
For å kjøre actions:
* Pass på at S3 bucket lambda-sam-template-2022 finnes
*  Skru på github actions
  * settings -> actions -> general -> allow all actions and reusable workflows
* Legg til secrets i Github (Settings -> secrets and variables -> actions)
  * AWS_ACCESS_KEY_ID
  * AWS_SECRET_ACCESS_KEY

# oppgave 4

## A
Valgte og bruke counter, Gauge, og LongTaskTimer
Counter
  * For å telle hvor mange PPE brud og scans det skjer over tid. kan brukes for å vite hvor mye PPE brud som skjer og om det må gjøres tiltak
  * Gauge på hvor mange våpen som har blitt scannet og trenger håndtering. brukte gauge siden den skal decremente når en håndteres og incrementes når det blir lagt til flere
  * brukte longTaskTimer på scanning av bildene. siden dette er en ekstern tjeneste vil jeg ha informasjon om hvor lang tid denne bruker med tanke på pris osv.