%% bechara_samuel_quadratic_calculator.m
% One possible solution to the quadratic calculator
clc;clear;close all;

%% Display welcome message and instructions
disp('Welcome to the Bechara Quadratic Calculator!');
disp('       the first place to stop for all your quadratic needs!');
disp('In order to work correctly, please enter your function as a vector');
disp('in the form [A B C] where the equation is setup such that');
disp('Ax^2 + bx + c = 0');
% Get the coefficients from the user and store in vector coeff
coeff = input('Type your vector in here: ');

%% Calculate solutions using the quadratic formula
% using the vector, set vars A B and C
a = coeff(1);
b = coeff(2);
c = coeff(3);

% Because this is a quadratic, there can be two solutions.
% Since there will be two solutions, store one solution in sol1 and the
% other in sol2
sol1 = (-b+sqrt(b^2-4*a*c))/(2*a); % + solution
sol2 = (-b-sqrt(b^2-4*a*c))/(2*a); % - solution

%% Display equation and solutions to user
% remember the + flag for fprintf will force display the sign
fprintf('The equation you input was \n%+gx^2%+gx%+g=0',a,b,c);
fprintf('\nThe solutions to that equation are\nx=%+g and x=%+g\n',sol1,sol2);
disp('Your figures should be appearing shortly.');
disp('Thank you for using the Bechara Quadratic Calculator');
disp('Have an outstanding day');

%% Plot the equation and the solutions
% NEED TO ADD REQUIREMENT THAT THE PLOT WILL INCLUDE THE SOLUTIONS AND X
% NUMBER OF POINTS ON EITHER SIDE. SHOULD DO 10%
% FOR NOW DO NOT WORRY ABOUT EQs WITH IMAGINARY SOLUTOINS OR EQs with only
% one solution...
sol_low = min([sol1 sol2]);
sol_high = max([sol1 sol2]);
extension = .1*(sol_high-sol_low);

%% Conditional statement using logic
hold on;
if imag(sol_high)~=0 || imag(sol_low)~=0
    z=[sol_high sol_low];
    plot(z,'*');
    xlabel('real');
    ylabel('imaginary');
    grid;
    legend('Imaginary Solutions');
else
    if sol_high ~= sol_low % the two solutions aren't equal
        % then we can use the extension to format our xvalues
        x=(sol_low-extension):.1:(sol_high+extension);
    else % the two solutions must be equal
        % since they are equal, we can use either sol to format xvalues
        x=sol1-(abs(sol1*.1)):.01:sol1+(abs(sol1*.1));  
    end
    % since solution is defined where y = 0 plotting is easy!
    plot(sol_low,0,'rd',sol_high,0,'ks');
    % Plot the function
    % now we can create a vector of y values that will correspond to the
    % plot
    y=a*x.^2+b*x+c;
    plot(x,y);
    % Format Plot
    xlabel('x');
    ylabel('y');
    legend('Solution 1','Solution 2','Function');
    grid;
end

hold off;
title('Quadratic Equation Solver');
