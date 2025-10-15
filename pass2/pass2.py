import math
from itertools import combinations


def power_set(s):
    return set().union(*(combinations(s, l) for l in range(len(s) + 1)))


A = {x**2 + 3 * x - 5 for x in range(1, 7) if x % 2 == 1}
B = {complex(0, 1), math.pi, math.e, 5 ** 0.5, math.pi}
PA = power_set(A)
PB = power_set(B)

print("a) |A| + |B| =", len(A) + len(B))
print("b) |A U B| =", len(A.union(B)))
print("c) |P(B)| - |P(A)| =", len(PB) - len(PA))
print("d) |P(B) \ P(A)| =", len(PB.difference(PA)))
print("e) |P(P(A) U P(B))| =", len(power_set(PA.union(PB))))
print("f) |P(P(P(A) ∩ P(B)))| =", len(power_set(power_set(PA.intersection(PB)))))