% bechara_samuel_ArraysElementByElement.m
% Math problems homework assignment solution

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% for all problems -1 on whole assignment if no or bad commenting
%---------------------------------------------------------------------%
clc
clear
%---------------------------------------------------------------------%
% Problem 1
% 3 points
% -2 if wrong but attempted something
% but only -1 if wrong but DID use ./ notation
m=[2 4 5 10 20 50];
F=[12.5 23.5 30 61 117 294];
mu=F./(m*9.81)
mu_ave=mean(mu)
%---------------------------------------------------------------------%
% Problem 2
% 2 points
% -1 if wrong but attempted something
x=-3:3;
y=x.^2-exp(0.5*x)+x
%---------------------------------------------------------------------%
% Problem 3
% 4 points total, 2 for part a, 2 for part b
e0=8.85e-12; lambda=1.7e-7; R=6;

disp('Problem 3 Part (a)') % students don't have to have this, for your clarity
z=0:2:10; % please give hint/feedback if they typed explicitly
E=lambda*R*z./(2*e0*(z.^2+R^2).^(3/2)) % -1 if they didn't do element by element

disp('Problem 3 Part (b)')
z=2:.01:6; % please give hint/feedback if they typed explicitly
E=lambda*R*z./(2*e0*(z.^2+R^2).^(3/2)); % -1 if they didn't do element by element
[m indx]=max(E); % -1 if they didn't have MATLAB find the max
maxE=m
at_z=z(indx)
%---------------------------------------------------------------------%
% Problem 4
% 3 points total, 2 for correct answer and 1 for formatting the table
% correctly
V0=24; R=3800; C=4000*10^-6;
T0=R*C;
t=0:2:20; % don't take off points if they defined the array explicitly but let them know they could have done this in feedback
Vc=V0*(1-exp(-t/T0)); % again, don't mark off points but if they used "./" here remind them they don't have to because T0 is a scalar
i=V0/R*exp(-t/T0);
table=[t' Vc' i'] % there are a bunch of different ways to do this, the important thing is that they followed instructions about columns. -1 if not formatted correctly