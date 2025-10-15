#pad(bottom: 1.5em)[
  Låt $B$ vara mängden som innehåller alla "ord" (d.v.s. följder av bokstäver) som kan bildas med fem av bokstäverna i ordet BARRSKOGSBÄR (så t.ex. ordet KÄRRA tillhör mängden B). Bestäm $abs(B)$.

  Lösning: Ordet BARRSKOGSBÄR innehåller totalt $8$ olika bokstäver, 3st R, 2st B och 2st S. Antalet olika “ord” med 5st bokstäver är alltså $binom(8, 5)5! + binom(3, 1) binom(7, 3) 5!/2! + binom(3, 2) binom(6, 1) 5!/(2! 2!) + binom(7, 2) 5!/3! + binom(2, 1)5!/(3! 2!)$, där första termen räknar antalet ord med 5 olika bokstäver, andra termen räknar antalet ord där precis en bokstav förekommer 2 gånger, tredje termen räknar antalet ord där två bokstäver förekommer två gånger, fjärde termen räknar antalet ord med 3st R och 2 andra olika bokstäver, och sista termen räknar antalet ord med 3st R och en bokstav som förekommer två gånger.
]



#pad(bottom: 1.5em)[
  Hur många delmängder till ${1,2,3,4,5,6,7,8,9,10}$ innehåller minst en av delmängderna ${1,2}$ och ${3,4}$, men inte delmängden ${1,10}$?

  Lösning: Antalet delmängder som innehåller ${1,2}$ men inte ${1,10}$ är $2^7$, antalet som innehåller ${3,4}$ men inte ${1,10}$ är $3 dot 2^6$, och antalet som innehåller både ${1,2}, {3,4}$, men inte ${1,10}$ är $2^5$. Sökt antal är alltså $5 dot 2^6 - 2^5 = 288$
]



#pad(bottom: 1.5em)[
  Rainer sorterar i sin bokhylla bestående av 12 olika deckare och 11 identiska diktsamlingar.
  På hur många sätt kan han placera böckerna i en hylla om alla deckare måste stå i en följd bredvid varandra?
  Om han istället vill att inte någon diktsamling står bredvid en annan diktsamling, hur många möjligheter finns då?

  Lösning: Om alla deckare ska stå bredvid varandra så finns det totalt $12! dot 12$ möjligheter, efter som alla diktsamlingar är identiska medan deckarna kan permuteras på 12! sätt.
  Om inte någon diktsamling får stå bredvid en annan diktsamling, så finns det $12! dot binom(13, 11)$, ty det finns $12!$ permutationer av deckarna och sedan $13$ platser att välja på för $11$ diktsamlingar.
]



#pad(bottom: 1.5em)[
  Från en grupp av 12 flickor och 11 pojkar skall 2 olika lag bildas. Hur många olika möjligheter att bilda de 2 olika lagen finns om varje lag skall bestå av 6 personer, och åtminstone en pojke skall finnas med i varje lag?

  Antalet sätt att bilda två olika lag är $binom(23, 12) binom(12, 6) / 2$ ty vi kan först välja ut 12 personer bland 23 på $binom(23, 12)$ olika sätt, och sedan bilda 2 olika lag på $binom(12, 6) / 2$ olika sätt (eftersom varje laguppdelning svarar mot 2 olika sätt att välja ut 6 olika personer bland 12).
  Antalet sätt att välja 2 lag där minst ett endast innehåller flickor är $binom(12, 6) binom(17, 6) - binom(12, 6) / 2$, ty vi kan först välja ut ett lag som bara innehåller flickor på $binom(12, 6)$ sätt och där efter välja ett lag bland 17 återstående personer på $binom(17, 6)$;
  emellertid har vi då räknat de par av lag som bara består av flickor 2ggr, varför vi drar bort $binom(12, 6)/2$, vilket är antalet par av lag där båda består av flickor.
]



#pad(bottom: 1.5em)[
  Visa att bland 12 heltal finns minst 2 stycken $x, y$ sådana att $x-y$ är en multipel av 11.

  Lådprincipen ger att bland 12 tal finns minst två stycken som har samma rest vid divsion med 11. Alltså finns två tal x och y sådana att $x-y$ är en multipel av 11.
]



#pad(bottom: 1.5em)[
  Bestäm antalet heltalslösningar till ekvationen $x_1 + x_2 + x_3 + x_4 = 46$ om

  a) $1 <= x_1 <= 10, x_2 >= 21, x_3 >= -12, x_4 >= 0$.

  b) $4 <= x_i <= 14, i = 1,2,3,4$

  Lösning a): Ekvationen och villkoren $1 <= x_1 <= 10, x_2 >= 21, x_3 >= -12, x_4 >= 0$, är ekvivalent med ekvationen $y_1 + y_2 + y_3 + y_4 = 36, 0 <= y_1 <= 9 "och" y_i >= 0, i = 2,3,4$.
  Antalet lösningar är alltså $binom(39, 36) - binom(29, 26)$.

  Lösning b): Ekvationen kan skrivas $y_1 + y_2 + y_3 + y_4 = 30 "där" 0 <= y_i <= 10$.
  Inklusion-exklusion kombinerat med formeln för antalet lösningar hos staketproblem ger sedan att antalet lösningar är $binom(33, 30) - 4 binom(22, 19) + 6 binom(11, 8)$.
]



#pad(bottom: 1.5em)[
  Hur många permutationer av bokstäverna i ordet SANNINGSSÄGARE som inte innehåller någon av följderna RENS eller GNAGARE finns det?

  Lösning: Antalet permutationer av ordet SANNINGSSÄGARE är $14!/(3!3!2!2!)$ ty ordet innehåller 3st S, 3st N, 2st A och 2st G. Antalet permutationer som innehåller RENS är $11!/((2!)^4)$, antalet permutationer som innehåller GNAGARE är $8!/(3!2!)$ och antalet som innehåller både GNAGARE och RENS (d.vs. GNAGARENS)är $6!/2!$.
  Sökt antal är alltså $display(14!/(3!3!2!2!) - 11!/((2!)^4) - 8!/(3!2!) + 6!/2!)$.
]



#pad(bottom: 1.5em)[
  Vi bildar följder med bokstäverna A, B och K.
  Låt $A$ vara mängden av alla sådana följder med 8 bokstäver som innehåller följden BAKA.
  Låt $R$ vara en relation på $A$ som definieras av att $x R y "om" x "och" y "innehåller lika många" A$.
  (Så till exempel gäller att BAKAKAKA $R$ ABBABAKA medan BAKAKAKA $accent(R, "/")$ BAKAKAAA).
  Visa att $R$ är en ekvivalensrelation, samt bestäm antalet ekvivalensklasser och även antalet element i ekvivalensklassen [BAKAKAKA].

  Relationen är reflexiv, symmetrisk och transitiv och alltså en ekvivalensrelation.
  Antalet ekvivalensklasser är 5 och $abs(["BAKAKAKA"]) = 5 binom(4, 2) 2^2 - 1$ efter som det finns 5 platser för ordet BAKA, två st A kan placeras på 2 av 4 platser, de två övriga bokstäverna kan väljas på 2 sätt.
  Vi subtraherar också 1 eftersom vi annars skulle räkna följden BAKABAKA två gånger
]



#pad(bottom: 1.5em)[
  Bestäm koeficienten framför $x^6$ i utveckling av $(2x^2 - 3/x)^12$

  Lösning: Koefficienten blir $binom(12, 6)2^6 3^6$
]



#pad(bottom: 1.5em)[
  a) Liam skall laga fruktsallad och har köpt 22 olika sorters frukt.
  Hans gäster kräver att antalet frukter som används i salladen skall vara ett primtal $p >= 3$.
  På hur många sätt kan Liam välja ingredienserna till sin fruktsallad?

  b) Liams bror Noel har köpt 12 olika glasspinnar.
  På hur många sätt kan han lägga sina 12 olika glasspinnar i 5 olika lådor?
  
  c) När Noel dukar tar han 5 identiska skålar.
  På hur många olika sätt kan 5 identiska skålar och 6 olika glasspinnar ordnas i en följd om två glasspinnar inte får placeras bredvid varandra.

  a) Lösning: Antalet sätt är $binom(22, 3)+binom(22, 5)+binom(22, 7)+binom(22, 11)+binom(22, 13)+binom(22, 17)+binom(22, 19)$.
  
  b) Lösning: Noel har $5^12$ möjligheter.
  
  c) Lösning:  Eftersom två glasspinnar inte får placeras bredvid varandra måste de fem skålarna finnas i mellanrummen mellan alla sex glassar. Således finns 6! möjligheter.
]



#pad(bottom: 1.5em)[
  Beräkna koefficienten framför $a^9 b^18$ i uttrycket $(a^3 + 2b^2)^12 - (2a - 3b^6)^12$

  Lösning: Binomialsatsen ger: $binom(12, 3) dot 2^9 - binom(12, 9) dot 2^9 dot (-3)^3 = binom(12, 3) dot 2^9 dot 28$
]



#pad(bottom: 1.5em)[
  Hur många heltal mellan 500 och 2000 är delbara med precis ett av talen 2, 3 och 5

  Lösning: Med ett Venndiagram ser vi att vi söker $abs(A union B union C) - abs(A inter B) - abs(A inter C) - abs(B inter C) + 2 abs(A inter B inter C) = abs(A) + abs(B) + abs(C) - 2 abs(A inter B) - 2 abs(A inter C) - 2 abs(B inter C) + 3 abs(A inter B inter C) = 750 + 500 + 300 - 2 dot (250 + 150 + 100) + 3 dot 50 = 700$
]



#pad(bottom: 1.5em)[
  a) Lisa har 18 olika böcker, 3 på spanska och resterande 15 på 15 andra olika språk.
  Hon vill ställa böckerna på två hyllor i sin bokhylla, så att på den översta hyllan är varannan bok på spanska och varannan bok på något annat språk.
  På hur många olika sätt kan hon ordna böckerna i sina två hyllor?
  
  b) Lisa vill efter denna ansträngning äta mellanmål.
  Hjälp henne att bestämma hur många mellanmål hon kan bilda genom att välja ut 2 frukter bland 5 olika, en sorts kaffe bland 4 olika sorter, samt 5 sorters kakor bland 9 olika sorter.

  a) Lösning: Det kan stå $0,1,2,3,4,5,6$ eller $7$ böcker på översta hyllan.
  Låt $b_i$ vara antalet sätt att placera böckerna så att $i$ st står på översta hyllan.
  Då gäller att $i in {0,1,2,3,4,5,6,7}$, men tolkningarna att $i >= 1, i >= 2 "eller" i >= 3$ är också alla acceptabla om de motiveras.
  Vi får att 
  
  $b_0 = 18!$
  
  $b_1 = 18 dot 17!$

  $b_2 = (15 dot 3 dot 2) dot 16!$
  
  $b_3 = (binom(15, 2) dot 3 dot 2! + binom(3, 2) dot 15 dot 2!) dot 15!$
  
  $b_4 = (binom(15, 2) dot binom(3, 2) dot 2^3) dot 14!$
  
  $b_5 = (binom(15, 3) dot binom(3, 2) dot 3! dot 2! + binom(15, 2) dot 3! dot 2!) dot 13!$
  
  $b_6 = (binom(15, 3) dot 3! dot 3! dot 2) dot 12!$
  
  $b_7 = (binom(15, 4) dot 3! dot 4!) dot 11!$

  Totala antalet sätt att placera böckerna är alltså $b_0+b_1+b_2+b_3+b_4+b_5+b_6+b_7$

  b) Lösning: Det finns $binom(5, 2) dot 4 dot binom(9, 5)$ olika sorter.
]



#pad(bottom: 1.5em)[
  Nelly har 3 blåa kulor, 5 gröna kulor, 2 röda kulor och 11 gula kulor i sin kulpåse.
  (Kulor av samma färg betraktas som identiska.)
  Hon drar slumpmässigt 10 kulor från kulpåsen.

  a) På hur många sätt kan hon ordna dessa 10 kulor i en rad från vänster till höger om hon inte drog några gula kulor alls?

  b) Vad blir svaret i a) om hon istället drog 5 gula, 3 blå och 2 gröna, och 2 st gula kulor inte får vara placerade bredvid varandra?
  
  Vad blir svaret i b) om kulorna som ligger längst till vänster och längst till höger måste ha olika färg?

  a) Svar: Hon kan ordna kulorna på $10!/(5!3!2!)$ sätt.
  
  b) Lösning: De fem kulor som inte är gula kan permuteras på $5!/(3!2!)$ sätt och det finns sedan sex platser att placera de 5 gula kulorna på. Totalt får vi $binom(6, 5) 5!/(3!2!)$ möjligheter.
  
  c) Lösning: Vi räknar sätten att ordna kulorna på så att de som ligger längst till vänster och höger har samma färg, för att kunna subtrahera detta antal från svaret i b).
  Kulorna som är placerade längst ut kan inte vara blå eller gröna,ty då skulle vi bryta mot kravet att 2 gula kulor inte får vara placerade bredvid varandra.
  Antalet sätt att ordna kulorna så att två gula kulor är placerade längst ut är $binom(4, 3) 5!/(3!2!)$.
  Alltså blir antalet möjligheter $5!3!$
]



#pad(bottom: 1.5em)[
  Hur många av heltalen från och med 100000 till och med 500000 innehåller inte någon av följderna 123, 456 eller 789?

  Lösning: Låt $U$ vara antalet heltal från och med 100000 till och med 500000. Då är $abs(U) = 400001$.
  Låt $A$ vara antalet heltal i $U$ som innehåller följden 123,$B$ vara antalet heltal i $U$ som innehåller följden 456 och $C$ vara antalet heltal i $U$ som innehåller följden 789. Vi söker $abs(U \\ (A union B union C))$.
  Vi har att $abs(A) = 103 + 3 dot 4 dot 102 - 1$, där första termen räknar antalet tal i $U$ som börjar med 123, andra termen räknar antalet tal där 123 förekommer någon annanstans, och sista termen kompenserar för att vi räknat talet 123123 två gånger. På samma sätt fås att $abs(B) = 103 + 3 dot 4 dot 102 - 1, "och" abs(C) = 3 dot 4 dot 102$.
  Vidare gäller $abs(A inter B) = 2, abs(A inter C) abs(B inter C) = 1 "och" abs(A inter B inter C) = 0$.
  Inklusion-exklusion ger att $abs(A union B union C) = 103 + 3 dot 4 dot 102 - 1 + 103 + 3 dot 4 dot 102 - 1 + 3 dot 4 dot 102 - 4 = 5594$.
  Därmed gäller att $abs(U \\(A union B union C)) = 400001 - 5594 = 394407$.
]



#pad(bottom: 1.5em)[
  Vi permuterar korten med valörerna 2 till och med 10 i en vanlig kortlek (med fyra olika färger spader, ruter, klöver, hjärter)
  
  a) På hur många sätt kan man permutera korten så att de är sorterade i växande storleksordning efter valör (d.v.s. ett kort med högre valör kan inte placeras innan ett med lägre valör)?

  b) På hur många sätt kan korten ordnas så att hjärter 2 och klöver 5 är bredvid varandra i permutationen, och samtidigt gäller samma sak spader 8 och ruter 10?
  
  c) På hur många sätt kan alla korten placeras i 17 olika lådor?

  a) Lösning: Det finns 9 olika valörer, och 4 kort av varje valör, så vi får $(4!)^9$ olika sådana permutationer.
  
  b) Lösning: Vi "slår ihop" hjärter 2 och klöver 5 till ett och samma objekt, och likadant för spader 8 och ruter 10.
  Därmed har vi $36 - 4 + 2 = 34$ olika objekt att permutera.
  Antalet olika sätt att permutera korten blir alltså $34! dot 2^2$, eftersom det finns 2 sätt att ordna objekten i varje ihopslaget par av kort.
  
  c) Svar: Det finns $17^36$ olika sådana permutationer.
]



#pad(bottom: 1.5em)[
  Hur många positiva delare har talet $2^3 dot 3^4 dot 5^7 dot 11^2$

  Svar: antalet delare är $4 dot 5 dot 8 dot 3$.
]



#pad(bottom: 1.5em)[
  Hur många positiva heltalslösningar till ekvationen $3x_1 + 3x_2 + 3x_3 = 27$ uppfyller att $x_1, x_2, x_3 >= 3$

  Lösning: Det finns endast en lösning, nämligen $x_1 = x_2 = x_3 = 3$.
]



#pad(bottom: 1.5em)[
  Ange antalet heltalslösningar till ekvationen $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 = 50$, då
  
  a) $x_i >= 1$, för $i = 1,2,3,4,5,6$.

  b) $x_i >= 0,$ för $i = 1,2,3,4,5$ och $0 <= x_6 < 48$.
  
  c) $x_1 + x_2 + x_3 = 20$, och $x_i >= 0$, för $i= 1,2,3,4,5,6$.

  a) Lösning: Ekvationen kan skrivas $y_1 + y_2 + y_3 + y_4 + y_5 + y_6 = 44, y_i >= 0$, och antalet lösningar blir alltså $binom(49, 44)$.

  b) Lösning: Vi räknar bort delösningar där $x_6 >= 48$, och får $binom(55, 50) - binom(7, 2)$.
  
  c) Lösning: Antalet lösningar till $x_1 + x_2 + x_3 = 20, x_i >= 0 "är" binom(22, 20)$, och antalet lösningar till $x_4 + x_5 + x_6 = 30, x_i >= 0 "är" binom(32, 30
  )$, så totala antalet lösningar är $binom(22, 20) dot binom(32, 30)$
]



#pad(bottom: 1.5em)[
  Betrakta ekvationen $x_1 + x_2 + x_3 + x_4 = 25$.
  
  a) Bestäm antalet heltalslösningar till ekvationen som uppfyller att $0 < x_1 < 11 "och" x_i >= -2 "för" i in {2,3,4}$.
  
  b) Hur många heltalslösningar som uppfyller att $0 < x_i < 8, i = 1,2,3,4$, finns det?

  a) Lösning: Inför variablerna $y_1 = x_1 - 1 "och" y_i = x_i + 2 "för" i in {2,3,4}$, så kan ekvationen skrivas $y_1 + y_2 + y_3 + y_4 = 30,0 <= y_1 <= 9 "och" y_i >= 0 "för" i in {2,3,4}$.
  Om vi bortser från villkoret $y_1 <= 9$, så får vi $binom(33, 30)$ lösningar och antalet lösningar sådana att $x_1 >= 10 "är" binom(23, 20)$.
  Antalet lösningar till ekvationen är således $binom(33, 30) - binom(23, 20)$.
  
  b) Lösning: Inför variablerna $y_i = x_i - 1$ så kan ekvationen skrivas $y_1 + y_2 + y_3 + y_4 = 21, 0 <= y_i <= 6$.
  Låt $A_i = {"Lösningar sådana att" y_i >= 7}, i = 1,2,3,4$. Antalet lösningar är uppenbarligen $binom(24, 21) - |A_1 union A_2 union A_3 union A_4|$ och inklusion-exklusion ger nu att $|A_1 union A_2 union A_3 union A_4| = 4 dot binom(17, 14) - binom(4, 2) dot binom(10, 7) + 4 dot 1 + 0$, ty det finns precis en lösning då tre av variablerna är lika med 7.
  Totala antalet lösningar är således $binom(24, 21) - 4 dot binom(17, 14) + binom(4, 2) dot binom(10, 7) - 4$.
]