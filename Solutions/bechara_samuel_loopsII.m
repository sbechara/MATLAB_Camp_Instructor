% %% bechara_samuel_loopsII.m

% Loops II homework assignment solution

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% for all problems -1 on whole assignment if no or bad commenting
% If students do not put code in seperate sections give them -2 on the
% assignment and be sure to explain why (and how to do it) in feedback
%---------------------------------------------------------------------%

% Assignment is worth 12 points
clear; clc; close all;

%% Problem 1

% TO TAs: Note the problem can be solved in SEVERAL different ways. For
% example instead of using while loops the times when the parachute opens
% and when the rocket hits the ground can be calculated FIRST, and then
% for-end loops can be used instead of while loops. If the times are
% determined first, it is possible also to use element-by-element
% calculations instead of loops

% 6 points total
m=0.05;g=9.81; tEngine=0.15; Force=16; vChute=-20; Dt=0.01;
clear t v h
n=1;
t(n)=0; v(n)=0; h(n)=0;
% First part of flight
a1=(Force-m*g)/m;
while t(n) < tEngine & n < 50000
    n=n+1;
    t(n)=t(n-1)+Dt;
    v(n)=a1*t(n);
    h(n)=0.5*a1*t(n)^2;
end
v1=v(n); h1=h(n); t1=t(n);

% second part of flight
while v(n) >= vChute & n < 50000
    n = n+1;
    t(n)=t(n-1)+Dt;
    v(n)=v1-g*(t(n)-t1);
    h(n)=h1+v1*(t(n)-t1)-0.5*g*(t(n)-t1)^2;
end
v2=v(n);h2=h(n);t2=t(n);

%last part of flight
while h(n) > 0 & n < 50000
    n=n+1;
    t(n)=t(n-1)+Dt;
    v(n)=vChute;
    h(n)=h2+vChute*(t(n)-t2);
end
plot(t,h,t2,h2,'o');
title('Height of Rocket During Flight');
legend('Height','Parachute Opens');
figure
plot(t,v,t2,v2,'o');
title('Veolocity of Rocket During Flight');
legend('Velocity','Parachute Opens');
%% Problem 2
% 6 points total

n=input('Enter the number of rows: ');
m=input('Enter the number of columns: ');
A=[];
for k=1:n
    for h=1:m
        if k==1
            A(k,h)=h;
        elseif h==1
            A(k,h)=k;
        else
            A(k,h)=A(k,h-1)+A(k-1,h);
        end
    end
end
A