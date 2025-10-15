#import "@preview/diagraph:0.3.5"

+ #pad(bottom: 1.5em)[
  Låt $E = {21, 22, ... , 40}$ och definiera relationen $R$ på $E$ genom att för $x, y in E$ sätta $x R y "om" x - y$ är ett icke-negativt heltal som är delbart med 3.
  Visa att $R$ är en partialordning och rita dess Hassediagram.

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
  Låt $B = {6,7,8,9} times {10,11}$
  och definiera en relation $R$ på mängden $B$
  genom att sätta
  $(x_1, x_2) R (y_1, y_2) "om" x_1+x_2 <= y_1+y_2$.
  
  a) Undersök om relationen $R$ är en partialordning.
  
  b) Om R är en partialordning, bestäm om po-mängden
  $(B,R)$ i så fall har några största och/eller minsta element.
  Om $R$ inte är en partialordning, definiera en relation på $B$ som är en partialordning.

  a) Lösning: Relationen är inte antisymmetrisk, och alltså inte en partialordning.
  
  b) Lösning: En partialordning $prec.curly$
  på $R$ ges av ordna elementen enligt följande:
  $(6,10) prec.curly (6,11) prec.curly (7,10) prec.curly (7,11) prec.curly (8,10) prec.curly (8,11) prec.curly (9,10) prec.curly (9,11)$.
  (Det finns många olika lösningar.)
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

  a) Lösning: Relationen är reflexiv, antisymmetrisk och transitiv
  och alltså en partialordning.
  
  b) Lösning: Hassediagrammet ser ut som följer:
  #diagraph.render("graph {
    \"(9,11)\" -- \"(9,10)\" -- \"(8,11)\" -- \"(8,10)\" -- \"(7,11)\" -- \"(7,10)\" -- \"(6,11)\" -- \"(6,10)\"
  }")

  c) Lösning: Po-mängden kan bara sorteras topologiskt på ett sätt,
  eftersom det är en totalordning.
]

+ #pad(bottom: 1.5em)[
  Låt $X={7,8,9, ... ,19}$.
  
  a) Visa att delbarhetsrelationen på $X$
  är en partialordning
  och rita hassediagrammet för po-mängden $(X,|)$.
  
  b) Vilka maximala och minimala element har po-mängden $(X,|)$?

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
  Låt B vara mängden av alla olika följder av längd högst 8 som består av fyror och nior,
  och där alla fyror kommer före alla nior.
  (Till exempel gäller att $44999 in B, 44 in B "och" 9999 in B, "medan" 44994 in.not B$.)
  En relation $R$ på $B$ definieras genom att sätta
  $x R y$ om antingen
  - följden $y$ innehåller fler fyror än $x$, eller
  - $x$ och $y$ innehåller lika många fyror och $y$ innehåller minst lika många element som $x$.
  Avgör om $R$ är en partialordning. Är $R$ en totalordning?

  Relationen är reflexiv, antisymmetrisk och transitiv och alltså en partialordning.
  Eftersom det för varje par av element gäller att de står i relation till varandra,
  så är relationen även en totalordning.
]

/*
LåtA={x∈N:x= 10k,k∈N}o chB={x∈N: 0≤x≤9}.BetraktamängdenA×B,o chdenieraenrelationR3påA×Bgenomattsätta(a,b)R3(c,d)oma+b≤c+d.VisaattR3ärenpartialordningo chavgöromp o-mängden(A×B,R3)harnågot/någrastörstaellerminstaelement

Relationenärreexiv,antisymmetrisko chtransitivo challtsåenpartialordning.(Detärävenentotalordning,eftersomdeordnadeparenkanidentierassomicke-negativaheltalsomordnasenligtrelationen≤.)Största(o chmaximala)elementsaknas.Minstaelementär(0,0)
*/

/*
LåtXvara mängden av alla positiva delare till talet70. En partialordning⪯påXges av attdefinierax⪯yomx|y.(a) Rita hassediagrammet för po-mängden(X,⪯).(1p)(b) Sortera po-mängden(X,⪯)topologiskt.(1p)(c) Är(X,⪯)ett lattice?

(a)125710143570(b) Ett sätt att topologiskt sortera elementen är1,2,5,7,10,14,35,70och definiera totalord-ningenRgenom att sättaxRyomxkommer föreyi denna lista.(c) Ja!
*/

/*
LåtA={4,5,6} × {7,8,9}och definiera en partialordningR2påAgenom att sätta(x1, x2)R2(y1, y2)omx1≤y1ochx2≤y2. Rita hassediagrammet för po-mängden(A,R2).(2p)(b) Ge ett exempel på en partialordning⪯på en oändlig mängd som inte är en totalordning.(1p

elationen är reflexiv, antisymmetrisk och transitiv, och alltså en partialordning.Hassediagrammet ser ut på följande sätt:
(4.7)(4.8)(5.7)(6.7)(4.9)(5.8)(5.9)(6.8)(6.9)(b) Till exempel(Z+,|).
*/

/*
LåtE={1,2, . . . ,20}och definiera relationenR2påEgenom att förx, y∈EsättaxR2yomx−yär ett icke-negativt heltal som är delbart med3. Visa attR2är en partialordningoch rita dess Hassediagram

RelationenR2är reflexiv, antisymmetrisk och transitiv, och därmed en partialordning.R2är reflexiv eftersomx−x= 0för allax∈E.R2är antisymmetrisk, ty omxR2yochyR2xså gäller attx−y= 3k1ochy−x= 3k2därk1, k2∈N. Alltså gäller attk1=k2= 0ochx=y. Vi visar nu attR2är transitiv. Antag attxR2yochyR2z. Då gäller attx−y= 3k1ochy−z= 3k2, därk1, k2∈N. Genom att addera dessa ekvationer fås attx−z= 3(k1+k2),och såledesxR2z.Hassedigrammet ser ut som följer:2017141185219161310741181512963
*/