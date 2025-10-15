#import "@preview/diagraph:0.3.5"

= Grafer
+ #pad(bottom: 1.5em)[
  Är det sant att varje graf som har en Hamiltoncykel är planär?
]

+ #pad(bottom: 1.5em)[
  Är varje graf med högst 4 hörn planär? Motivera ditt svar!
]

+ #pad(bottom: 1.5em)[
  Låt $K_5$ vara den kompletta grafen med 5 hörn.
  Bestäm även det kromatiska polynomet för grafen som erhålls från $K_5$ genom att underdela precis en kant i $K_5$
]

+ #pad(bottom: 1.5em)[
  Visa att kromatiska polynomet för ett träd $T$ med $n$ hörn är $P(T, delta) = delta (delta - 1)^(n - 1)$
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
]

+ #pad(bottom: 1.5em)[
  Låt $A = {1,2} times {1,2,3,4}$ och
  definiera en graf $G$ med hörnmängd $A$ genom att låta hörnen
  $(x, y)$ och $(w, z)$ vara grannar om $x eq.not w$,
  eller om $x = w$ och $y + z <= 5$.
  Bestäm det kromatiska polynomet för $G$
]

+ #pad(bottom: 1.5em)[
  Låt $G$ vara grafen med hörnmängd 
  $V={1,2,4,6,8,9,10,11}$
  och låt hörnen $i$ och $j$ vara förbundna med en kant om
  $i - j "eller" j - i$ är ett udda tal, för alla $i, j in V$
  sådana att $i != j$.
  Bestäm kromatiska talet för $G$
]

+ #pad(bottom: 1.5em)[
  Är det sant att varje sammanhängande planär graf innhåller en hamiltoncykel?
  Bevis eller motexempel
]

= Po-mängder

+ #pad(bottom: 1.5em)[
  Låt $X={7,8,9, ... ,19}$.
  
  a) Visa att delbarhetsrelationen på $X$
  är en partialordning
  och rita hassediagrammet för po-mängden $(X,|)$.
  
  b) Vilka maximala och minimala element har po-mängden $(X,|)$?
]

+ #pad(bottom: 1.5em)[
  Låt $E = {21, 22, ... , 40}$ och definiera relationen $R$ på $E$ genom att för $x, y in E$ sätta $x R y "om" x - y$ är ett icke-negativt heltal som är delbart med 3.
  Visa att $R$ är en partialordning och rita dess Hassediagram.
]

+ #pad(bottom: 1.5em)[
  Låt $B = {6,7,8,9} times {10,11}$
  och definiera en relation $R$ på mängden $B$
  genom att sätta
  $(x_1, x_2) R (y_1, y_2) "om" x_1+x_2 <= y_1+y_2$.
  
  a) Undersök om relationen $R$ är en partialordning.
  
  b) Om R är en partialordning, bestäm om po-mängden
  $(B,R)$ i så fall har några största och/eller minsta element.
  Om $R$ inte är en partialordning, definiera en relation på $B$ som är en partialordning.
]

+ #pad(bottom: 1.5em)[
  Låt $B={6,7,8,9} times {10,11}$
  och definiera en relation $R$ på mängden $B$
  genom att sätta
  $(x_1,x_2) R (y_1,y_2)$
  om antingen $x_1 > y_1$
  eller $x_1=y_1 "och" x_2 >= y_2$.
  
  a) Visa att $R$ är en partialordning.
  
  b) Rita Hassediagrammet för po-mängden $(B,R)$
  
  c) Bestäm på hur många sätt po-mängden kan sorteras topologiskt. Motivera!
]