-------------- How to RUN Python Code from MATLAB ------
STEP - 01: Do the Following for Installing Python and Making it compatable for MATLAB Usage:

Check compatibility of Matlab with Python Versions.
https://in.mathworks.com/support/requirements/python-compatibility.html

If the python installed in your system is not compatable then download the appropriate python version for your MATLAB.
https://in.mathworks.com/help/matlab/matlab_external/install-supported-python-implementation.html
Watch the Following Video:
https://in.mathworks.com/videos/troubleshooting-calling-python-in-matlab-1668073385038.html

pyenv("Version",'C:\Users\[*MentionPathName]\AppData\Local\Programs\Python\Python39\python.exe')

pyversion

py.list({'This', 'is', 'a List'})

-----------------------------------------------------------------------------
Step - 02: Make sure that the proper libraries are installed in your Python environment. 
Open Command Prompt: [WindowKey]+R  ----- Run as Administrator

cd C:\Users\[*USER NAME*]\AppData\Local\Programs\Python\Python39

This will lead you to the Python 3.9 installation folder. Then you need to type

python

This will open the Python terminal. Then, install NumPy and SciPy or any other libraries as required. Type the Python environment the following code lines:

import sys
import subprocess
subprocess.check_call([sys.executable, '-m', 'pip', 'install','numpy'])
subprocess.check_call([sys.executable, '-m', 'pip', 'install','scipy'])
----------------------------------------------------------------------------

Step - 03: Write a python code to be run in MATLAB

import numpy as np
import tensorflow as tf
from scipy import linalg
 
C1=A-B
C2=np.matmul(A,B)
C3=np.eye(param1,param1)
C4=linalg.inv(A)
 
# this list is returned to MATLAB and later on unpacked in MATLAB
RetList=[C1,C2,C3,C4]


