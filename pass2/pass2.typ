= Pass 2, mängder av induktion

== Mängdlära

#pad(bottom: 1.5em)[
  1. Är det sant att $A union (accent(A, -) inter accent(B, -) inter accent(C, -)) = A union B union accent(C, -)$ för alla mängder A, B, C?
]

#pad(bottom: 1.5em)[
  2. Givet $A = {emptyset, {emptyset}}$ stämmer följande påståenden?

  a) $emptyset in A$?

  b) ${emptyset} in A$?

  c) ${{emptyset}} in A$?

  d) $emptyset subset.eq A$?

  e) ${emptyset} subset.eq A$?

  f) ${{emptyset}} subset.eq A$?
]

#pad(bottom: 1.5em)[
  3. Låt $A, B$ vara 2 mängder.
  Vilka av följande påståenden stämmer?
  Om ett påstående stämmer, bevisa det.
  Om ett påstående inte stämmer, ge ett exempel på $A, B$ som motbevisar påståendet.

  a) Om $B subset.eq A$ så måste $accent(A, -) subset.eq accent(B, -)$

  b) Om $A \\ B = emptyset$ så måste $A = B$

  c) $accent(A triangle B, -) = A inter B$

  d) $accent((accent(A, -) \\ B) union accent((A union B), -), -) inter accent(emptyset, -)= A union B$
]

#pad(bottom: 1.5em)[
  4. Låt $A = {1, 2, 3}, B = {a, b}$. Beräkna:

  a) $A times B$

  b) $abs(A times B)$

  c) $abs(A) dot abs(B)$

  d) $abs((A union B) times (A inter B))$
]

#pad(bottom: 1.5em)[
  5. Är $(A times B) times C = A times (B times C) "för alla mängder" A, B, C?$ Om sant, bevisa det och om inte ge exempel på $A, B, C$ där likheten inte stämmer.
]

#pad(bottom: 1.5em)[
  6. Givet $A = {x^2 + 3x - 5 : x " är ett udda positivt heltal och" x <= 6} "och" B = {sqrt(-1), pi, e, sqrt(5), pi}$. Beräkna:

  a) $abs(A) + abs(B)$

  b) $abs(A union B)$

  c) $abs(P(B)) - abs(P(A))$

  d) $abs(P(B) \\ P(A))$

  e) $abs(P(P(A) union P(B)))$

  f) $abs(P(P(P(A) inter P(B))))$
]

== Induktion

#pad(bottom: 1.5em)[
  7. Visa att $4 dot 2 + 7 dot 4 + 10 dot 6 + ... + (3n-2)(2n-2) = 2n^3-2n^2$ för alla heltal $n>=2$
]

#pad(bottom: 1.5em)[
  8. Ge en generell formel för ett tal i följden som ges av: $display(cases(
    a_n = 3a_(n-1) - 2a_(n-2),
    a_0 = 1,
    a_1 = 3,
  ) space n >= 2)$

  Bevisa sedan din formel.
]



#pad(bottom: 1.5em)[
  9. Finns det något tal $a$ så att likheten $display(sum_(j=1)^n 4j^3 = n^4 + a n^3 + n^2)$ gäller för alla heltal $n >= 1$? Bevisa i så fall ditt påstående.
]



#pad(bottom: 1.5em)[
  10. Visa att $display(sum_(k=0)^n 4 * 5^k = 5^(n+1) - 1)$ för alla heltal $n >= 0$
]



#pad(bottom: 1.5em)[
  11. Visa att $7 + 11 + 15 + ... + (4n + 3) = 2n^2 + 5n$, för alla heltal $n >= 1$
]