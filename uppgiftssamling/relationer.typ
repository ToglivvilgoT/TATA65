#import "@preview/diagraph:0.3.5"

+ #pad(bottom: 1.5em)[
  Låt $R$ vara en relation på $ZZ times ZZ$ som definieras genom att sätta $(u, v) R (x, z)$ om $u + x$ är ett jämnt heltal.
  Visa att $R$ är en ekvivalensrelation samt bestäm alla skilda ekvivalensklasser.

  Relationen är reflexiv, symmetrisk och transitiv och alltså en ekvivalensrelation.
  Partitionen som $R$ ger upphov till är $ZZ times ZZ = {2k:k in ZZ} times ZZ union {2k + 1 :k in ZZ}  times ZZ$.
]

+ #pad(bottom: 1.5em)[
  Låt $B$ vara mängden av alla olika följder av längd 10 som består av ettor och nollor
  och där ett udda antal siffror i följden är ettor.
  Definiera en relation $R$ på $B$ genom att sätta $x R y$
  om summan av de ingående siffrorna i x är mindre än eller lika med summan av de ingående siffrorna i y.
  Avgör om $R$ är en partialordning samt bestäm $abs(B)$.
  Motivera noggrant.

  Relationen är inte antisymmetrisk och alltså inte en partialordning.
  En följd som tillhör $B$ har $1,3,5,7, "eller" 9$ ettor.
  Alltså gäller att $abs(B) = 2 dot 10!/(1!9!) + 2 dot 10!/(3!7!) + 10!/(5!5!)$
]

/*
+ #pad(bottom: 1.5em)[
  Låt $A$ vara mängden av alla olika booleska funktioner f(x, y)med2variablerx, y.LåtRvaraenrelationpåAsomdenierasavattfRgomf(x,1) =g(x,1),d.v.s.f(x, y) =g(x, y)omy= 1.ÄrRenekvivalensrelation?BestämisåfalldenpartitionavAsomRgerupphovtill.

  Relationenärreflexiv,symmetrisko chtransitivo challtsåenekvivalensrelation.Detfinnstotalt24= 16olikab o oleskafunktionermed2variabler.PartitionenavmängdenAärA={0, xy,xy,y} ∪ {xy, x, xy+xy, x+y} ∪ {xy, xy+xy,x,x+y} ∪ {y, x+y,x+y,1},vilketkanvisasgenomattt.ex.tabuleraalla16funktionero chundersökavilkasomharsammafunktionsvärdendåy= 1
]
*/

+ #pad(bottom: 1.5em)[
  Låt $R$ vara en relation på ${1,2,3,4,5}$ som ges av $R={(1,2),(3,4),(2,3)}$.
  Vad är det minsta antalet ordnade par som måste läggas till $R$ för att få en
  
  a) reflexiv relation?

  b) symmetrisk relation?
  
  c) antisymmetrisk relation?

  d) transitiv relation?

  e) ekvivalensrelation?

  f) Vilken partition skapas av relation i uppgift e)?

  a) Lösning: $(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)$ så 5

  b) Lösning: $(2, 1), (4, 3), (3, 2)$ så 3

  c) Lösning: 0 ty den är antisymmetrisk

  d) Lösning: Vi måste lägga till $(1,3),(2,4),(1,4)$, så det minsta antalet är $3$.

  e) Lösning: 14 (rita ett diagram)

  f) Lösning: ${1, 2, 3, 4, 5} = [1] union [5] = {1, 2, 3, 4} union {5}$
]

/*
LåtJvaramängdenavallaheltalsomärdelbaramed5.DenieraenrelationR1påJgenomattsättaxR1yom10|(x+y).VisaattR1ärenekvivalensrelationpåJo chb estämallaekvivalensklassersomJgerupphovtill

Relationenärreflexiv,symmetrisko chtransitivo challtsåenekvivalensrelation.Omxärdelbartmed5sågällerantingenx≡0mod10ellerx≡5mod10.AlltsåblirmotsvarandepartitionavJ:J=[0]∪[5],där[0] ={x∈J:x≡0mod10}och[5] ={x∈J:x≡0mod10}.
*/

+ #pad(bottom: 1.5em)[
  Från bokstäverna i ordet KÖRSBÄRSTRÄD kan olika ”ord” (d.v.s. följder av bokstäver) bildas genom att välja ut ett godtyckligt antal av dessa bokstäver och sätta samman dem till en följd.
  Låt $A$ vara mängden av alla ord som kan bildas på detta sätt.
  Definiera en relation $R$ på $A$ genom att låta $x R y "om" x "och" y$ innehåller lika många bokstäver.
  (Således gäller t.ex. att RÖD och BÄR står i relation till varandra under $R$, medan RÖD och RÖ inte gör det.)
  Visa att $R$ är en ekvivalensrelation, bestäm antalet ekvivalensklasser samt antalet element i ekvivalensklassen \[BRÖD\].

  Relationen är reflexiv, symmetrisk och transitiv och alltså en ekvivalensrelation.
  Antalet ekvivalensklasser är 12,
  och $display(abs(\["BRÖD"\])=binom(8, 4)4! + binom(7, 2) binom(3, 1) 4!/2! + binom(3, 2) 4!/(2!2!) + binom(7, 1)4!/3!)$,
  ty ett ord med 4 bokstäver kan bestå av 4 olika bokstäver,
  precis en dublett,
  exakt två dubletter,
  eller 3st R och en ytterligare bokstav.
]

+ #pad(bottom: 1.5em)[
  Låt $R={(1,1),(1,2),(1,3),(2,3),(3,3)}$ vara en relation på ${1,2,3}$.
  Rita relationsgrafen för $R$ och avgör om $R$ är transitiv

  Grafen har hörnmängden ${1,2,3}$ och elementen i $R$ som riktade kanter.
  $R$ är transitiv
  #diagraph.render("digraph {1 -> 1 1 -> 2 1 -> 3 2 -> 3 3 -> 3}")
  
]

+ #pad(bottom: 1.5em)[
  Definiera en relation $R$ på de naturliga talen $NN$ genom att sätta $x R y "om" x^2 - y^2 equiv 0 mod 5$.
  Visa att $R$ är en ekvivalensrelation och bestäm den partition av $NN$ som $R$ ger upphov till.

  Relationen är reflexiv, symmetrisk och transitiv
  och alltså en ekvivalensrelation.
  Ekvivalensklasserna är $[0] = {0,5,10,...},[1] = [4] ={1,6,11,...} union {4,9,14,...}, "och" [2] =[3] = {2,7,12,...} union {3,8,13,...}$,
  som alltså utgör en partition av $NN$
]

+ #pad(bottom: 1.5em)[
  Låt $X$ vara mängden av alla positiva delare till $4500$.
  Definiera en relation $R$ på $X$ genom att sätta $x R y$ om $x$ och $y$ har lika många primtalsfaktorer.
  (T.ex. gäller att $4 R 6$ och $2 R 3$, men $2 accent(R, slash) 4$.)
  Visa att $R$ är en ekvivalensrelation
  och ange alla skilda ekvivalensklasser
  och antalet element i varje sådan klass.

  Relationen är uppenbar treflexiv, symmetrisk och transitiv
  och alltså en ekvivalensrelation.
  Primtalsfaktoriseringen av $4500 "är" 4500 = 2^2 dot 3^2 dot 5^3$.
  Ekvivalensklasserna är alltså $\[1\],\[2\],\[4\],\[12\],\[36\],\[180\],\[900\],\[4500\]$,
  och $abs(\[1\]) = 1, abs(\[2\])= 3,abs(\[4\])= 6,abs(\[12\])= 8,abs(\[36\])= 8,abs(\[180\])= 6,abs(\[900\])= 3,abs(\[4500\])= 1$.
]

+ #pad(bottom: 1.5em)[
  Låt $A$ vara mängden av "ord" (d.v.s följder av bokstäver) med minst sex (ej nödvändigtvis olika) bokstäver som kan bildas av bokstäverna i ordet BADSTRAND. Definiera en relation $R$ på $A$ genom $x R y$ om orden $x$ och $y$ antingen båda innehåller följden SANDAT, eller varken $x$ eller $y$ innehåller följden SANDAT. Är $R$ en ekvivalensrelation? Bestäm även kardinaliteten hos mängden ${x in A:x R "DANSAR"}$

  Relationen är reflexiv, symmetrisk och transitiv, och alltså en ekvivalensrelation.
  Notera att ekvivalensrelationen ger upphov till endast två ekvivalensklasser:
  de element som innehåller följden SANDAT,
  och de som inte innehåller denna följd.
  Vi ska bestämma antalet element i den senare ekvivalensklassen.
  Antalet element som innehåller följden SANDAT är $1 +binom(3, 1) dot 2 + binom(3, 2)  dot 3! + 4!$,
  eftersom en sådan följd innehåller 6, 7, 8 eller 9 bokstäver och i denna skall “ordet” SANDAT ingå (och denna följd kan därmed betraktas som en bokstav).
  Låt oss nu bestämma $abs(A)$.
  Antalet "ord" med sex bokstäver är $binom(7, 6) 6! + 2 binom(6, 4) 6! 2! + binom(5, 2) 6!2!2!$,
  eftersom en sådan följd kan innehålla sex olika bokstäver,
  2 A eller D och 4 andra olika bokstäver,
  eller precis 2 A, 2 D och två andra bokstäver.
  På samma sätt fås att antalet följder med 7 bokstäver är $7! + 2 binom(6, 5) 7!2! + binom(5, 3) 7!2!2!$,
  antalet följder med 8 bokstäver är $2 8!2! +binom(5, 4) 8!2!2!$,
  och antalet med nio bokstäver är precis $9!2!2!$.
  Kardinaliteten hos mängden ${x in A : x R "DANSAR"}$ är alltså $9!2!2! + 28!2! + binom(5, 4) 8!2!2! + 7! + 2 binom(6, 5) 7!2! + binom(5, 3) 7!2!2! + binom(7, 6) 6! + 2 binom(6, 4) 6!2! + binom(5, 2) 6!2!2! - (1 + binom(3, 1) dot 2 + binom(3, 2) dot 3! + 4!)$
]

/*
Låta= 23·33·72och låtBvara mängden av alla positiva delare tilla. Definiera en relationR1påBgenom att sättaxR1yom taletxhar samma antal primtalsfaktorer i sin primtals-faktorisering somy. (Till exempel gäller alltså att2R13och6R19, eftersom6 = 2·3och9 = 3·3.) Visa attR1är en ekvivalensrelation, samt ange alla skilda ekvivalensklasser ochantalet element i varje ekvivalensklass.(3p)VAR GOD VÄND!

Relationen är reflexiv, symmetrisk och transitiv, och alltså en ekvivalensrelation.De skilda ekvivalensklasserna är[1],[2],[2·3],[23],[23·3],[23·32],[23·33],[23·33·7]och[23·33·72].Vidare gäller att|[1]|= 1,|[2]|= 3,|[22]|= 6och|[23]|= 2 + 3·2 + 1 = 9, eftersom omexponenterna ska summera till 3, så finns3möjligheter:x3, x2y1ochxyz.På samma sätt fås att|[23·3]|= 2·2 + 3 + 3 = 10,|[23·32]|= 2·2 + 2 + 3 = 9,|[23·33]|=1 + 4 + 1 = 6,|[23·33·7]|= 1 + 2 = 3och|[23·33·72]|= 1
*/

/*
Från bokstäverna i ordet VINTERVILARNA kan olika ord (d.v.s. följder av bokstäver) bildasgenom att välja ut ett godtyckligt antal av dessa bokstäver och sätta samman dem till en följd.LåtQvara mängden av alla ord med exakt6bokstäver som kan bildas på detta sätt. Definieraen relationRpåQgenom att sättaxRyomxinnehåller lika många A och lika mångaI somy. (Således gäller t.ex. att TRAVAR och VARNAR står i relation till varandra underR, medan VINTER och RITARE inte gör det.) Visa attRär en ekvivalensrelation, bestämantalet ekvivalensklasser samt bestäm antalet element i ekvivalensklassen [TRANAN

Relationen är reflexiv, symmetrisk och transitiv, och alltså en ekvivalensrelation.Ett ord iQkan innehålla högst 2 stA, och högst 2 stI, så vi får totalt3·3 = 9ekvivalensklasser.Ordet TRANAN innehåller 2 st A och inga I. De bokstäver som vi kan använda för attkonstruera ord som tillhör ekvivalensklassen [TRANAN] är 2 st V, 2 st N, 1 st T, 1 st E, 2 stR, och 1 st L, förutom de 2 st A som ska ingå.Antalet ord i [TRANAN] som innehåller exakt 3 olika bokstäver är326!2!2!2!, antalet ord medexakt 4 olika bokstäver är31526!2!2!, och antalet med5olika bokstäver är646!2!. Antaletelement i ekvivalensklassen [TRANAN] är alltså326!2!2!2!+31526!2!2!+646!2!
*/