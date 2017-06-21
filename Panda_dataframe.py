# -*- coding: utf-8 -*-
"""
Created on Tue Jun 20 21:33:41 2017

@author: ML
"""

#Pandas dataframe

dict = {"country": ["Brazil", "Russia", "India", "China", "South Africa"],
       "capital": ["Brasilia", "Moscow", "New Dehli", "Beijing", "Pretoria"],
       "area": [8.516, 17.10, 3.286, 9.597, 1.221],
       "population": [200.4, 143.5, 1252, 1357, 52.98] }

import pandas as pd
brics = pd.DataFrame(dict)
print(brics)

brics.index = ["BR", "RU", "IN", "CH", "SA"]
# Print out brics with new index values
print(brics)

# Import pandas as pd
import pandas as pd

# Import the cars.csv data: cars
cars = pd.read_csv('cars.csv')

# Print out cars
print(cars)

print(brics.iloc[1])
print(brics.loc[["BR","RU"]])