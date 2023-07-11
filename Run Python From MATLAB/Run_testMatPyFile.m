% Step - 04: MATLAB code that calls Python code
% define MATLAB matrices
A1=[1 2;
    3 4];
A2=[2 3;
    1 0];
 
% check the conversion types
% https://www.mathworks.com/help/matlab/matlab_external/passing-data-to-python.html
% convert matrices to Python objects
A1converted = py.numpy.array(A1);
A2converted = py.numpy.array(A2);
% parameter to be sent
parameter=py.int(2);


% sent the variables, call the python code in "testMat.py" and obtain the
% return list "result"
[result] = pyrunfile("testMat.py","RetList",A=A1converted,B=A2converted,param1=parameter);
% link explaining pyrunfile() function:
% https://www.mathworks.com/help/matlab/ref/pyrunfile.html#mw_03ecec06-0677-4345-9112-ea93ac49881e

% Display results:
% check the data type of returned variables
class(result)
class(result{1})


% convert the Python arrays to MATLAB matrices
C1=double(result{1});
C2=double(result{2});
C3=double(result{3});
C4=double(result{4});

% MORE Details in the Following Blog:
% https://aleksandarhaber.com/tutorial-on-how-to-execute-python-code-directly-matlab/

