%% Problem 1
% 4 points
clear; clc; close all;
Q1=4; Q2=5;
PG=2:.1:60;
Av1=Q1./sqrt(PG); % -1 points if they didn't use the elementwise operator
Av2=Q2./sqrt(PG);
% -3 if they don't plot. -1 if they plot in different figures
% -1 if there is only one plot on the figure (likely a hold problem)
plot(PG,Av1,PG,Av2) % they could have also used hold on, either is ok
title('Hakki Formula') % -1 if no title
legend('4 L/min Cardiac Output','5 L/min Cardiac Output') % -1 if no legend
xlabel('Systolic Pressure Difference, mm Hg') % -1 if no label
ylabel('Aortic Valve Area, cm^2') % -1 if no label

%% Problem 2
% 4 points
% -1 for each missing: Title, xlabel, ylabel, and legend
V=12; R=4; L=1.3;
t1=0:.01:.5; t2=0.5:.01:2;
i1=V/R*(1-exp(-R*t1/L));
i2=exp(-R*t2/L)*V/R*(exp(0.5*R/L)-1);
% -3 if they don't plot. -1 if they plot in different figures
% -1 if there is only one plot on the figure (likely a hold problem)
figure;
plot(t1,i1,t2,i2)
title('RL Circuit Response')
xlabel('Time, s')
ylabel('Current, Amps')

%% Problem 3
% 4 points
% -1 for each missing: Title, xlabel, ylabel, and legend
R=8.3145;
V=1:.1:10;
P1=R*100./V; P2=R*200./V; P3=R*300./V; P4=R*400./V;
% -3 if they don't plot. -1 if they plot in different figures
% -1 if there is only one plot on the figure (likely a hold problem)
figure;
plot(V,P1,V,P2,'--',V,P3,':',V,P4,'-.')
title('Ideal Gas Isotherms')
xlabel('Volume, m^3')
ylabel('Pressure, Pa')
legend('100 K','200 K','300 K','400 K')