// saknar uppgift:
// mutiplikationsprincipen
// Lådprincipen

#pad(bottom: 1.5em)[
  = Facit pass 3, kombinatorik
]

// Permutation med upprepning (n^k)
1. #pad(bottom: 1.5em)[
  a) Lösning: Antalet sätt är $binom(22, 3)+binom(22, 5)+binom(22, 7)+binom(22, 11)+binom(22, 13)+binom(22, 17)+binom(22, 19)$.
  
  b) Lösning: Noel har $5^12$ möjligheter.
  
  c) Lösning:  Eftersom två glasspinnar inte får placeras bredvid varandra måste de fem skålarna finnas i mellanrummen mellan alla sex glassar. Således finns 6! möjligheter.
]


// Additionsprincipen
// falluppdelning
// Permutationer (fakultet)
// Kombinationer binom(n, k)
2. #pad(bottom: 1.5em)[
  Lösning: Ordet BARRSKOGSBÄR innehåller totalt $8$ olika bokstäver, 3st R, 2st B och 2st S. Antalet olika “ord” med 5st bokstäver är alltså $binom(8, 5)5! + binom(3, 1) binom(7, 3) 5!/2! + binom(3, 2) binom(6, 1) 5!/(2! 2!) + binom(7, 2) 5!/3! + binom(2, 1)5!/(3! 2!)$, där första termen räknar antalet ord med 5 olika bokstäver, andra termen räknar antalet ord där precis en bokstav förekommer 2 gånger, tredje termen räknar antalet ord där två bokstäver förekommer två gånger, fjärde termen räknar antalet ord med 3st R och 2 andra olika bokstäver, och sista termen räknar antalet ord med 3st R och en bokstav som förekommer två gånger.
]

// Principen om Inklusion och Exklusion
3. #pad(bottom: 1.5em)[
  Lösning: Antalet delmängder som innehåller ${1,2}$ men inte ${1,10}$ är $27$, antalet som innehåller ${3,4}$ men inte ${1,10}$ är $3 dot 26$, och antalet som innehåller både ${1,2}, {3,4}$, men inte ${1,10}$ är $25$. Sökt antal är alltså $5 dot 26 - 25 = 288$
]

4. #pad(bottom: 1.5em)[
  Lösning: Om alla deckare ska stå bredvid varandra så finns det totalt $12! dot 12$ möjligheter, efter som alla diktsamlingar är identiska medan deckarna kan permuteras på 12! sätt.
  Om inte någon diktsamling får stå bredvid en annan diktsamling, så finns det $12! dot binom(13, 11)$, ty det finns $12!$ permutationer av deckarna och sedan $13$ platser att välja på för $11$ diktsamlingar.
]

// Kombinationer med upprepning (staketproblemet (binom(k + n - 1, k)))
5. #pad(bottom: 1.5em)[
  Lösning a): Ekvationen och villkoren $1 <= x_1 <= 10, x_2 >= 21, x_3 >= -12, x_4 >= 0$, är ekvivalent med ekvationen $y_1 + y_2 + y_3 + y_4 = 36, 0 <= y_1 <= 9 "och" y_i >= 0, i = 2,3,4$.
  Antalet lösningar är alltså $binom(39, 36) - binom(29, 26)$.

  Lösning b): Ekvationen kan skrivas $y_1 + y_2 + y_3 + y_4 = 30 "där" 0 <= y_i <= 10$.
  Inklusion-exklusion kombinerat med formeln för antalet lösningar hos staketproblem ger sedan att antalet lösningar är $binom(33, 30) - 4 binom(22, 19) + 6 binom(11, 8)$.
]

// Binomialsatsen
6. #pad(bottom: 1.5em)[
  Lösning: Binomialsatsen ger: $binom(12, 3) dot 2^9 - binom(12, 9) dot 2^9 dot (-3)^3 = binom(12, 3) dot 2^9 dot 28$
]

// Falluppdelning (väldigt mycket pain)
7. #pad(bottom: 1.5em)[
  a) Lösning: Det kan stå $0,1,2,3,4,5,6$ eller $7$ böcker på översta hyllan.
  Låt $b_i$ vara antalet sätt att placera böckerna så att $i$ st står på översta hyllan.
  Då gäller att $i in {0,1,2,3,4,5,6,7}$, men tolkningarna att $i >= 1, i >= 2 "eller" i >= 3$ är också alla acceptabla om de motiveras.
  Vi får att 
  
  $b_0 = 18!$
  
  $b_1 = 18 dot 17!$

  $b_2 = (15 dot 3 dot 2) dot 16!$
  
  $b_3 = (binom(15, 2) dot 3 dot 2! + binom(3, 2) dot 15 dot 2!) dot 15!$
  
  $b_4 = (binom(15, 2) dot binom(3, 2) dot 2^3) dot 14!$
  
  $b_5 = (binom(15, 3) dot binom(3, 2) dot 3! dot 2! + binom(15, 2) dot 3! dot 2!) dot 13!$
  
  $b_6 = (binom(15, 3) dot 3! dot 3! dot 2) dot 12!$
  
  $b_7 = (binom(15, 4) dot 3! dot 4!) dot 11!$

  Totala antalet sätt att placera böckerna är alltså $b_0+b_1+b_2+b_3+b_4+b_5+b_6+b_7$

  b) Lösning: Det finns $binom(5, 2) dot 4 dot binom(9, 5)$ olika sorter.
]