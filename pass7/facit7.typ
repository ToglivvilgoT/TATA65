#import "@preview/diagraph:0.3.5"

+ #pad(bottom: 1.5em)[
  Det finns $8 dot 7 dot 7 dot 6$ sådana stigar
  (ty vi ska välja ett hörn med gradtal 2 och ett hörn med gradtal 1 i varje del av grafen)
]

+ #pad(bottom: 1.5em)[
  Om $a=b$ så finns en Hamiltoncykel, annars inte.
]

+ #pad(bottom: 1.5em)[
  Det finns ett sådant träd med största gradtal 4,
  ett sådant träd med största gradtal 3,
  och ett sådant träd där alla gradtal är 2.
  Totalt 3st icke-isomorfa träd med 5 hörn alltså.
  #diagraph.render("graph {1 -- 2; 1 -- 3; 1 -- 4; 1 -- 5}")
  #diagraph.render("graph {1 -- 2; 1 -- 3; 1 -- 4 -- 5}")
  #diagraph.render("graph {1 -- 2 -- 3; 1 -- 4 -- 5}")
]

+ #pad(bottom: 1.5em)[
  Relationen är reflexiv, symmetrisk och transitiv,
  och därmed en ekvivalensrelation.
  Antalet olika ekvivalensklasser är $6 dot 50 - 6 + 1 = 295$,
  ty ett träd i $B$ har en kostnad som tillhör mängden 
  $C={6,7, . . . ,300}$, och för alla tal $c$ i $C$ finns ett träd med kostnad $c$ som är ett billigaste uppspännande träd i någon viktad $K_7$ där varje kant har en vikt i mängden ${1,2, . . . ,50}$.
  (Varför då)?
]

+ #pad(bottom: 1.5em)[
  Svar: Nej, försök rita upp den!
]

+ #pad(bottom: 1.5em)[
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
  Lösning: Antalet slutna Eulervägar är dels $K_(2,4)$själv,
  och antalet cykler i $K_(2,4)$,
  vilket är $binom(4, 2) + 1$
]

+ #pad(bottom: 1.5em)[
  Lösning: Prövning ger att $K_5$ har 3 icke-isomorfa uppspännande träd.
]

+ #pad(bottom: 1.5em)[
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
]

+ #pad(bottom: 1.5em)[
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
  Påståendet är falskt. Ett enkelt motexempel är $K_5$
]

+ #pad(bottom: 1.5em)[
  a) Lösning: $K_n$ innehåller $3 binom(n, 4)$ cykler, eftersom det finns 3 olika cykler av längd 4 med 4 givna hörn.
  
  b) Svar: Det kromatiska talet är n.
  
  c) Lösning: Använd multiplikationsprincipen:
  det första hörnet kan ges en färg på $lambda$ sätt,
  för nästa hörn har vi $(lambda - 1)$ möjligheter, etc.
]

+ #pad(bottom: 1.5em)[
  Lösning: Den kompletta grafen $K_4$ är planär.
  Eftersom varje graf med högst 4 hörn är en delgraf till $K_4$,
  så är påståendet sant
]

#pad(bottom: 1.5em)[
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

#pad(bottom: 1.5em)[
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