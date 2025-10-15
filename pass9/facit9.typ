#import "@preview/diagraph:0.3.5";

= Booleska uppgifter
+ #pad(bottom: 1.5em)[
  a) Lösning: Antalet sådana booleska funktioner är $2^6$, ty om vi väljer funktionsvärdet $f(0,0,0)$,
  så har vi fixerat $f(1,1,1)$ och $f(0,1,0)$ också.
  
  b) Lösning: Antalet sådana booleska funktioner är $2^15$, ty om vi väljer funktionsvärdena $f(0,0,0,1)$ och $f(0,0,1,0)$,
  så är även $f(0,0,1,1)$ entydigt bestämt.
]

+ #pad(bottom: 1.5em)[
  Lösning: $accent(accent(x, -) + y z, -) + accent(y + x accent(z, -), -) = accent(y, -)+x accent(z, -)$ ger tabellen
  #table(
    columns: 4,
    table.header()[x][y][z][$f(x, y, z)$],
  [0], [0], [0], [1],
  [0], [0], [1], [1],
  [0], [1], [0], [0],
  [0], [1], [1], [0],
  [1], [0], [0], [1],
  [1], [0], [1], [1],
  [1], [1], [0], [1],
  [1], [1], [1], [0],
  )
]

+ #pad(bottom: 1.5em)[
  Lösning: $f(x,y,z) = accent(x + accent(y z, -), -) + accent(accent(y, -) + x z, -) = accent(x, -) y z + y accent(x z, -)$ ger tabellen
  #table(
    columns: 4,
    table.header("x", "y", "z", "f(x, y, z)"),
    "0", "0", "0", "0",
    "0", "0", "1", "0",
    "0", "1", "0", "1",
    "0", "1", "1", "1",
    "1", "0", "0", "0",
    "1", "0", "1", "0",
    "1", "1", "0", "1",
    "1", "1", "1", "0",
  )
  och
  $f = accent(x, -) y accent(z, -) +
       accent(x, -) y z +
       x y accent(z, -)$
  är disjunktiv normalform
]


+ #pad(bottom: 1.5em)[
  Lösning: skriv först upp tabellen för f.
  #table(
    columns: 4,
    table.header("x", "y", "z", "f(x, y, z)"),
    [0], [0], [0], [0],
    [0], [0], [1], [0],
    [0], [1], [0], [0],
    [0], [1], [1], [0],
    [1], [0], [0], [0],
    [1], [0], [1], [1],
    [1], [1], [0], [1],
    [1], [1], [1], [1],
  )
  $ f = (x+y+z)(x+y+accent(z, -))(x+accent(y, -)+z)(x+accent(y, -)+ accent(z, -))(accent(x, -) + y + z) $
]

+ #pad(bottom: 1.5em)[
  Lösning: Att relationen $R$ är reflexiv och transitiv är uppenbart.
  Antisymmetrin kan motiveras på följande sätt:
  om $f(x,y) <= g(x,y)$ och $g(x,y) <= f(x,y)$
  för alla $x,y in {0,1}$,
  så måste $f(x,y) = g(x,y)$ för alla $x,y in {0,1}$.
  Hassediagrammet:
  #diagraph.render("graph {
    1111 -- {1110, 1101, 1011, 0111}
    1110 -- {1100, 1010, 0110}
    1101 -- {1100, 1001, 0101}
    1011 -- {1010, 1001, 0011}
    0111 -- {0110, 0101, 0011}
    {1100, 1010, 1001} -- 1000
    {1100, 0110, 0101} -- 0100
    {1010, 0110, 0011} -- 0010
    {1001, 0101, 0011} -- 0001
    {1000, 0100, 0010, 0001} -- 0000
  }")
  där t.ex. *1101* är funktionen $f$ där
  $f(0, 0) = bold(1), space f(0, 1) = bold(1), space f(1, 0) = bold(0), space f(1, 1) = bold(1)$ och *0100* är funktionen $g$ där
  $g(0, 0) = bold(0), space g(0, 1) = bold(1), space g(1, 0) = bold(0), space g(1, 1) = bold(0)$. Generellt representerar en nod "abcd" funktionen $h$ där
  $h(0, 0) = a, space h(0, 1) = b, space h(1, 0) = c, space h(1, 1) = d$.
]

  = Fler uppgifter
+ #pad(bottom: 1.5em)[
  Lösning: Antalet sådana funktioner är $2^5$
]

+ #pad(bottom: 1.5em)[
  Svar: $f(x,y,z) =x dot y dot z+x dot z+y dot z$
  ger tabellen
  #table(columns: 4,
  table.header([x], [y], [z], [f(x,y,z)]),
  [0], [0], [0], [0],
  [0], [0], [1], [0],
  [0], [1], [0], [0],
  [0], [1], [1], [1],
  [1], [0], [0], [0],
  [1], [0], [1], [1],
  [1], [1], [0], [0],
  [1], [1], [1], [1],
  )
  Detta ger att $f= (x+y+z)(x+y+accent(z, -))(x+accent(y, -)+z)(accent(x, -)+y+z)(accent(x, -)+accent(y, -)+z)$
]


+ #pad(bottom: 1.5em)[
  Lösning: Vi delar upp i två fall.
  Antag först att $f(1,0,1) = 0$.
  Då är $f(0,0,1) =f(0,0,0) =f(1,1,1) = 0$,
  och det finns $2^4$ sådana funktioner.
  Antag nu att f(1,0,1) = 1.
  Då är kravet i olikheten alltid uppfyllt,
  och det finns $2^7$ sådana funktioner. 
  Totalt finns alltså $2^4+ 2^7$ sådana funktioner
]


+ #pad(bottom: 1.5em)[
  a) Lösning: Det finns 2 sätt att välja funktionsvärdet
  $f(0,0,0)$ (och därmed även $f(1,1,1)$).
  Där efter finns 2 sätt att välja funktionsvärdet
  $f(0,0,1)$ (och därmed även $f(1,0,0)$.
  Övriga funktions-värden kan sedan väljas på $2^4$ sätt.
  Alltså finns $2^6$ booleska funktioner som uppfyller villkoren.

  b) Lösning: Om $f(0,0,0) = f(0,0,1) = 0$,
  så finns $2^6$ sådana funktioner;
  om $f(0,0,0) != f(0,0,1) = 0$,
  så finns $2^5$ sådana funktioner;
  $f(0,0,0) != f(0,0,1) = 1$
  ger också $2^5$ booleska funktioner;
  och $f(0,0,0) = f(0,0,1) = 1$
  ger $2^4$ funktioner.
  Totalt finns alltså 
  $2^6+2^5+2^5+2^4 = 144$ funktioner som uppfyller villkoren
]