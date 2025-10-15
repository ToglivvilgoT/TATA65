+ #pad(bottom: 1.5em)[
  Avgör om det finns en multiplikativ invers till $14 mod 8$

  Lösning: Testa dig fram

  Svar: Nej
]

+ #pad(bottom: 1.5em)[
  Vad blir den minsta positiva resten då $61 dot 2^1000 + 2^2000 "delas med" 33$?

  Svar: Resten är 29.
]

+ #pad(bottom: 1.5em)[
  Beräkna $5^327 mod 17$

  $5^327 equiv 10 mod 17$
]

+ #pad(bottom: 1.5em)[
  Bestäm samtliga lösningar till $3x equiv 5 mod 9$

  Eftersom $"sgd"(3,9) = 3 "och " 3 "inte delar" 5$, så saknar ekvationen lösningar
]

+ #pad(bottom: 1.5em)[
  Ange entalssiffran i talet $3^14 + 4^15$

  Entalssiffran är 3.
]

+ #pad(bottom: 1.5em)[
  Bestäm alla lösningar till ekvationen $3x equiv 8 mod 10$

  $x equiv 6  mod 10$
]

+ #pad(bottom: 1.5em)[
  a) Låt $a, b "och" n$ vara heltal sådana att $n >= 2$.
  Definiera vad det innebär att $a$ är kongruent med $b$ modulo $n$ (d.v.s. att $a eq.triple b mod n$).
  
  b) Låt $a, b, m "och" n$ vara positiva heltal och antag att $n | m$.
  Visa att om $a eq.triple b mod m$, så gäller $a eq.triple b mod n$.

  a) Lösning: $a eq.triple b mod n "om" n | (a-b), "d.v.s." a - b = k n "för något" k in ZZ$.
  
  b) Lösning: Vi har att $a eq.triple b mod m, "d.v.s." k_1 m = a - b "för något" k_1 in ZZ$.
  Vidare gäller att $n|m, "d.v.s." m = k_2 n, "för något" k_2 in ZZ$.
  Genom att kombinera dessa likheter får vi att $k_1 k_2 n = a - b, "så" a eq.triple b mod n$.
]

+ #pad(bottom: 1.5em)[
  Hur många positiva heltal delar minst ett av talen $a = 2^2 dot 3^5 dot 5^4 dot 7^4 dot 11^3 dot 13^2 dot 19^4 "och" b = 3^2 dot 5^8 dot 7^3 dot 11^3 dot 13^5 dot 17 dot 19$?

  Lösning: Antalet positiva heltal som delar $a$ är $3 dot 6 dot 5 dot 5 dot 4 dot 3 dot 5 = 27000$, och antalet tal som delar $b$ är $3 dot 9 dot 4 dot 4 dot 6 dot 2 dot 2 = 10368$
  Antalet tal som delar både $a$ och $b$ är $3 dot 5 dot 4 dot 4 dot 3 dot 2 = 1440$.
  Sökt antal är alltså $27000 + 10368 - 1440 = 35928$
]