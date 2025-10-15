#import "@preview/diagraph:0.3.5"

= Pass 5

  == Diofantiska ekvationer

+ #pad(bottom: 1.5em)[
  Ange samtliga heltalslösningar till $87x + 105y = 6000$
]

+ #pad(bottom: 1.5em)[
  Hans och Greta plockar lingon och kantareller i skogen för att sälja i sin butik.
  De säljer lingon för 50kr/kg och kantareller för 65kr/kg.
  En dag har de sålt för 13000kr.
  Hur många kg lingon respektive kantareller kan de ha sålt under dagen?
]

  == Diofantiska ekvationer (öva mer)

+ #pad(bottom: 1.5em)[
  Bestäm alla heltalslösningar till ekvationen $97x + 27y = 17$
]

+ #pad(bottom: 1.5em)[
  Ange alla positiva heltal $(x, y)$ sådana att $60x + 92y = 4000$
]

  == Relationer

+ #pad(bottom: 1.5em)[
  Låt $R$ vara en relation på ${1,2,3,4,5}$ som ges av $R={(1,2),(3,4),(2,3)}$.
  Vad är det minsta antalet ordnade par som måste läggas till $R$ för att få en
  
  a) reflexiv relation?

  b) symmetrisk relation?
  
  c) antisymmetrisk relation?

  d) transitiv relation?

  e) ekvivalensrelation?

  f) Vilken partion skapas av relation i uppgift e)?
]

+ #pad(bottom: 1.5em)[
  Låt $R={(1,1),(1,2),(1,3),(2,3),(3,3)}$ vara en relation på ${1,2,3}$.
  #diagraph.render("digraph {{rank = same; 2; 3;} 1 -> 1 1 -> 2 1 -> 3 2 -> 3 3 -> 3}")
  Bilden åvan illustrerar relationen. Varje pil i bilden, t.ex. 1 -> 2, betyder att 1 står i relation till 2, altså att $(1, 2) in R$.
  Kan du utifrån bilden avgöra om $R$ är transitiv?
]

+ #pad(bottom: 1.5em)[
  Låt $R$ vara en relation på $ZZ$ som definieras genom att sätta $u R x$ om $u + x$ är ett jämnt heltal.
  Visa att $R$ är en ekvivalensrelation samt bestäm alla skilda ekvivalensklasser.
]

+ #pad(bottom: 1.5em)[
  Från bokstäverna i ordet KÖRSBÄRSTRÄD kan olika ”ord” (d.v.s. följder av bokstäver) bildas genom att välja ut ett godtyckligt antal av dessa bokstäver och sätta samman dem till en följd.
  Låt $A$ vara mängden av alla ord som kan bildas på detta sätt.
  Definiera en relation $R$ på $A$ genom att låta $x R y "om" x "och" y$ innehåller lika många bokstäver.
  (Således gäller t.ex. att RÖD och BÄR står i relation till varandra under $R$, medan RÖD och RÖ inte gör det.)
  Visa att $R$ är en ekvivalensrelation, bestäm antalet ekvivalensklasser samt antalet element i ekvivalensklassen \[BRÖD\].
]

+ #pad(bottom: 1.5em)[
  Låt $X$ vara mängden av alla positiva delare till $4500$.
  Definiera en relation $R$ på $X$ genom att sätta $x R y$ om $x$ och $y$ har lika många primtalsfaktorer.
  (T.ex. gäller att $4 R 6$ och $2 R 3$, men $2 accent(R, slash) 4$.)
  Visa att $R$ är en ekvivalensrelation
  och ange alla skilda ekvivalensklasser
  och antalet element i varje sådan klass.
]

  == Överkurs:

+ #pad(bottom: 1.5em)[
  Finns det relationer på $RR$ som är symetriska och funktioner? Ge ett exempel i så fall. 
  Tips: om en relation $f$ är en funktion så gäller följande:
  - $f(x) = y "och" f(x) = z "betyder att" y = z$, och
  - $"För alla" x in RR "finns det ett" y "sådant att" f(x) = y$
]

+ #pad(bottom: 1.5em)[
  Vilka programmeringskoncept kan beskrivas som en relation? Exempel på koncept:
  - Listor
  - Dictionary
  - Funktion
  - Loop
  - Eget förslag?
]