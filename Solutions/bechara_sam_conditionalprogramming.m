%% Problem 1
% 6 points
clear;clc;close all;
% -2 if program does not throw an error if greater than 33 or less than 0.
% They can combine it into one statement though...
h = input('Please enter the height of the float in the water in meters: ' );
if h > 33
    disp('Error. The height cannot be larger than 33m.');
elseif h < 0 % if they used a nested if instead, ok, but make comment
    disp('Error. The height cannot be a negative number.');
elseif h<=19
    % -2 if volume calculates incorrectly for <19m
    v = pi*12.5^2*h;
    fprintf('The volume of water is %7.3f cubic meters.\n',v);
else
    % -2 if volume calculates incorrectly for 33<h<19
    rh=12.5+10.5*(h-19)/14;
    v=pi*12.5^2*19+pi*(h-19)*(12.5^2+12.5*rh+rh^2)/3;
    fprintf('The volume of the water is %7.3f cubic meters.\n',v);
end
% -2 if they do not use disp or fprintf to display the volume in m^3

%% Problem 2
% 6 points
clear;clc;close all;
% CAREFUL WHEN YOU GRADE, some students might ask for these in a different
% order

% Test with 
% n1=1, n2=2, theta=45 should be 20.7deg +3 points
% n1=2, n2=1, theta=45 should be reflection +3 points

% Remove single points at a time at your discretion as makes sense

% Get input from the user
n1=input('Enter the index of refraction for Region 1: ');
n2=input('Enter the index of refraction for Region 2: ');
theta1=input('Enter the angle of incidence in degrees (theta1): ');

% Calculate the slope of the incident ray
m1=(tand(theta1))^-1;

% Check if light is reflected
if abs((n1/n2)*sind(theta1))>1
    disp('All light reflects. No light passes through to Region 2');
    m2=-m1;
else
    theta2=asind((n1/n2)*sind(theta1));
    fprintf('The angle of refraction is %7.1f degrees\n',theta2);
    m2=tand(theta2)^-1;
end

% Create arrays of x-values to create plots
x_incident=-1:.01:0;
x_refracted=0:.01:1;
xall=[x_incident x_refracted];

% Create arrays of y-calues to create plots
boundary=zeros(length(xall));
ray_incident=m1*x_incident;
ray_refracted=m2*x_refracted;

% Plot incident, refracted, and boundary on same plot
hold on;
plot(x_incident,ray_incident,'r-.');
plot(x_refracted,ray_refracted,'b-.');
plot(xall,boundary,'m');
legend('Incident Ray','Refracted Ray','Boundary','location','northwest');
axis([-1 1 -1 1]);
hold off;
