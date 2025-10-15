# uppg 2.
print("uppg 2:", "(61 * 2^1000 + 2^2000) % 33 =", (61 * 2**1000 + 2**2000) % 33)

# uppg 3.
print("uppg 3:", "5^327 % 17 =", 5**327 % 17)

# uppg 4.
print("uppg 4:", "(3^14 + 4^15) % 10 =", (3**14 + 4**15) % 10)




































# uppg 8.
def get_primes():
    """Generator of all primes."""
    # Note, for this exercise, primes = [2, 3, 5, 7, 11, 13, 17, 19] is good enougth
    # No need for fancy functions
    primes = []
    n = 2
    while (True):
        for p in primes:
            if n % p == 0:
                break
        else:
            primes.append(n)
            yield n
        n += 1

def prime_divide(n: int):
    prime_factors = []
    if n < 0:
        prime_factors.append(-1)
        n *= -1

    primes = get_primes()
    current_prime = next(primes)
    while (n != 1):
        if n % current_prime == 0:
            prime_factors.append(current_prime)
            n //= current_prime
        else:
            current_prime = next(primes)
    return prime_factors

from collections import Counter

def count_divisors(n: int):
    prime_factors = prime_divide(n)
    counter = Counter(prime_factors)
    total = 1
    for exponent in counter.values():
        total *= (exponent + 1)
    return total

def sgd(a: int, b: int):
    if b == 0:
        return a
    a, b = b, a % b
    return sgd(a, b)
    

a = 2**2 * 3**5 * 5**4 * 7**4 * 11**3 * 13**2 * 19**4
b = 3**2 * 5**8 * 7**3 *11**3 * 13**5 * 17 * 19

print( count_divisors(a) + count_divisors(b) - count_divisors(sgd(a, b))
)