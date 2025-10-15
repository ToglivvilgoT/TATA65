= Pass 6 - Kongruensräkning

+ #pad(bottom: 1.5em)[
  $5^327 equiv 10 mod 17$
]

+ #pad(bottom: 1.5em)[
  Svar: Resten är 29.
]

+ #pad(bottom: 1.5em)[
  $x equiv 6  mod 10$
]

+ #pad(bottom: 1.5em)[
  Eftersom $"sgd"(3,9) = 3 "och " 3 "inte delar" 5$, så saknar ekvationen lösningar
]

+ #pad(bottom: 1.5em)[
  Entalssiffran är 3.
]

+ #pad(bottom: 1.5em)[
  Lösning: Testa dig fram

  Svar: Nej
]

+ #pad(bottom: 1.5em)[
  a) Lösning: $a equiv b mod n "om" n | (a-b), "d.v.s." a - b = k n "för något" k in ZZ$.
  
  b) Lösning: Vi har att $a equiv b mod m, "d.v.s." k_1 m = a - b "för något" k_1 in ZZ$.
  Vidare gäller att $n|m, "d.v.s." m = k_2 n, "för något" k_2 in ZZ$.
  Genom att kombinera dessa likheter får vi att $k_1 k_2 n = a - b, "så" a equiv b mod n$.
]

+ #pad(bottom: 1.5em)[
  Lösning: Antalet positiva heltal som delar $a$ är $3 dot 6 dot 5 dot 5 dot 4 dot 3 dot 5 = 27000$, och antalet tal som delar $b$ är $3 dot 9 dot 4 dot 4 dot 6 dot 2 dot 2 = 10368$
  Antalet tal som delar både $a$ och $b$ är $3 dot 5 dot 4 dot 4 dot 3 dot 2 = 1440$.
  Sökt antal är alltså $27000 + 10368 - 1440 = 35928$
]