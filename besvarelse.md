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
# oppgave 5
 ## A
- kontinuerlig integrasjon er å automatisere integreringen av koden fra flere utviklere, automatisk kjøre tester og slå sammen koden inn i prosjektet når de automatiske verktøyene har verifisert koden. Dette gir utviklere muligheten til å jobbe på en oppdatert Branch å vare sikker på at koden de sender inn er OK om den kommer gjennom testene.
 - Det er mange fordeler med kontinuerlig integrasjon blant annet så slipper vi ha å personer som har som jobb å teste og gå gjennom koden for å integrere det inni i kodebasen. Da slipper utviklere å vente like lenge på å få vite om koden deres passer inn eller ikke. Med automatisk integrering så vil dette skje raskere og du vil fjerne menneskelig feil i test fasen. Så lenge det er gode tester så vil kode kvaliteten til en viss grad kunne garanteres. Dette gir også utviklerne mer tid på å utvikle prosjektet og mindre tid på å vente på om koden deres er OK. Ikke bare sparer utviklerne tid ved å slippe å vente på noen skal teste koden deres, men gir også sikkerheten at de ikke skal klare å ødelegge hele kodebasen ved en enkel feil, noe som vil gjøre at de jobber med mer selvsikkerheten og dermed mer effektivt.
Infrastruktur som kode sammen med CI gjør det veldig praktisk å håndtere infrastrukturen på. da kan både infrastruktur forandring også testes av automatiske prosesser. Og vil forsikre at alle testene kjøres på en lik infrastruktur som igjen vil forsikre at kvaliteten på koden er bra.

- CI i github rent praktisk, vil være eksempel å gjøre at ingen kan direkte commite kode til Main Branchen ved å sette opp branch protection. Og gir bare muligheten til å sende inn pull request til Main fra en annen Branch. Etter en pull request er sent skal koden testes ved hjelp av github actions, som kjører og tester koden for å forsikre seg om at den funker, så kan det vurderes om at det kreves at en annen utvikler gjør en review på requesten før den Merges inn i Main. Om testene feiler så blir requesten stanset og koden må fikses og gå gjennom prosessen en gang til. Når en utvilker skal utvikle noe i prosjektet, lager de først en ny Branch fra main, og jobber bare på den evt. Skriver nye tester for å teste nye koden. Når de er ferdig så sender de en pull request som kjører alle testene automatisk og evt. Krever en review fra en annen utvilker i teamet før den merges inn. Dette fører til at ingen kode skal kunne komme inn i Main Branch. 
