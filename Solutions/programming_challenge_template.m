%% Insert your own title here
% and write some stuff about the program here. Your name, date, last
% modified date, are nice additions.

% REMOVE ALL OF MY COMMENTS IN THIS TEMPLATE AND REPLACE WITH YOUR OWN.

clc;clear;close all;

%% Display welcome message and instructions

% Get the coefficients from the user and store in a vector

%% Calculate solution(s) using the quadratic formula
% Because this is a quadratic, there can be two solutions.
% Since there will be two solutions, store one solution in sol1 and the
% other in sol2


%% Display equation and solutions to user
% remember the + flag for fprintf will force display the sign


%% Sort the solutions
% Set the smaller of the two solutions to sol_low and the larger of the two
% solutions to sol_high. Don't worry if they are equal yet.

% I left this bit of code in for you. We will use it to extend the axis 10%
% on either side of the plots below... You will see.
extension = .1*(sol_high-sol_low);

%% Conditional statement using logic
hold on;
% I have setup this logical argument for you. All you have to do is fill in
% the blanks

% First, lets check to see if our solution is imaginary.
if imag(sol_high)~=0 || imag(sol_low)~=0
    % If it IS imaginary, then create an array with two entries called
    % sol_imaginary containing both solutions. Then plot(sol_imaginary).
    % Format the solutions as stars and label the axis accordingly.
    
else % ok, so they aren't imaginary then
    % but what if there is only one solution?
    if sol_high ~= sol_low % Let's check!
        % then we can use the extension to format our xvalues so we get a
        % nice pretty plot
        x=(sol_low-extension):.1:(sol_high+extension);
    else % the two solutions must be equal
        % since they are equal, we can use either sol to format xvalues
        x=sol1-(abs(sol1*.1)):.01:sol1+(abs(sol1*.1));  
    end
    % Try to follow the logic of this statement. What is next? What should
    % you do in this section of the code to fulfill the requirements of the
    % assignment? I leave it up to you.
    
    
    
end

