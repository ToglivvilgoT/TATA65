#import "@preview/diagraph:0.3.5";

= Booleska uppgifter
+ #pad(bottom: 1.5em)[
  a) Hur många booleska funktioner $f(x, y, z)$
  med 3 variabler uppfyller att $f(0,0,0) = f(1,1,1) =f(0,1,0)$

  b) Hur många booleska funktioner $f(x, y, z, w)$ med 4 variabler uppfyller att $f(0,0,0,1) + f(0,0,1,0) = f(0,0,1,1)$ (boolesk addition)?
]

+ #pad(bottom: 1.5em)[
  Ange värdetabellen för den booleska funktionen $f(x,y,z) = accent(accent(x, -) + y z, -) + accent(y + x accent(z, -), -)$
]

+ #pad(bottom: 1.5em)[
  Skriv den booleska funktionen $f(x,y,z) = f(x,y,z) = accent(x + accent(y z, -), -) + accent(accent(y, -) + x z, -)$
  på fullständig disjunktiv normalform.
]

+ #pad(bottom: 1.5em)[
  Låt $f(x, y, z) = x y + x z + (x + y) accent(x, -) accent(y, -)$ vara en boolesk funktion med tre variabler.
  Skriv funktionen på fullständig konjunktiv normalform
]

+ #pad(bottom: 1.5em)[
  Låt $F_2$ vara mängden av alla booleska funktioner med 2 variabler.
  Definiera en relation $R$ på $F_2$ genom att sätta $f(x, y) R g(x, y) "om" f(x, y) <= g(x, y)$
  gäller för alla olika värden på $x$ och $y$.
  Visa att $R$ är en partialordning och rita Hassediagrammet för
  $(F_2,R)$.
]

  = Fler uppgifter
+ #pad(bottom: 1.5em)[
  Hur många booleska funktioner $f$ med tre variabler 
  uppfyller villkoren att
  $f(0,0,1) = f(1,1,1) = f(1,0,0) = f(1,0,1)$
]

+ #pad(bottom: 1.5em)[
  Låt $f(x, y, z) = x dot y dot z+x dot z+y dot z$ vara en boolesk funktion av tre variabler.
  Skriv $f$ på fullständig konjunktiv normalform
]


+ #pad(bottom: 1.5em)[
  Hur många booleska funktioner $f(x,y,z)$ med 3 variabler $x,y,z$
  finns det som uppfyller villkoret att
  $f(0,0,1) + f(0,0,0) + f(1,1,1) <= f(1,0,1)$?
  (Vi adderar förstås booleskt.)
]


+ #pad(bottom: 1.5em)[
  a) Hur många booleska funktioner
  $f(x, y, z)$ med 3 variabler som uppfyller villkoren
  $f(0,0,0) = f(1,1,1)$ och
  $f(0,0,1) != f(1,0,0)$ finns det?
  
  b) Hur många booleska funktioner
  $f(x, y, z)$ med 3 variabler uppfyller att
  $f(0,0,0) <= f(1,1,1)$ och $f(0,0,1) <= f(1,0,0)$?
]
