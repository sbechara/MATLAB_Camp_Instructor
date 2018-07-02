%% TO TA's
% All problems are worth 6 points.
% You do not need to run their individual .m files. I would run THIS file
% and put thier functions in the same working directory. If everything
% works, they can get full credit. If it doesn't you can look into their
% function and script file.
% See function file for grading those. For the script file, deduct one
% point for all major mistakes.

%% Problem 1
% 6 points total
clear;clc;close all;
w=95; h=1.87;
BSA = BodySurA(w,h);
fprintf('The body surface area of a %.0f kg, %.2f m patient is %.3fm^2\n',w,h,BSA)

%% Problem 2
% 6 points total
T=-37;V=15;
Twc = WindChill(T,V);
fprintf('For conditions of %.0f degF and %.0f mph',T,V)
fprintf(' the wind chill temperature is %.1f degF\n\n',Twc)

%% Problem 3
% 6 points total
R=600;
L=.14e-6;
%can use logspace or explicitly create an appropriate array for w
power=1:.01:6;
w=10.^power;
RV=LRFilt(R,L,w);
semilogx(w,RV)
title('LR Circuit Response')
xlabel('Frequency, rad/s')
ylabel('Throughput')