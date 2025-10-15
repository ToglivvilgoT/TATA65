// saknar uppgift:
// mutiplikationsprincipen
// Lådprincipen

#pad(bottom: 1.5em)[
  = Pass 3, kombinatorik
]

// Permutation med upprepning (n^k)
1. #pad(bottom: 1.5em)[
  a) Liam skall laga fruktsallad och har köpt 22 olika sorters frukt.
  Hans gäster kräver att antalet frukter som används i salladen skall vara ett primtal $p >= 3$.
  På hur många sätt kan Liam välja ingredienserna till sin fruktsallad?

  b) Liams bror Noel har köpt 12 olika glasspinnar.
  På hur många sätt kan han lägga sina 12 olika glasspinnar i 5 olika lådor?
  
  c) När Noel dukar tar han 5 identiska skålar.
  På hur många olika sätt kan 5 identiska skålar och 6 olika glasspinnar ordnas i en följd om två glasspinnar inte får placeras bredvid varandra.
]


// Additionsprincipen
// falluppdelning
// Permutationer (fakultet)
// Kombinationer binom(n, k)
2. #pad(bottom: 1.5em)[
  Låt $B$ vara mängden som innehåller alla "ord" (d.v.s. följder av bokstäver) som kan bildas med fem av bokstäverna i ordet BARRSKOGSBÄR (så t.ex. ordet KÄRRA tillhör mängden $B$). Bestäm $abs(B)$.
]

// Principen om Inklusion och Exklusion
3. #pad(bottom: 1.5em)[
  Hur många delmängder till ${1,2,3,4,5,6,7,8,9,10}$ innehåller minst en av delmängderna ${1,2}$ och ${3,4}$, men inte delmängden ${1,10}$?
]

4. #pad(bottom: 1.5em)[
  Rainer sorterar i sin bokhylla bestående av 12 olika deckare och 11 identiska diktsamlingar.
  På hur många sätt kan han placera böckerna i en hylla om alla deckare måste stå i en följd bredvid varandra?
  Om han istället vill att inte någon diktsamling står bredvid en annan diktsamling, hur många möjligheter finns då?
]

// Kombinationer med upprepning (staketproblemet (binom(k + n - 1, k)))
5. #pad(bottom: 1.5em)[
  Bestäm antalet heltalslösningar till ekvationen $x_1 + x_2 + x_3 + x_4 = 46$ om

  a) $1 <= x_1 <= 10, x_2 >= 21, x_3 >= -12, x_4 >= 0$.

  b) $4 <= x_i <= 14, i = 1,2,3,4$
]

// Binomialsatsen
6. #pad(bottom: 1.5em)[
  Beräkna koefficienten framför $a^9 b^18$ i uttrycket $(a^3 + 2b^2)^12 - (2a - 3b^6)^12$
]

// Falluppdelning (väldigt mycket pain)
7. #pad(bottom: 1.5em)[
  a) Lisa har 18 olika böcker, 3 på spanska och resterande 15 på 15 andra olika språk.
  Hon vill ställa böckerna på två hyllor i sin bokhylla, så att på den översta hyllan är varannan bok på spanska och varannan bok på något annat språk.
  På hur många olika sätt kan hon ordna böckerna i sina två hyllor?
  
  b) Lisa vill efter denna ansträngning äta mellanmål.
  Hjälp henne att bestämma hur många mellanmål hon kan bilda genom att välja ut 2 frukter bland 5 olika, en sorts kaffe bland 4 olika sorter, samt 5 sorters kakor bland 9 olika sorter.
]