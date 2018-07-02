% bechara_samuel_MathProblems.m
% Math problems homework assignment solution

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% These are the answers I got when I attempted the problems. Look it
% over before class starts so you can help the students during class.
% for all problems -1 on whole assignment if no or bad commenting
% be sure to give feedback if this is the case
%---------------------------------------------------------------------%
clc
clear
%---------------------------------------------------------------------%
% Problem 1
% 2 points if correct
% 1 point if tried something
t=3.2;
x=3.2;
56*t-9.81*t^2/2
14*exp(-0.1*x)*sin(2*pi*x)
%---------------------------------------------------------------------%
% Problem 2
% 4 points if correct
% -1 for each incorrect answer
r=24;
%need to solve (a)(a/2)(a/4)=4/3 pi r^3
%could also use ^(1/3)
a=nthroot(8*4/3*pi*r^3,3)
%need to solve 2(a^2/2+a^2/4+a^2/8)=4 pi r^2
a=sqrt(4/7*4*pi*r^2)
% some students may have done it symbollically, that is ok too
% the code should look something like this
syms a
equation = (a^3/8)==(4/3)*pi*r^3;
answer = solve(equation,a);
%---------------------------------------------------------------------%
% Problem 3
% 2 points if correct
empty=37*ceil(315/37)-315
%---------------------------------------------------------------------%
% Problem 4
% 4 points if correct
% -1 if incorrect but tried something
%answer could be just decimal hours before 9:18 PM
% constants
T0=98.6; 
Ts=69; 
T1=79.5; 
T2=78; 
hr=9; 
min=18;
% first calculate k, let t=1 since T2 measured 1hr later
k=-log((T2-Ts)/(T1-Ts));
% now use k, and calculate deltaT (deltaT will be in hours)
deltaT=log((T1-Ts)/(T0-Ts))/-k;
t1=9+(18/60); % convert 9:18 into hours

% TA's please allow either this output
t_death=t1-deltaT

% or both of these together as the correct answer
hour_of_death=floor(t_death)
minute_of_death=round(60*(t_death-hour_of_death))
