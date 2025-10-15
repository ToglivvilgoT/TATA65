= Facit till pass 2

== Mängdlära

#pad(bottom: 1.5em)[
  1. Nej, kan visas med exempelvis venndiagram.
]

#pad(bottom: 1.5em)[
  2. c) stämmer ej, resten stämmer
]

#pad(bottom: 1.5em)[
  3.
  a) stämmer, kan visa algebraiskt genom att visa att $x in accent(A, -) => x in.not A => x in.not B => x in accent(B, -)$

  b)stämmer ej, t.ex. $A = {1}, B = {1, 2} "ger" A \\ B = emptyset "men" A eq.not B$

  c) stämmer ej, kan visas med medlemsskaps-tabell

  d) stämmer, kan visas med förenkling av vänster led.
]

#pad(bottom: 1.5em)[
  4.
  a) ${(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)}$

  b) 6 

  c) 6 (notera att b) och c) ger samma svar)

  d) 0, efter som att $A inter B = emptyset$
]

#pad(bottom: 1.5em)[
  5. nej, ex. $A = {1}, B = {2}, C = {3} "då är" A times B = {(1, 2)} "och" (A times B) times C = {((1, 2), 3)} "men" A times (B times C) = {(1, (2, 3))}$ vilka inte är lika.
]

#pad(bottom: 1.5em)[
  6. $A = {-1, 13, 35}$ notera också att $A inter B = emptyset$ altså $A "och" B$ är _disjunkta_.

  a) 3 + 4 = 7 (obs! B har $pi$ 2 ggr men duplicerade element räknas bara en gång)

  b) 3 + 4 - 0 = 7 ($abs(A union B) = abs(A) + abs(B) - abs(A inter B)$)

  c) $2^4 - 2^3 = 16 - 8 = 8$

  d) 15. Går att brute forcea genom att beräkna samtliga element i $P(B) "och" P(A)$. Dock kan man resonera fram att $A inter B = emptyset => P(A) inter P(B) = {emptyset} "och" abs(P(B) \\ P(A)) = abs(P(B)) - abs(P(B) inter P(A)) = 16 - 1 = 15$

  e) $display(abs(P(P(A) union P(B))) = 2^(abs(P(A) union P(B))) = 2^(abs(P(A)) + abs(P(B)) - abs(P(A) inter P(B))) = 2^(8 + 16 - 1) = 2^23)$

  f) $abs(P(P(P(A) inter P(B)))) = abs(P(P({emptyset}))) = 2^(2^abs({emptyset})) = 4$
]

#pad(bottom: 1.5em)[
  7. använd induktion över n
]

#pad(bottom: 1.5em)[
  8. $a_n = 2^(n + 1) - 1$
]

#pad(bottom: 1.5em)[
  9. $a = 2$
]

#pad(bottom: 1.5em)[
  10. induktion över n
]

#pad(bottom: 1.5em)[
  11. induktion över n
]