#import "@preview/diagraph:0.3.5"

+ #pad(bottom: 1.5em)[
  Bestäm för vilka värden på a och b som den kompletta bipartita grafen $K_(a,b)$ innehåller en Hamiltoncykel.

  Om $a=b$ så finns en Hamiltoncykel, annars inte.
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd $V={1,2,3,4,5,6,7,8,9,10,11,12}$ och där två hörn i och j är grannar om 
  - $1 <= i <= 4$ och $1 <= j <= 4$,
  - $5 <= i <= 8$ och $5 <= j <= 8$, eller
  - $9 <= i <= 12$ och $9 <= j <= 12$;
  $G$ innehåller dessutom kanter mellan hörnen
  4 och 5, 5 och 9, samt 4 och 9.
  Avgör om $G$ är planär.
  Bestäm även kromatiska polynomet för $G$

  Lösning: Grafen ser ut som följer:
  #diagraph.render("graph {
    {1 -- 1 -- 2 -- 2 -- 3 -- 3 -- 4 -- 4 -- 1 -- 3; 2 -- 4}
    {5 -- 5 -- 6 -- 6 -- 7 -- 7 -- 8 -- 8 -- 5 -- 7; 6 -- 8}
    {9 -- 9 -- 10 -- 10 -- 11 -- 11 -- 12 -- 12 -- 9 -- 11; 10 -- 12}
    {4 -- 5 -- 9 -- 4}
  }")
  Som synes är grafen planär.
  Vidare är kromatiska polynomet lika med
  $lambda (lambda - 1)(lambda - 2)((lambda - 1)(lambda - 2)(lambda - 3))^3$,
  ty vi kan välja 3 olika färger till triangeln 
  $4 - 5 - 9$ på $(lambda (lambda - 1)(lambda - 2)$ olika sätt,
  och sedan kan resterande färger till varje kopia av $K_4$ väljas på 
  $(lambda - 1)(lambda - 2)(lambda - 3)$ olika sätt.
]

+ #pad(bottom: 1.5em)[
  Finns det någon graf
  (utan multipla kanter och loopar)
  med gradtalen $7,7,5,5,3,3,2,2$?
  Varför/varför inte?

  Svar: Nej, försök rita upp den!
]

+ #pad(bottom: 1.5em)[
  Bestäm hur många stigar av längd 3 som den kompletta bipartita grafen $K_(7,8)$ innehåller

  Det finns $8 dot 7 dot 7 dot 6$ sådana stigar
  (ty vi ska välja ett hörn med gradtal 2 och ett hörn med gradtal 1 i varje del av grafen)
]

+ #pad(bottom: 1.5em)[
  Tilldela varje kant i den kompletta grafen $K_7$ med $7$ hörnen vikt från mängden ${1,2, ... ,50}$.
  Låt $A$ vara mängden av alla viktade grafer som kan bildas på detta sätt.
  Som bekant har varje viktad graf i $A$ ett billigaste uppspännande träd.
  Låt $B$ vara mängden av alla olika billigaste uppspännande träd som kan bildas från en viktad graf i mängden $A$.
  Vi definierar en relation $R$ på mängden $B$ genom att sätta $T_1 R T_2 "om" T_1 "och" T_2$ har samma kostnad,
  där $T_1 "och" T_2$ är två viktade uppspännande träd.
  Visa att $R$ är en ekvivalensrelation och bestäm antalet olika ekvivalensklasser.
  Motivera noggrant!

  Relationen är reflexiv, symmetrisk och transitiv,
  och därmed en ekvivalensrelation.
  Antalet olika ekvivalensklasser är $6 dot 50 - 6 + 1 = 295$,
  ty ett träd i $B$ har en kostnad som tillhör mängden 
  $C={6,7, . . . ,300}$, och för alla tal $c$ i $C$ finns ett träd med kostnad $c$ som är ett billigaste uppspännande träd i någon viktad $K_7$ där varje kant har en vikt i mängden ${1,2, . . . ,50}$.
  (Varför då)?
]

+ #pad(bottom: 1.5em)[
  Betrakta en cykel $C_6$ med hörnmängden ${1,2,3,4,5,6}$.
  Låt $G$ vara komplementet till $C_6$.
  Från $G$ bildar vi en viktad graf genom att tilldela varje kant $i j$ vikten $2(i+j)$.
  Bestäm ett minimalt uppspännande träd i denna viktade graf.
  Avgör även om $G$ innehåller en Hamiltoncykel.

  Lösning: Ett billigaste uppspännande träd i $G$ ges av följande figur: 
  #diagraph.render("graph {
    {rank = min; 1; 2}
    {rank = same; 3; 6}
    {rank = max; 4; 5}
    {edge [style=invis]
      1 -- 6 -- 5; 2 -- 3 -- 4
    }
    1 -- 3 [color = red];
    1 -- 4 [color = red];
    1 -- 5;
    2 -- 6 [color = red];
    2 -- 4;
    2 -- 5 [color = red];
    6 -- 3;
    3 -- 5 [color = red];
    4 -- 6 [color = red];
  }")
  #diagraph.render("graph {
    {rank = min; 1; 2}
    {rank = same; 3; 6}
    {rank = max; 4; 5}
    {edge [style=invis]
      1 -- 6 -- 5; 2 -- 3 -- 4
    }
    1 -- 3;
    1 -- 4;
    1 -- 5;
    2 -- 6;
    2 -- 4;
    2 -- 5 [style = invis];
    6 -- 3 [style = invis];
    3 -- 5 [style = invis];
    4 -- 6 [style = invis];
  }")
  Grafen $G$ har en Hamiltoncykel, t.ex. $1-3-5-2-6-4-1$.
]

+ #pad(bottom: 1.5em)[
  Är det sant att varje sammanhängande planär graf innhåller en hamiltoncykel?
  Bevis eller motexempel

  Lösning: Ett träd är en planär graf som ej innehåller någon hamiltoncykel
]

+ #pad(bottom: 1.5em)[
  Hur många icke-isomorfa träd med 5 hörn finns det?

  Det finns ett sådant träd med största gradtal 4,
  ett sådant träd med största gradtal 3,
  och ett sådant träd där alla gradtal är 2.
  Totalt 3st icke-isomorfa träd med 5 hörn alltså.
  #diagraph.render("graph {1 -- 2; 1 -- 3; 1 -- 4; 1 -- 5}")
  #diagraph.render("graph {1 -- 2; 1 -- 3; 1 -- 4 -- 5}")
  #diagraph.render("graph {1 -- 2 -- 3; 1 -- 4 -- 5}")
]

+ #pad(bottom: 1.5em)[
  Visa att kromatiska polynomet för ett träd $T$ med $n$ hörn är $P(T, delta) = delta (delta - 1)^(n - 1)$

  Lösning: Använd t.ex. induktion över $n$.
]

+ #pad(bottom: 1.5em)[
  Låt $accent(K, hat)_(3, 6)$
  vara grafen som fås från den kompletta bipartita grafen $K_(3,6)$ genom att underdela exakt en kant.
  Vad är kromatiska talet för $accent(K, hat)_(3,6)$

  Kromatiska talet är 3 eftersom det finns en udda cykel i $accent(K, hat)_(3,6)$
]

+ #pad(bottom: 1.5em)[
  Låt $K_7$ vara en komplett graf med hörnmängd ${1,2,3,4,5,6,7}$.

  a) Avgör hur många olika stigar av längd 3 som $K_7$ innehåller.
  
  b) Från $K_7$ bildar vi en viktad graf genom att för varje kant $i j$, där $i < j$,
  tilldela kanten vikten $display((i+j) / "sgd"(i,j))$.
  Bestäm ett minimalt uppspännande träd i den viktade grafen.

  a) Lösning: Om vi räknar stigar i meningen ordnade följder,
  så är antalet sådana stigar av längd tre $binom(7, 4) 4!)$.
  Om vi räknar antalet delgrafer som är stigar, så skall det antal divideras med 2.
  (Båda svaren kan alltså anses vara korrekta.)
  
  b) Lösning: Ett minimalt uppspännande träd är följande:
  #diagraph.render("graph {
    {rank = min; 1}
    {rank = same; 2; 7; 3}
    {rank = max; 4; 5; 6}
    5 -- 1 [label = 6];
    1 -- 2 [label = 2];
    2-- 4 [label = 3];
    6 -- 3 [label = 3];
    3 -- 1 [label = 3];
    1 -- 7 [label = 7];
  }")
]

+ #pad(bottom: 1.5em)[
  Hur många delgrafer som är slutna Eulervägar har den kompletta bipartita grafen $K_(2, 4)$,

  Lösning: Antalet slutna Eulervägar är dels $K_(2,4)$själv,
  och antalet cykler i $K_(2,4)$,
  vilket är $binom(4, 2) + 1$
]

+ #pad(bottom: 1.5em)[
  Låt $K_5$ vara den kompletta grafen med 5 hörn.
  Hur många olika icke-isomorfa uppspännandeträd innehåller $K_5$?
  Bestäm även det kromatiska polynomet för grafen som erhålls från $K_5$ genom att underdela precis en kant i $K_5$

  Lösning: Prövning ger att $K_5$ har 3 icke-isomorfa uppspännande träd.
  Det kromatiska polynomet för grafen som fås från  $K_5$ genom att underdela precis en kant kan bestämma genom att använda den vanliga rekursionsformeln.
  Låt $K^+_5$ vara grafen som fås från $K_5$ genom att underdela precis en kant.
  Kromatiska polynomet för $K^+_5 - e$ ($K^+_5$ minus en kant som slutar vid hörnet av valens 2) är $lambda (lambda - 1)^2(lambda  - 2)(lambda - 3)^2$.
  Vidare genom att kontrahera en kant som slutar vid hörnet av valens 2 fås $K_5$ som har kromatiskt polynom $lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)$.
  Alltså är det sökta kromatiska polynomet 
  $lambda (lambda - 1)^2(lambda - 2)(lambda - 3)^2 - lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda^2 - 5λ + 7)$
]

+ #pad(bottom: 1.5em)[
  Låt $B={1,2,3,4,5}$ och låt $beta$ vara mängden av alla delmängder till $B$ med kardinalitet 2.
  Definiera en graf $G$ med hörnmängd $beta$ där två hörn $B_1,B_2 in beta$ är grannar om och endast om $display(B_1 inter B_2 =emptyset)$.
  Avgör hur lång den kortaste cykeln i $G$ är och bestäm även $chi (G)$

  Grafen ser ut som följer.
  #diagraph.render("graph {
    {rank = same; \"{1, 2}\"; \"{3, 4}\";}
    {rank = same; \"{3, 5}\"; \"{1, 5}\";}
    {rank = same; \"{2, 4}\"; \"{2, 3}\";}
    {rank = same; \"{1, 3}\"; \"{4, 5}\";}
    {rank = same; \"{2, 5}\"; \"{1, 4}\";}

    \"{1, 2}\" -- \"{3, 4}\";
    \"{1, 2}\" -- \"{3, 5}\";
    \"{1, 2}\" -- \"{4, 5}\";
    
    \"{1, 3}\" -- \"{4, 5}\";
    \"{1, 3}\" -- \"{2, 4}\";
    \"{1, 3}\" -- \"{2, 5}\";
 
    \"{1, 4}\" -- \"{2, 3}\";
    \"{1, 4}\" -- \"{2, 5}\";
    \"{1, 4}\" -- \"{3, 5}\";

    \"{1, 5}\" -- \"{2, 3}\";
    \"{1, 5}\" -- \"{2, 4}\";
    \"{1, 5}\" -- \"{3, 4}\";

    \"{2, 3}\" -- \"{4, 5}\";
    \"{2, 4}\" -- \"{3, 5}\";
    \"{2, 5}\" -- \"{3, 4}\";
  }")
  Från figuren ser vi att den kortaste cykeln i $G$ har längd 5.
  Eftersom $G$ innehåller en cykel av längd 5,
  så gäller $chi (G) >= 3$.
  Att $chi (G) <= 3$ ser vi genom att korrekt färga grafen med 3 färger.
  (Gör detta!)
  Alltså får vi att $chi (G) = 3$.
  o-mängden
]

+ #pad(bottom: 1.5em)[
  Är alla grafer med hörnmängd ${1, 2, 3, 4, 5}$,
  som innehåller precis två cykler av längd 3, isomorfa?

  Lösning: Det är intesant.
  Ett motexempel är t.ex. en graf som består av två cykler med precis ett gemensamt hörn,
  och grafen som kan konstrueras från en cykel av längd fyra genom att lägga till exakt
  en kant mellan två hörn som inte är grannar, och sedan ytterligare ett hörn av gradtal
  1 som har en kant till precis ett av hörnen på 4-cykeln
  #grid(columns: 2, column-gutter: 4em)[
    #diagraph.render("graph {
      { rank = min; 4, 5 }
      { rank = max; 2, 3 }
      1 -- 2 -- 3 -- 1;
      1 -- 4 -- 5 -- 1
    }")
  ][
    #diagraph.render("graph {
      { rank = min; 1, 2, 5 }
      { rank = max; 3, 4 }
      1 -- 2 -- 3; 
      1 -- 4 -- 3;
      1 -- 3;
      5 -- 1;
    }")
  ]
]

+ #pad(bottom: 1.5em)[
  Låt $A = {1,2} times {1,2,3,4}$ och
  definiera en graf $G$ med hörnmängd $A$ genom att låta hörnen
  $(x, y)$ och $(w, z)$ vara grannar om $x eq.not w$,
  eller om $x = w$ och $y + z <= 5$.
  Avgör hur lång den längsta cykeln i $G$ är och bestäm även kromatiska polynomet för $G$

  Lösning: Grafen $G$ kan fås från följande graf genom att dessutom lägga till alla möjliga kanter mellan de två komponenterna.
  Därmed fås att den längsta cykeln innehåller alla hörn i $G$,
  och alltså har längd 8.
  #diagraph.render("graph {
    { rank = min; \"(1, 1)\", \"(1, 2)\", \"(1, 3)\", \"(1, 4)\"}
    { rank = max; \"(2, 1)\", \"(2, 2)\", \"(2, 3)\", \"(2, 4)\"}
    {
      \"(1, 1)\" -- \"(2, 1)\";
      \"(1, 1)\" -- \"(2, 2)\";
      \"(1, 1)\" -- \"(2, 3)\";
      \"(1, 1)\" -- \"(2, 4)\";
    }
    {
      \"(1, 2)\" -- \"(2, 1)\";
      \"(1, 2)\" -- \"(2, 2)\";
      \"(1, 2)\" -- \"(2, 3)\";
      \"(1, 2)\" -- \"(2, 4)\";
    }
    {
      \"(1, 3)\" -- \"(2, 1)\";
      \"(1, 3)\" -- \"(2, 2)\";
      \"(1, 3)\" -- \"(2, 3)\";
      \"(1, 3)\" -- \"(2, 4)\";
    }
    {
      \"(1, 4)\" -- \"(2, 1)\";
      \"(1, 4)\" -- \"(2, 2)\";
      \"(1, 4)\" -- \"(2, 3)\";
      \"(1, 4)\" -- \"(2, 4)\";
    }
  }")
  #diagraph.render("graph {
    {
      \"(1, 1)\" -- \"(1, 1)\";
      \"(1, 1)\" -- \"(1, 2)\";
      \"(1, 1)\" -- \"(1, 3)\";
      \"(1, 1)\" -- \"(1, 4)\";

      \"(2, 1)\" -- \"(2, 1)\";
      \"(2, 1)\" -- \"(2, 2)\";
      \"(2, 1)\" -- \"(2, 3)\";
      \"(2, 1)\" -- \"(2, 4)\";

      \"(1, 2)\" -- \"(1, 2)\";
      \"(1, 2)\" -- \"(1, 3)\";

      \"(2, 2)\" -- \"(2, 2)\";
      \"(2, 2)\" -- \"(2, 3)\";
    }
  }")
  Det kromatiska polynomet för en triangel är $lambda (lambda - 1)(lambda - 2)$ (via multiplikationsprincipen)
  och alltså får vi att det finns 
  $lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)$
  sätt att färga delgrafen bestående av de två nedre trianglarna i figuren och kanterna mellan dem.
  Vi tillämpar rekursionsformeln
  $P(G,lambda) = P(G - e,lambda) - P(G dot e,lambda)$
  på grafen $G$ och kanten $e$ mellan hörnen $(2,4)$ och $(2,1)$.
  Då gäller att
  $P(G - e, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)(lambda - 4)^2 "och" P(G dot e, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)(lambda - 4)$.
  Alltså får vi att 
  $P(G, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)^2(lambda - 5)^2$
]

+ #pad(bottom: 1.5em)[
  Är det sant att varje graf som har en Hamiltoncykel är planär?

  Påståendet är falskt. Ett enkelt motexempel är $K_5$
]

+ #pad(bottom: 1.5em)[
  a) Hur många olika cykler av längd 4 innehåller den kompletta grafen 
  $K_n space (n in NN)$?

  b) Bestäm det kromatiska talet $chi (K_n)$.
  
  c) Visa att det kromatiska polynomet för en komplett graf $K_n$ är 
  $P(K_n, lambda) = lambda (lambda - 1)(lambda - 2) ... (lambda - n + 1)$.

  a) Lösning: $K_n$ innehåller $3 binom(n, 4)$ cykler, eftersom det finns 3 olika cykler av längd 4 med 4 givna hörn.
  
  b) Svar: Det kromatiska talet är n.
  
  c) Lösning: Använd multiplikationsprincipen:
  det första hörnet kan ges en färg på $lambda$ sätt,
  för nästa hörn har vi $(lambda - 1)$ möjligheter, etc.
]

+ #pad(bottom: 1.5em)[
  Är varje graf med högst 4 hörn planär? Motivera ditt svar!

  Lösning: Den kompletta grafen $K_4$ är planär.
  Eftersom varje graf med högst 4 hörn är en delgraf till $K_4$,
  så är påståendet sant
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd $V={1,2,3,4,5,6}$ där två hörn $i$ och $j$, där $i > j$, är grannar om $floor(i/j)$ är ett udda tal.
  Tilldela kanten $i j$ i $G$ vikten $i + j$.
  
  a) Bestäm ett billigaste uppspännande träd i grafen $G$.
  
  b) Låt $C$ vara mängden av alla olika viktade uppspännande träd som den viktade grafen $G$ innehåller.
  Vi definierar en relation $R$ på mängden $C$ genom att sätta $T_1 space R space T_2 "om" T_1$ inte har högre kostnad än $T_2$,
  där $T_1$ och $T_2$ är två viktade uppspännande träd.
  Är $R_3$ en partialordning? Motivera noggrant!

  a) Lösning: Ett billigaste uppspännande träd är följande graf:
  #diagraph.render("graph {
    { rank = min; 1, 3, 2}
    { rank = same; 5, 4}
    1 -- 3 [label = 4];
    1 -- 5 [label = 6];
    3 -- 2 [label = 5];
    2 -- 6 [label = 8];
    3 -- 4 [label = 7];
    5 -- 3 [label = 8];
    5 -- 4 [label = 9];
    4 -- 6 [label = 10];
    5 -- 6 [label = 11];
  }")
  #diagraph.render("graph {
    { rank = min; 1, 3, 2}
    { rank = same; 5, 4}
    1 -- 3 [label = 4];
    1 -- 5 [label = 6];
    3 -- 2 [label = 5];
    2 -- 6 [label = 8];
    3 -- 4 [label = 7];
    5 -- 3 [color = invis];
    5 -- 4 [color = invis];
    4 -- 6 [color = invis];
    5 -- 6 [color = invis];
  }")

  
  b) Svar: Det finns två olika uppspännande träd med kostnad 32, så relationen är inte antisymmetrisk och alltså inte en partialordning.
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd 
  $V={1,2,4,6,8,9,10,11}$
  och låt hörnen $i$ och $j$ vara förbundna med en kant om
  $i - j "eller" j - i$ är ett udda tal, för alla $i, j in V$
  sådana att $i != j$.
  
  a) Avgör om $G$ har en hamiltoncykel och/eller eulerväg.
  
  b) Bestäm kromatiska talet för $G$

  Lösning: Grafen kan ritas på följande sätt:
  #diagraph.render("graph {
    1 -- 2;
    1 -- 4;
    1 -- 6;
    1 -- 8;
    1 -- 10;

    9 -- 2;
    9 -- 4;
    9 -- 6;
    9 -- 8;
    9 -- 10;

    11 -- 2;
    11 -- 4;
    11 -- 6;
    11 -- 8;
    11 -- 10;
  }")
  
  a) Alla hörn i grafen $G$ har udda valens, så $G$ kan ej ha någon eulerväg.
  Vidare är $G$ en bipartit graf där de partita mängderna 
  ${1,9,11}$ och ${2,4,6,8,10}$
  har olika storlek, varför G inte har någon Hamiltoncykel.
  
  b) Grafen $G$ är bipartit, så den har kromatiskt tal $2$
]