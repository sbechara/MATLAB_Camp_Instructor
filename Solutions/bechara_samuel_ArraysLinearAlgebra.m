% bechara_samuel_ArraysLinearAlgebra.m

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% for all problems -1 on whole assignment if no or bad commenting
%---------------------------------------------------------------------%
clc
clear
%---------------------------------------------------------------------%
%%
% Problem 1
% 4 Points
rOA=[2,5,1]; rOB=[1,3,6]; rOC=[-6,8,2];
rAC=rOC-rOA; % -1 if they skipped this step
% note, if order of rOC and rAC reversed will get negative volume
% don't mark off points, just make a note of it in their feedback
Volume=dot(rOB,cross(rOC,rAC)) % if they skipped the step above, but did
                               % this part give them 3 out of 4 points
                               % for the problem
                               
%---------------------------------------------------------------------%
%%
% Problem 2
% 4 points
% -1 if they did not declare B correctly
B=[2.5 -1 3 1.5 -2; 3 4 -2 2.5 -1; -4 3 1 -6 2; 2 3 1 -2.5 4; 1 2 5 -3 4];
% -1 if they did not declare y correctly (note ok if they made it a column
% vector instead of transposing like I did
y=[57.1 27.6 -81.2 -22.2 -12.2]';
result=B\y % give them full credit if they did B/y but make sure to give
           % them feedback on why it is wrong.
%---------------------------------------------------------------------%
%%
% Problem 3
% 4 points
% -1 points if they didn't define the variables or matrices correctly
% good feedback is important here! If their numbers are wrong check to see
% where they made a mistake
V1=20; V2=12; V3=40;
R1=18; R2=10; R3=16; R4=6; R5=15; R6=8; R7=12; R8=14;
A=[-(R1+R2+R3) R2 R3 0
    R2 -(R2+R4+R5+R7) R4 R7
    R3 R4 -(R3+R4+R6) R6
    0 R7 R6 -(R6+R7+R8)];
B=[-V1; 0; V2; -V3]; % -1 point if this is a row vector (if the matrix
                     % above is defined this way)

% This column vector gives the current in each mesh
% - 1 point if they made a mistake here
mesh_i=A\B;

% Now this is the tricky part, if they get the part above, give them full
% credit, BUT that is not actually what I asked for. I asked for the
% current in each resistor. So they needed to do one more step...

% this column vector gives the current in each resistor starting at R1 and
% moving down to R8 respectively
resistor_i=[mesh_i(1);mesh_i(1)-mesh_i(2);mesh_i(1)-mesh_i(3);
    mesh_i(2)-mesh_i(3);mesh_i(2);mesh_i(4)-mesh_i(3);mesh_i(4)-mesh_i(2);
    mesh_i(4)]
%---------------------------------------------------------------------%
% EXTRA CREDIT
% This is all or nothing. They either get the 6 bonus points or nothing at
% all.
V1=40; V2=30; V3=36;
R1=16; R2=20; R3=10; R4=14; R5=8; R6=16; R7=10; R8=15; R9=6; R10=4;
A=[-(R1+R2+R3) R2 R3 0 0; R2 -(R2+R4+R5+R6) R5 R6 R4; ...
R3 R5 -(R3+R5+R7) R7 0; 0 R6 R7 -(R6+R7+R8+R9) R8; ...
0 R4 0 R8 -(R4+R8+R10)];
V=[-V1 0 -V2 V3 V1]';
extra_credit_I=A\V