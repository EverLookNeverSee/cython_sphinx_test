"""
    This file contains two functions which are
    implemented using pure python and cython
    @author: Milad Sadeghi DM - EverLookNeverSee@GitHub
"""


def prime_finder_python(amount):
    """
    Prime numbers finder implemented using pure python
    :param amount: An integer
    :return: List of primes
    """
    found = 0
    number = 2
    primes = list()
    while found < amount:
        for x in primes:
            if number % x == 0:
                break
            else:
                primes.append(number)
                found += 1
    return primes
