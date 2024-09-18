# -*- coding: utf-8 -*-
"""
Created on Sat Jun 27 22:58:14 2020

@author: akshaya.p.kadidal
"""
import math
import numpy as np
from matplotlib import pyplot as plt

def GetPrimeFactors(n): 
    factors = []      
    # Print the number of two's that divide n 
    while n % 2 == 0: 
        n = n / 2
        factors.append(2)
        
    # n must be odd at this point 
    # so a skip of 2 ( i = i + 2) can be used 
    for i in range(3,int(math.sqrt(n))+1,2): 
          
        # while i divides n , print i ad divide n 
        while n % i== 0: 
            factors.append(i)
            n = n / i 
              
    # Condition if n is a prime 
    # number greater than 2 
    if n > 2: 
        factors.append(n)
    
    return(factors)

def MertensFunction(factors):
    if len(factors)!= len(np.unique(factors)):
        mu = 0
    elif len(factors)%2 == 0:
        mu = 1
    else:
        mu =-1  
    return(mu)

def create_Mertens_Series(n):
    mu_s = []
    for i in range(1,n+1):
        factor = GetPrimeFactors(i)
        mu = MertensFunction(factor)
        mu_s.append(mu)
    Mertens_Series = np.column_stack((range(1,len(mu_s)+1),mu_s))
    return (Mertens_Series)


    
        