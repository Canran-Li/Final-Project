import matplotlib.pyplot as plt
import numpy as np
from netCDF4 import Dataset
import os
filePath = ''#The path should be where you keep the GetData directory
name = os.listdir(filePath)

filename = 'Mass0.0001_0.nc'
f = Dataset(filename,'r')
data = f['pracw_50um'][:]
for i in range(3,26):
    filename = name[i]
    f = Dataset(filename,'r')
    a = f['pracw_50um'][:]
    data = np.hstack((data,a))
np.savetxt('Data//pracw_50um.txt',data.T)
