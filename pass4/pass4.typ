//Definition av delbarhet.
//Ex. med delbarhet och induktionsbevis (3|4^n - 1)
//Sats 7.1.8 ( c|a och c|b => c|ax+by ) och begreppet linjärkombination
//Ex. med antalet heltal mellan 1 och 330 som är delbara med 4 eller 6. 
//Def. av primtal, Euklides primtalssats och Aritmetikens fundamentalsats.
//Ex. på att bestämma antalet positiva delare till 2520 mha primtalsfaktorisering.
//Divisionsalgoritmen, med begreppen kvot och rest och ett par små exempel.
//Def. av sgd och begreppet "relativt prima".
//Sats 7.5.3 ( sgd(a,b)=sgd(b,r) om a=kb+r ) 
//Euklides algoritm illustrerad med ett exempel. Samt baklänges för att hitta sgd(a,b)=ax+by.
//Sats 7.5.7 ( finns x och y s.a. sgd(a,b)=ax+by )
//Def. av mgm, ett par små exempel som ledde till
//Sats 7.6.2 ( sgd(a,b)*mgm(a,b)=a*b )
//Sats 7.5.9 ( a|bc och sgd(a,b)=1 => a|c )
//Sats 7.5.10 (a|c och b|c och sgd(a,b)=1 => ab|c ) med kort exempel.


/*
+ #pad(bottom: 1.5em)[
  Avgör om det finns en multiplikativ invers till $14 mod 8$
]



+ #pad(bottom: 1.5em)[
  Vad blir den minsta positiva resten då $61 dot 2^1000 + 2^2000 "delas med" 33$?
]



+ #pad(bottom: 1.5em)[
  Beräkna $5^327 mod 17$
]



+ #pad(bottom: 1.5em)[
  Bestäm samtliga lösningar till $3x equiv 5 mod 9$
]



+ #pad(bottom: 1.5em)[
  Ange entalssiffran i talet $3^14 + 4^15$
]



+ #pad(bottom: 1.5em)[
  Bestäm alla lösningar till ekvationen $3x equiv 8 mod 10$
]



+ #pad(bottom: 1.5em)[
  a) Låt $a, b "och" n$ vara heltal sådana att $n >= 2$.
  Definiera vad det innebär att $a$ är kongruent med $b$ modulo $n$ (d.v.s. att $a eq.triple b mod n$).
  
  b) Låt $a, b, m "och" n$ vara positiva heltal och antag att $n | m$.
  Visa att om $a eq.triple b mod m$, så gäller $a eq.triple b mod n$.
]
*/



+ #pad(bottom: 1.5em)[
  Hur många positiva heltal delar minst ett av talen $a = 2^2 dot 3^5 dot 5^4 dot 7^4 dot 11^3 dot 13^2 dot 19^4 "och" b = 3^2 dot 5^8 dot 7^3 dot 11^3 dot 13^5 dot 17 dot 19$?

]



+ #pad(bottom: 1.5em)[
  a) Beräkna $"sgd"(1092, 975)$

  b) Hitta $x "och" y "om" "sgd"(1092, 975) = 1092x + 975y$
]


/*
+ #pad(bottom: 1.5em)[
  Lös förra uppgiften med ett python-skript.
]
*/



+ #pad(bottom: 1.5em)[
  Hur många heltal mellan 100 och 900 är delbara med 3 eller 5 men inte 10?
]



+ #pad(bottom: 1.5em)[
  Bestäm antalet delare till 1820
]



+ #pad(bottom: 1.5em)[
  beräkna $"mgm"(234, 210)$
]



+ #pad(bottom: 1.5em)[
  Visa att om $16 | n^2 "så" 4 | n$
]



+ #pad(bottom: 1.5em)[
  Visa att $sqrt(5)$ är irrationellt
]



+ #pad(bottom: 1.5em)[
  Visa att om $c|a "och" c|b "så" c|a x+b y$
]