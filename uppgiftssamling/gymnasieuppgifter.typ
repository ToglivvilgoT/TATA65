= Uppgifter

#line(length: 100%)



== Talmängder
1. $NN subset ZZ subset QQ subset RR subset CC$

#line(length: 100%)



== Bråkräkning
1) Beräkna följande:

#pad(left: 16pt)[
a) $3/5+5/8$

Lösning $3/5 + 5/8 = (3*8)/(5*8) + (5*5)/(8*5)
= 24/40 + 25/40 = 49/40$

b) $4/7 * 9/11$

Lösning $4/7 * 9/11 = (4*9)/(7*11) = 36/77$

c) $2/5 \/ 7/9$

Lösning $2/5 \/ 7/9 = 2/5 * 9/7 = 18/35$
]

2) Förenkla så långt som möjligt

#pad(left: 16pt)[
  a) $84/126$

  Lösning: $84/126 = 42/63 = 14/21 = 2/3$

  b) $1/2 * 3/5 + 7/3 \/ 5/6$

  Lösning $1/2 * 3/5 + 7/3 \/ 5/6 = 3/10 + (7*6)/(3*5) =$

  $ = 3/10 + 42/15 = 9/30 + 84/30 = 93/30 = 31/10$
]

3) Förenkla så långt som möjligt

#pad(left: 16pt)[
  a) $(x^3 y^2)/(y^2 x z)$

  Svar: $x^2/z$

  b) $(x^4 y^(-2) z^3) / (x^(-1) y^3 z^5)$

  Svar: $x^5 y^(-5) z^(-2) = x^5/(y^5 z^2)$
]

#line(length: 100%)



== Polynommulitplikation

1) Beräkna:

#pad(left: 16pt)[
a) $(a+b)^2$

Lösning: $(a+b)^2 = a^2 + 2a\b + b^2$ 

b) $(a+b) * (a - b)$

Lösning: $(a+b) * (a - b) = a^2 - b^2$

c) $(5x + 2) * (3x + 2)$

Lösning $(5x + 2) * (3x + 2) = 15x^2 + 16x + 4$

d) $(x - 7) * (x + 7) - (3x + 2)^2$

Lösning: $(x - 7) * (x + 7) - (3x + 2)^2 =$

$x^2 - 49 - (6x^2 + 12x + 4) =$

$x^2 - 49 - 6x^2 - 12x - 4 =$

$-5x^2 - 12x - 53$
]

#line(length: 100%)



== Andragradare

1) Givet $f(x) = x^2 - 2x - 15$:

#pad(left: 16pt)[
a) beräkna $f(3)$

Lösning: $f(3) = 3^2 - 2*3 - 15 = -12$

b) Hitta x där $f(x) = 0$

Lösning: $x^2 - 2x - 15 = 0$

$x = -p/2 plus.minus sqrt((p/2)^2-q)$

$x = 1 plus.minus sqrt(1+15) <=>$

$x = 1 plus.minus 4$

c) Hitta funktionens extrempunkt

Lösning: Nollställena är $x = 1 plus.minus 4 => $

Extrempunkten ligger vid $x = 1$

$f(1) = 1^2 - 2 - 15 = -16$

Svar: Extrempunkten är (1, -16)
]

#line(length: 100%)



== Linjära ekvationer

1) Lös ekvationssystemet:

#pad(left: 16pt)[
$cases(
  "(1) " 1x + 7y = 61,
  "(2) " 2x + 6y = 58
)$

a) med substitutionsmetoden

Lösning: $(1) <=> x = 61 - 7y$

$(2) <=> 2 * (61 - 7y) + 6y = 58 <=>$

$122 - 14y + 6y = 58 <=>$

$14y - 6y = 122 - 58 <=>$

$8y = 64 <=>$

$y = 8$

$x = 61 - 7 * 8 = 5$

b) med additionsmetoden

Lösning: $(1) * 2: space 2x + 14y = 122$

$(1) * 2 - (2): space 8y = 64 <=> y = 8$

$x = 61 - 7 * 8 = 5$
]

#line(length: 100%)



== Talföljder

1) Givet talföljden: $4, 7, 10, 13$

#pad(left: 16pt)[
a) Vilket är nästkommande tal?

Lösning: $Delta = 3 => "nästa" = 13 + 3 = 16$

b) Kan du ge en formel för ett generellt tal i följden?

Lösning: $a_n = 1 + 3n$
]

2) Givet talföljden: $2, 6, 18, 54$

#pad(left: 16pt)[
  a) Vilket är nästkommande tal?

  Lösning: $k = 6 / 2 = 3 => "nästa" = 54 * 3 = 162$

  b) Kan du ge en formel för ett generellt tal i följden?

  Lösning: $a_n = 2/3 * 3^n$
]

3) Givet talföljden $-4, -2, 2, 8, 16$

#pad(left: 16pt)[
a) Vilket är nästkommande tal?

Lösning: $Delta = 2, 4, 6, 8, ... =>$

$"Nästa tal borde vara 10 större" =>$

$"Nästa" = 16 + 10 = 26$

b) Kan du ge en formel för ett generellt tal i följden?

Lösning: $Delta "är linjär" => "misstänker andragradspolynom"$

$a_n = b n^2 + c n + d$

$cases(
  a_1 : space b + c + d = -4,
  a_2 : space 4b + 2c + d = -2,
  a_3 : space 9b + 3c + d = 2,
)$

$(4): space (2) - (1): space 3b + c = 2$

$(5): space (3) - 3 * (4): space d = -4$

$(6): space (2) - 2 * (1): 2b - d = 6 <=> b = 1$

$(1): space 1 + c + -4 = -4 <=> c = -1$

$a_n = x^2 - x - 4$
]

#line(length: 100%)



== Problemlösning

1) En rektangel har omkretsen 30cm och ena sidan  är dubbelt så lång som den andra. Hur stor är arean?

#pad(left: 16pt)[
  Lösning: Rita bild! $6x = 30"cm" <=> x = 5"cm"$

  $"Arean" = 2x * x = 10"cm" * 5"cm" = 50"cm"^2$
]

2) En bår kör 40km medströms på 2 timmar och samma sträcka motströms på 5 timmar. Bestäm båtens fart i stilla vatten och strömmens fart.

#pad(left: 16pt)[
  Lösning: Ekvationssystem

  $cases(
    (1) space (b + s) * 2 = 40,
    (2) space (b - s) * 5 = 40,
  ) <=>$

  $cases(
    (1) space 2b + 2s = 40,
    (2) space 5b - 5s = 40,
  )$

  $(2) + (1) * 2.5: space 10b = 140 <=> b = 14$

  $(1): space 2 * 14 + 2s = 40 <=> 2s = 12 <=> s = 6$
]

3) 3 på varandra följande heltal har summan 177, vilka är talen?

#pad(left: 16pt)[
  Lösning: $(n - 1) + n + (n + 1) = 177 <=>$

  $3n = 177 <=> n = 59$

  Svar: $58, 59, 60$
]
