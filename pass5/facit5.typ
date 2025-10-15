#import "@preview/diagraph:0.3.5"

= Pass 5

  == Diofantiska ekvationer

+ #pad(bottom: 1.5em)[
  Lösning: Euklides algoritm ger att $"sgd"(87,105) = 3$, så ekvationen kan skrivas $29x + 35y = 2000$ och Euklides algoritm "baklänges" ger $5 dot 35 - 6 dot 29 = 1$.
  En lösning är således $x = - 12000 "och" y = 10000$, och alla lösningar ges av $x = -12000 + 35n "och" y = 10000 - 29n$, där $n$ är ett heltal.
]

+ #pad(bottom: 1.5em)[
  Lösning: Vi söker positiva heltalslösningar till ekvationen $50x + 65y = 13000$.
  Euklides algoritm ger att sgd$(50,65) = 5$ och alltså kan ekvationen skrivas $10x + 13y = 2600$.
  Euklides algoritm ger nu att $1 = 4 dot 10 - 3 dot 13$ och en lösning är således $x = 10400, y = -7800$.
  Den allmänna lösningen är $x = 10400 + 13n "och" y = -7800 - 10n$, där $n$ är ett heltal.
  Kravet att lösningarna skall vara icke-negativa ger nu att $-800 <= n <= -780$
]

  == Diofantiska ekvationer (öva mer)

+ #pad(bottom: 1.5em)[
  Lösning: Euklides algoritm ger $1 = 27 dot 18 - 5 dot 97$ och en lösning är således $x = -85, y = 306$.
  Alla lösningar är $x = -85 + 27n, y = 306 - 97n$, där $n$ är ett godtyckligt heltal.
]

+ #pad(bottom: 1.5em)[
  Lösning: Euklides algoritm ger att sgd$(60,92) = 4$, så ekvationen kan skrivas $15x + 23y = 1000$ och Euklides algoritm "baklänges" ger $2 dot 23 - 3 dot 15 = 1$.
  En lösning är således $x = -3000 "och" y = 2000$, och alla lösningar ges av $x = -3000 + 23n "och" y = 2000 - 15n$, där $n$ är ett heltal. De positiva lösningarna är: $x = 13, y = 35. space x = 36, y = 20. space x = 59, y = 5$
]

  == Relationer

+ #pad(bottom: 1.5em)[
  a) Lösning: $(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)$ så 5

  b) Lösning: $(2, 1), (4, 3), (3, 2)$ så 3

  c) Lösning: 0 ty den är antisymmetrisk

  d) Lösning: Vi måste lägga till $(1,3),(2,4),(1,4)$, så det minsta antalet är $3$.

  e) Lösning: 14 (rita ett diagram)

  f) Lösning: ${1, 2, 3, 4, 5} = [1] union [5] = {1, 2, 3, 4} union {5}$
]

+ #pad(bottom: 1.5em)[
  Svar: $R$ är transitiv
]

+ #pad(bottom: 1.5em)[
  Relationen är reflexiv, symmetrisk och transitiv och alltså en ekvivalensrelation.
  Partitionen som $R$ ger upphov till är $ZZ = {2k:k in ZZ} union {2k + 1 : k in ZZ}$.
]

+ #pad(bottom: 1.5em)[
  Relationen är reflexiv, symmetrisk och transitiv och alltså en ekvivalensrelation.
  Antalet ekvivalensklasser är 12,
  och $display(abs(\["BRÖD"\])=binom(8, 4)4! + binom(7, 2) binom(3, 1) 4!/2! + binom(3, 2) 4!/(2!2!) + binom(7, 1)4!/3!)$,
  ty ett ord med 4 bokstäver kan bestå av 4 olika bokstäver,
  precis en dublett,
  exakt två dubletter,
  eller 3st R och en ytterligare bokstav.
]

+ #pad(bottom: 1.5em)[
  Relationen är uppenbar treflexiv, symmetrisk och transitiv
  och alltså en ekvivalensrelation.
  Primtalsfaktoriseringen av $4500 "är" 4500 = 2^2 dot 3^2 dot 5^3$.
  Ekvivalensklasserna är alltså $\[1\],\[2\],\[4\],\[12\],\[36\],\[180\],\[900\],\[4500\]$,
  och $abs(\[1\]) = 1, abs(\[2\])= 3,abs(\[4\])= 6,abs(\[12\])= 8,abs(\[36\])= 8,abs(\[180\])= 6,abs(\[900\])= 3,abs(\[4500\])= 1$.
]

  == Överkurs:

+ #pad(bottom: 1.5em)[
  Lösning?: den enda relationen jag kan komma på som uppfyller kraven är $f(x) = x "altså" x R y "om" x = y$. 
]

+ #pad(bottom: 1.5em)[
  Dictionary och funktion kan beskrivas som relationer.

  Vi kan likna python-koden 
  
  my_dict = {};

  my_dict[x] = y
  
  med $x R y$, altså att alla keys i dictionaryn står i relation till deras value.
  
  En funktion kan beskrivas på liknande sätt fast något mer abstrakt. Om vi tar följande exempel:

  def foo(a): return a + 1

  Så kan det liknas vid relationen $a R (a + 1)$, altså står alla möjliga input-värden till funktionen i relation till respektive output-värde.
]