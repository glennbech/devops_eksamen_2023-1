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

kontinuerlig integrasjon er å automatisere integreringen av koden fra flere utviklere, automatisk kjøre tester og slå sammen koden inn i prosjektet når de automatiske verktøyene har verifisert koden. Dette gir utviklere muligheten til å jobbe på en oppdatert Branch å vare sikker på at koden de sender inn er OK om den kommer gjennom testene.


Det er mange fordeler med kontinuerlig integrasjon blant annet så slipper vi ha å personer som har som jobb å teste og gå gjennom koden for å integrere det inni i kodebasen. Da slipper utviklere å vente like lenge på å få vite om koden deres passer inn eller ikke. Med automatisk integrering så vil dette skje raskere og du vil fjerne menneskelig feil i test fasen. Så lenge det er gode tester så vil kode kvaliteten til en viss grad kunne garanteres. Dette gir også utviklerne mer tid på å utvikle prosjektet og mindre tid på å vente på om koden deres er OK. Ikke bare sparer utviklerne tid ved å slippe å vente på noen skal teste koden deres, men gir også sikkerheten at de ikke skal klare å ødelegge hele kodebasen ved en enkel feil, noe som vil gjøre at de jobber med mer selvsikkerheten og dermed mer effektivt.


Infrastruktur som kode sammen med CI gjør det veldig praktisk å håndtere infrastrukturen på. da kan både infrastruktur forandring også testes av automatiske prosesser. Og vil forsikre at alle testene kjøres på en lik infrastruktur som igjen vil forsikre at kvaliteten på koden er bra.


CI i github rent praktisk, vil være eksempel å gjøre at ingen kan direkte commite kode til Main Branchen ved å sette opp branch protection. Og gir bare muligheten til å sende inn pull request til Main fra en annen Branch. Etter en pull request er sent skal koden testes ved hjelp av github actions, som kjører og tester koden for å forsikre seg om at den funker, så kan det vurderes om at det kreves at en annen utvikler gjør en review på requesten før den Merges inn i Main. Om testene feiler så blir requesten stanset og koden må fikses og gå gjennom prosessen en gang til. Når en utvilker skal utvikle noe i prosjektet, lager de først en ny Branch fra main, og jobber bare på den evt. Skriver nye tester for å teste nye koden. Når de er ferdig så sender de en pull request som kjører alle testene automatisk og evt. Krever en review fra en annen utvilker i teamet før den merges inn. Dette fører til at ingen kode skal kunne komme inn i Main Branch. 

 ## B
### 1
 Scrum metodikken baserer seg på «sprints» som var i 1-4 uker. På starten av en sprint har du sprint planning som dreier seg på å planlegge hva som skal gjøres denne sprinten basert på en backlog av oppgaver som produkt eier lager og evt. Beslutninger angående denne sprinten. Hver dag er det en standup møte som alle i teamet skal være med på å si hva de jobber med og evt. Blokkers for å fullføre det de jobber med. På slutten av en sprint kommer produkt eier inn i et møte der de snakker om hva som skal gjøres neste og status på prosjektet. Etter en sprint skal det være noe leverbart til produkt eieren.


 Alle oppgavene i en sprint har en definisjon av ferdig som må fylles før en oppgave kan bli «ferdig» dette kan være å kjøre unit tests, bruker test osv.

 
 Stryker med scrum/smidig, en av de store fordelene med scrum er muligheten for forandring av retting i prosjektet. Da det ikke planlegges lenge på forhånd. Men i stedet så blir det bestemt når det trengs. Dette fører til at et team kan jobbe veldig fritt og smidige i forhold til behovet til kunden. Daily standups fører til at om noen sitter fast med noe så skal det oppdages raskest mulig så de kan få hjelp til å løse dette. Hver sprint er begrenset i scope som gjør det lettere å ikke miste retningen på prosjektet. Sammen med at kunden har ofte møte med teamet fører til at begge er oppdatert på status av prosjektet. Det at kunden er så involvert fører til at kunden vil oftere få et produkt de faktisk vil ha.

 
 Det at en sprint er «isolert» ved tanke på at den har egen planlegging, utvikling og integrerings del så vil sprint være veldig åpen for forandring uten at det krever ekstremt mye arbeid. Og siden integreringen blir mindre i skala i forhold til waterfall så vil det ikke bli like mye arbeid

 
 En av de største ulempene med scrum er hvor mye tid disse møtene kan ta. Det tar tid for en utvikler og sette seg inn i problemet de jobbet med, og det å måtte gå ut av den tanken og inn i et møte de ikke hadde noe å si kan bli bortkastet tid. Om det ikke brukes automatisk integrering i definisjon av ferdig, så kan det føre til at flere feil kommer gjennom. Og siden integreringen skjer på slutten av vær sprint, så kan det skje større feil som tar lang tid å fikse. Så det kan kreves at en utvikler er til stede og integrerer koden inn i produktet. Dette krever da en del tid og kan føre til verre kvalitet og effektivitet. 

### 2
 De grunnleggende prinsippene til DevOps er, Flyt, Feedback og kontinuerlig forbedring. Alle disse prinsippene prøver å gjøre at utviklingen skjer raskt og effektivt, men samtidig ha høy kode kvalitet.


 Flyt, Flyt handler om at når en utvilker gjør en endring skal den «flyte» mest mulig til produktet, eller sent gjennom en «pipeline». Ved hjelp av pipeline så kan vi få CI/CD kontinuerlig integrasjon og kontinuerlig leveranse. I denne pipelinen så blir koden testet, bygget og levert, alt automatisk.

 
 Feedback går ut på å bruke verktøy som logging, alarmen og metrikker for å se statusen av prosjektet. Eks. hvor mange kunder som bruker tjenesten, eller hvor mye ressurser serveren bruker.


 kontinuerlig forbedring, for å få kontinuerlig forbedring så tar vi Feedbacken som vi fikk ved metrikker, logging osv. og prøver å forbedre prosessen. Blameless postmortem, når en feil skjer så blir det ikke tid på å finne en som har «skylden» men heller finne ut hva som forårsaket feilen og hvordan det kan unngås neste gang.

 
 Effekten av disse 3 prinsippene fører til at alle utviklerne kan jobbe med økt selvsikkerhet og hastighet. De får kontinuerlig tilbakemelding av det de selv har laget og kan forbedre koden på en effektiv og rask måte. Det kan føre til en ansvarsfølelse av det de har selv skrevet og vil igjen motivere til å gjøre en bedre jobb. I motsetning om de hadde gitt koden til drift om skal «ta over» koden og sette det i drift å sende det til kunden.

 
 Kunden vil også få se produktet raskere enn om det hadde vært eks. waterfall, da produktet kommer helt på slutten av prosessen som kan ta måneder/år. Ikke bare kan kunden utnytte produktet tidligere, men også så er det lettere for produktet å utvikle seg etter behovene over tid.

 
 Med en god Pipeline så vil også produktivitet gå opp, så det blir mer tid på utvikling å mindre tid på å sette i drift. Som kan føre til et bedre produkt.

 
 En av de større ulempene med DevOps er at den krever en god pipeline og at de i teamet ser etter muligheter til å forbedre pipelinen. Om pipelinen er dårlig, eks. dårlig tester som ikke fanger opp feilene og manglende overvåking ved logging, metrikker osv. så kan mange feil komme igjennom uten at det blir oppdaget raskt nok. Og kan ha konsekvenser for kunder som bruker produktet, eks nedetid på tjenesten.

 
 I visse typer prosjekter der feil er ekstremt kritiske har du ikke muligheten til å gjøre feil å lære av dem. Eks. spill, Romraketter.

### 3
 Med en god pipeline vil leverings tiden på ny funksjonalitet i DevOps ikke være unødvendig lang. Om en ny feature er laget blir den sendt ut. Tar den 3 dager å lage så kommer den ut etter ca 3 dager. Scrum derimot så blir det lansert etter en sprint. Om en 4 ukers sprint har en feature som tar 2 dager å lage så tar det 4 uker før den lanseres.


 Scrum/smidig og DevOps har begge sine fordeler og ulemper. Overordnet så synes jeg at Scrum kan passe bedre til prosjekter der ting er mer ukjent. Hva skal gjøres, hvordan skal det gjøres eller med teknologi som få/ingen i teamet er vant til å bruke. Da vil scrum sine stryker komme frem, med strukturert ned bryting av oppgaver og mange muligheter for å stille spørsmål eller be om hjelp. Det å lage en bra pipeline er vanskelig når du ikke vet hvordan det du jobber med funker. DevOps sin stryke kommer best frem når «scopet» av problemet er litt mer kjent, og muligheten for å lage en god pipeline er lettere. 

 
 Scrum passer også veldig bra der CI/CD ikke er gunstig. Eks. Spill, Romraketter. Om det kommer en oppdatering på et spill hverdag så blir spillerne ikke fornøyd, spesielt når oppdatering ikke legger til noe spesielt nytt, her ville en oppdatering på faste datoer, eller med jevne mellomrom passe bedre. Eks. etter en 4 ukers sprint. DevOps derimot vil funke bedre der levering av ny funksjonalitet og eller endringer kan øke kvaliteten av et produkt og der feedbacken i devops kan utnyttes. Eks. en nettbutikk. Der kan en forandring bli rullet ut og metrikkene på om butikken gjør det bra, kan gi rask tilbakemelding om oppdatering er en suksess, i verste tilfelle rulle tilbake oppdateringen.

## C
For å forsikre meg om at en ny funksjonalitet dekker brukerens behov, ville jeg først kartlagt behovet deres. Så ville jeg ha brukt blant annet logger og metrikker til å kunne få oversikt over applikasjonen. Om det er en nettbutikk så kan det være alt i fra hvor mange kunder kommer inn på siden, hvor mange fyller handlekurven uten å kjøpe noe osv.


Etter at jeg kan se hvordan applikasjonen gjør det i forhold til behovet til brukeren. Da kan jeg rulle ut ny funksjonalitet. Jeg ville eks brukt A/B Testing for å verifisere at den faktisk gjør applikasjonen bedre. Ved først rulle ut oppdatering på region A for 50% av brukerne og holde den gamle versjonen på region B. så ville jeg sett på de metrikkene og loggene fra begge regionene og region A, har en dårligere ytelse i forhold til region B så ville jeg ha rullet tilbake den oppdatering.


Om dette skjer ville jeg så gjort en analyse om hva og hvorfor den nye oppdatering gjorde det dårligere. vist region A hadde hatt en kritisk feil, stort tap av kunder, ingen salg kommer gjennom ol. Ville jeg ha gjort en mer grundig gransking av problemet. Gjort en Blameless postmortem der vi prøver å finne hva som er årsaken til feilen uten å gi noen «skylden» for feilen. Og deretter forbedre pipelinen sånn at sånne feil ikke oppstår igjen.

	
	
	
