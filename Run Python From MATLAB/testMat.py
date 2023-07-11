import numpy as np
#import tensorflow as tf
from scipy import linalg
 
C1=A-B
C2=np.matmul(A,B)
C3=np.eye(param1,param1)
C4=linalg.inv(A)
 
# this list is returned to MATLAB and later on unpacked in MATLAB
RetList=[C1,C2,C3,C4]