# -*- coding: utf-8 -*-
"""
Created on Tue Jun 20 21:49:48 2017

@author: ML
"""

# Generators
import random

def lottery():
    # returns 6 numbers between 1 and 40
    for i in range(6):
        yield random.randint(1, 40)

    # returns a 7th number between 1 and 15
    yield random.randint(1,15)

for random_number in lottery():
       print("And the next number is... %d!" %(random_number))
       
a = 1
b = 2
a, b = b, a
print(a,b)

# fill in this function
def fib():
    number_old=0
    number_new=1
    for i in range(10):
       number_new=number_new+number_old
       number_old=number_new-number_old
       yield print(number_new)
        
for fib_number in fib():
    print(fib_number)
    
def fib():
    a, b = 1, 1
    while 1:
        yield a
        a, b = b, a + b
        
# testing code
import types
if type(fib()) == types.GeneratorType:
    print("Good, The fib function is a generator.")

    counter = 0
    for n in fib():
        print(n)
        counter += 1
        if counter == 10:
            break