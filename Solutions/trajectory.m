function [hmax,dmax] = trajectory(v0,theta)
%trajectory Students MUST include a summary of what the function does here. -1
%if the forgot.
%example) calculates the max height and distance of a projectile, and makes
%a plot of the trajectory
%   The students should include a description of the inputs and outputs of
%   the function here. -1 if they omit
%   Input arguments:
%   v0: initial velocity in (m/s)
%   theta: angle in degrees
%   Output arguments:
%   hmax: maximum height in (m)
%   dmax: maximum distance in (m)

g=9.81;
v0x=v0*cos(theta*pi/180);
v0y=v0*sin(theta*pi/180);
thmax=v0y/g;
hmax=v0y^2/(2*g);
ttot=2*thmax;
dmax=v0x*ttot;

%create a trajectory plot
tplot=linspace(0,ttot,200);
x=v0x*tplot;
y=v0y*tplot-0.5*g*tplot.^2;
plot(x,y);
xlabel('Distance (m)');
ylabel('Height (m)');
title('Projectile Trajectory');



end

