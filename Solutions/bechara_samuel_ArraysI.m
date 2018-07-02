% bechara_samuel_ArraysI.m
% Arrays I homework assignment solution

% TA Instructions ----------------------------------------------------%
% For all problems -1 on whole assignment if no or bad commenting
%   be sure to give feedback if this is the case
% For this assignment take all the points off if they explicitly type
%   in the vectors for the problem
%---------------------------------------------------------------------%
clc
clear
%---------------------------------------------------------------------%
% Problem 1
% 2 points
% -1 if not a column, -1 if wrong
% NOTE on problem 1 and problem 2, they CAN use the trasnpose operator
x=0.85; y=12.5;
col=[y; y^x; log(y/x); x*y; x+y]
%---------------------------------------------------------------------%
% Problem 2
% 2 points
% -1 if not a row, -1 if wrong
a=3.5; b=-6.4;
row=[a a^2 a/b a*b sqrt(a)]
%---------------------------------------------------------------------%
% Problem 3
% 2 points
% -1 if not a single command, -1 if wrong
b=[0:2:12 9:-3:0]
%---------------------------------------------------------------------%
% Problem 4
% 2 points
% -1 if wrong but attempted something
vctC=5:4:49;
disp('Problem 4 Part (a)') % students don't have to have the disp part
Codd=vctC(1:2:11)
disp('Problem 4 Part (b)')
Ceven=vctC(2:2:12)
%---------------------------------------------------------------------%
% Problem 5
% 2 points
% -1 if not a single command but they used linspace or something else
A=[130:-20:10; linspace(1,12,7); 12:10:72]
%---------------------------------------------------------------------%
% Problem 6
% 2 points
% -1 if wrong but attempted something
disp('Problem 6 Part (a)') % students don't have to have the disp part
matrixA=[ones(2) zeros(2)]
disp('Problem 6 Part (b)')
matrixB=[eye(2) zeros(2) ones(2)]
disp('Problem 6 Part (c)')
matrixC=[ones(1,4);zeros(2,4)]

