#import "@preview/diagraph:0.3.5"

= Grafer
+ #pad(bottom: 1.5em)[
  Påståendet är falskt. Ett enkelt motexempel är $K_5$
]

+ #pad(bottom: 1.5em)[
  Lösning: Den kompletta grafen $K_4$ är planär.
  Eftersom varje graf med högst 4 hörn är en delgraf till $K_4$,
  så är påståendet sant
]

+ #pad(bottom: 1.5em)[
  Lösning: Det kromatiska polynomet för grafen som fås från  $K_5$ genom att underdela precis en kant kan bestämma genom att använda den vanliga rekursionsformeln.
  Låt $K^+_5$ vara grafen som fås från $K_5$ genom att underdela precis en kant.
  Kromatiska polynomet för $K^+_5 - e$ ($K^+_5$ minus en kant som slutar vid hörnet av valens 2) är $lambda (lambda - 1)^2(lambda  - 2)(lambda - 3)^2$.
  Vidare genom att kontrahera en kant som slutar vid hörnet av valens 2 fås $K_5$ som har kromatiskt polynom $lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)$.
  Alltså är det sökta kromatiska polynomet 
  $lambda (lambda - 1)^2(lambda - 2)(lambda - 3)^2 - lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda^2 - 5 lambda + 7)$
]

+ #pad(bottom: 1.5em)[
  Lösning: Använd t.ex. induktion över $n$.
]

+ #pad(bottom: 1.5em)[
  Lösning: Grafen ser ut som följer:
  #diagraph.render("graph {
    {rank = same; 3, 4}
    {rank = min; 1}
    {rank = same; 5, 9}
    {rank = same; 7, 8, 11, 12}
    {
      1 -- 1;
      1 -- 2;
      2 -- 2;
      2 -- 3;
      3 -- 3;
      3 -- 4;
      4 -- 4;
      4 -- 1;
      3 -- 1;
      2 -- 4
    }
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
  på grafen $G$ och kanten $e$ mellan hörnen $(2,4)$ och $(1,4)$.
  Då gäller att
  $P(G - e, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)(lambda - 4)^2 "och" P(G dot e, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)(lambda - 6)$.
  Alltså får vi att 
  $P(G, lambda) = lambda (lambda - 1)(lambda - 2)(lambda - 3)(lambda - 4)(lambda - 5)(lambda^2 - 9 lambda + 22)$
]

+ #pad(bottom: 1.5em)[
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
  Lösning: Grafen $G$ är bipartit, så den har kromatiskt tal $2$
]

+ #pad(bottom: 1.5em)[
  Lösning: Ett träd är en planär graf som ej innehåller någon hamiltoncykel
]

= Po-mängder

+ #pad(bottom: 1.5em)[
  a) Svar: Relationen är reflexiv, antisymmetrisk och transitiv
  och alltså en partialordning.
  Hassediagrammet ser ut på följande sätt:
  #diagraph.render("graph {
    {rank = min; 14, 15, 16, 17, 18, 19}
    {rank = max; 7, 8, 9, 10, 11, 12, 13}
    14 -- 7;
    16 -- 8;
    18 -- 9;
    10; 11; 12; 13; 15; 17; 19;
    15--10 [style=invis];
    11--17 [style=invis];
    7--8 [style=invis];
    8--9 [style=invis];
  }")
  
  b) Lösning: Alla element utom $14,16,18$ är minimala,
  och alla element utom $7,8,9$ är maximala
]

+ #pad(bottom: 1.5em)[
  Relationen är reflexiv, antisymmetrisk och transitiv,
  och därmed en partialordning.
  Hassediagrammet ser ut på följande sätt
  #diagraph.render("graph {
  21 -- 24 -- 27 -- 30 -- 33 -- 36 -- 39
  22 -- 25 -- 28 -- 31 -- 34 -- 37 -- 40
  23 -- 26 -- 29 -- 32 -- 35 -- 38
  }")
]

+ #pad(bottom: 1.5em)[
  a) Lösning: Relationen är inte antisymmetrisk, och alltså inte en partialordning.
  
  b) Lösning: En partialordning $prec.curly$
  på $R$ ges av ordna elementen enligt följande:
  $(6,10) prec.curly (6,11) prec.curly (7,10) prec.curly (7,11) prec.curly (8,10) prec.curly (8,11) prec.curly (9,10) prec.curly (9,11)$.
  (Det finns många olika lösningar.)
]

+ #pad(bottom: 1.5em)[
  a) Lösning: Relationen är reflexiv, antisymmetrisk och transitiv
  och alltså en partialordning.
  
  b) Lösning: Hassediagrammet ser ut som följer:
  #diagraph.render("graph {
    \"(9,11)\" -- \"(9,10)\" -- \"(8,11)\" -- \"(8,10)\" -- \"(7,11)\" -- \"(7,10)\" -- \"(6,11)\" -- \"(6,10)\"
  }")

  c) Lösning: Po-mängden kan bara sorteras topologiskt på ett sätt,
  eftersom det är en totalordning.
]