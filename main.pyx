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


def prime_finder_cython(int amount):
    """
    Prime numbers finder implemented using pure cython
    :param amount:
    :return: List of primes
    """
    cdef int number, x, found
    cdef int primes[100000]

    amount = min(amount, 100000)
    found = 0
    number = 2
    while found < amount:
        for x in primes[:found]:
            if number % x == 0:
                break
            else:
                primes[found] = number
                found += 1
        number += 1
    return_list = [p for p in primes[:found]]
    return return_list
