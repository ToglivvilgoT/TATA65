#import "@preview/diagraph:0.3.5"

//Handskakningslemmat.
//Def. av komplement, delgraf och isomorfa grafer.
//Vägar: sluten, öppen, cykel, stig (enkel väg), längd av väg.
//Def. av sammanhängande graf och komponenter.
//Eulervägar och Hamiltoncykler, med sats om när det finns sluten resp. öppen Eulerväg.
//Def. av komplett graf, bipartit graf och komplett bipartit graf.
//Träd: def. av träd och skog, samband mellan antalet kanter och hörn i träd/skog, def. av uppspännande träd.
//Def. av viktad graf.
//Kruskals algoritm för att bestämma uppspännande träd med minimal kostnad i sammanhängande viktad graf.
//Exempel på bestämning av ett minimalt uppspännande träd mha Kruskals algoritm.

+ #pad(bottom: 1.5em)[
  Bestäm hur många stigar av längd 3 som den kompletta bipartita grafen $K_(7,8)$ innehåller
]

+ #pad(bottom: 1.5em)[
  Bestäm för vilka värden på a och b som den kompletta bipartita grafen $K_(a,b)$ innehåller en Hamiltoncykel.
]

+ #pad(bottom: 1.5em)[
  Hur många icke-isomorfa träd med 5 hörn finns det?
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
]

+ #pad(bottom: 1.5em)[
  Finns det någon graf
  (utan multipla kanter och loopar)
  med gradtalen $7,7,5,5,3,3,2,2$?
  Varför/varför inte?
]

+ #pad(bottom: 1.5em)[
  Betrakta en cykel $C_6$ med hörnmängden ${1,2,3,4,5,6}$.
  Låt $G$ vara komplementet till $C_6$.
  Från $G$ bildar vi en viktad graf genom att tilldela varje kant $i j$ vikten $2(i+j)$.
  Bestäm ett minimalt uppspännande träd i denna viktade graf.
  Avgör även om $G$ innehåller en Hamiltoncykel.
]

+ #pad(bottom: 1.5em)[
  Låt $K_7$ vara en komplett graf med hörnmängd ${1,2,3,4,5,6,7}$.

  a) Avgör hur många olika stigar av längd 3 som $K_7$ innehåller.
  
  b) Från $K_7$ bildar vi en viktad graf genom att för varje kant $i j$, där $i < j$,
  tilldela kanten vikten $display((i+j) / "sgd"(i,j))$.
  Bestäm ett minimalt uppspännande träd i den viktade grafen.
]

+ #pad(bottom: 1.5em)[
  Hur många delgrafer som är slutna Eulervägar har den kompletta bipartita grafen $K_(2, 4)$,
]

+ #pad(bottom: 1.5em)[
  Låt $K_5$ vara den kompletta grafen med 5 hörn.
  Hur många olika icke-isomorfa uppspännande träd innehåller $K_5$?
]

+ #pad(bottom: 1.5em)[
  Låt $B={1,2,3,4,5}$ och låt $beta$ vara mängden av alla delmängder till $B$ med kardinalitet 2.
  Definiera en graf $G$ med hörnmängd $beta$ där två hörn $B_1,B_2 in beta$ är grannar om och endast om $display(B_1 inter B_2 =emptyset)$.
  Avgör hur lång den kortaste cykeln i $G$ är
]

+ #pad(bottom: 1.5em)[
  Är alla grafer med hörnmängd ${1, 2, 3, 4, 5}$,
  som innehåller precis två cykler av längd 3, isomorfa?
]

+ #pad(bottom: 1.5em)[
  Låt $A = {1,2} times {1,2,3,4}$ och
  definiera en graf $G$ med hörnmängd $A$ genom att låta hörnen
  $(x, y)$ och $(w, z)$ vara grannar om $x eq.not w$,
  eller om $x = w$ och $y + z <= 5$.
  Avgör hur lång den längsta cykeln i $G$ är och bestäm även kromatiska polynomet för $G$
]

+ #pad(bottom: 1.5em)[
  Är det sant att varje graf som har en Hamiltoncykel är planär?
]

+ #pad(bottom: 1.5em)[
  a) Hur många olika cykler av längd 4 innehåller den kompletta grafen 
  $K_n space (n in NN)$?

  b) Bestäm det kromatiska talet $chi (K_n)$.
  
  c) Visa att det kromatiska polynomet för en komplett graf $K_n$ är 
  $P(K_n, lambda) = lambda (lambda - 1)(lambda - 2) ... (lambda - n + 1)$.
]

+ #pad(bottom: 1.5em)[
  Är varje graf med högst 4 hörn planär? Motivera ditt svar!
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd $V={1,2,3,4,5,6}$ där två hörn $i$ och $j$, där $i > j$, är grannar om $floor(i/j)$ är ett udda tal.
  Tilldela kanten $i j$ i $G$ vikten $i + j$.
  
  a) Bestäm ett billigaste uppspännande träd i grafen $G$.
  
  b) Låt $C$ vara mängden av alla olika viktade uppspännande träd som den viktade grafen $G$ innehåller.
  Vi definierar en relation $R$ på mängden $C$ genom att sätta $T_1 space R space T_2 "om" T_1$ inte har högre kostnad än $T_2$,
  där $T_1$ och $T_2$ är två viktade uppspännande träd.
  Är $R_3$ en partialordning? Motivera noggrant!
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd 
  $V={1,2,4,6,8,9,10,11}$
  och låt hörnen $i$ och $j$ vara förbundna med en kant om
  $i - j "eller" j - i$ är ett udda tal, för alla $i, j in V$
  sådana att $i != j$.
  
  a) Avgör om $G$ har en hamiltoncykel och/eller eulerväg.
  
  b) Bestäm kromatiska talet för $G$
]