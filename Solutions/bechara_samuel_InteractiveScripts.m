% bechara_samuel_InteractiveScripts.m

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% for all problems -1 on whole assignment if no or bad commenting
% *** NEW FOR THIS ASSIGNMENT *** The students must use the disp() or
% %fprintf() commands to output text and numbers to the command window. If
% they do not (if they just omit the ;) then they get -3 on the whole
% assignment and please be sure to give them feedback. Note: I use
% fprintf() in all my solutions but allow them to use disp() and span
% multiple lines

%---------------------------------------------------------------------%
clc
clear

%---------------------------------------------------------------------%
%% 
% Problem 1
% 6 Points
% -1 if they typed in the HI forumla wrong
% -1 for every missing input
% -2 if they made a mistake in fprintf() syntax
% test this problem with T=90 and R=90, answer should be 122
T=input('Please enter the temperature in deg F: ');
R=input('Please enter the relative humidity in percent: ');
HI=-42.379+2.04901523*T+10.14333127*R-0.22475541*T*R-6.83783e-3*T^2 ...
- 5.481717e-2*R^2+1.22874e-3*T^2*R + 8.5282e-4*T*R^2-1.99e-6*T^2*R^2; 
fprintf('\nThe Heat Index Temperature is: %.0f\n',HI)

%---------------------------------------------------------------------%
%%
% Problem 2
% 6 Points
% -1 for every formula they typed wrong
% -1 for every input they are missing
% -2 if they made a mistake in fprintf() syntax
% -2 if output is not a paragraph listing all parameters (see assignment
% for more details)
% Test with M=20, b=0.25, t=0.01, and a=0.05
% answer should be 82836.
M=input('\nPlease enter the bending moment in N-m: ');
b=input('Please enter the beam width in m: ');
t=input('Please enter the beam thickness in m: ');
a=input('Please enter the crack length in deg m: ');
alpha=a/b;
beta=pi*alpha/2;
C=sqrt(tan(beta)/beta)*((0.923+0.199*(1-sin(beta))^2)/cos(beta));
sigma=6*M/(t*b^2);
K=C*sigma*sqrt(pi*a);
fprintf('\nThe stress intensity factor for a beam that is %.2f m wide',b) 
fprintf(' and %.2f m thick\nwith an edge crack of %.2f m and an',t,a) 
fprintf(' applied moment of %.0f N-m is %.0f pa-sqrt(m).\n',M,K)
