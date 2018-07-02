%% bechara_samuel_inputoutput.m

% Input/Output homework assignment solution

% TA Instructions ----------------------------------------------------%
% When grading, look briefly through their code and if there are any
% huge problems (no comments, etc) make a note.
% for all problems -1 on whole assignment if no or bad commenting
% If students do not put code in seperate sections give them -2 on the
% assignment and be sure to explain why (and how to do it) in feedback
%---------------------------------------------------------------------%

% Assignment is worth 12 points
clear; clc;

%% Problem 1
% 6 points total
% Note: they can not get negative points
clear; clc;
load('io_grades'); % -2 if they don't do this correctly
number=length(grades); % -1 if they didn't use the built in commands
aver=mean(grades);
standard_dev=std(grades);
middle=median(grades);
fprintf('\nThere are %i grades.\n',number) % -1 if wrong
fprintf('The average grade is %.1f.\n',aver) % -1 if wrong
fprintf('The standard deviation is %.1f.\n',standard_dev) % -1 if wrong
fprintf('The median grade is %.1f.\n',middle) % -1 if wrong

%% Problem 2
% 6 points
clear; clc;
format short g % even though I am explicit in HW, don't take off points if they forget this
welcome_message='Welcome to the Boiling Temp to Elevation Table Creator!';
disp(welcome_message); % -1 if they don't have a welcome message
alt=input('Please enter the elevation range you are interested in as a vector [x x x]: '); % -2 if they don't ask for a vector (or you get an error typing in -500:500:10000)
p=29.921*(1-6.8753e-6*alt); % if they use .* here explain why they shouldn't but don't take off points.
% that line above is wrong but I didn't find the mistake until too late
% SHOULD be...
%p=29.921*(1-6.8753e-6*alt).^(5.2559);
Tb=49.16*log(p)+44.932;
tbl=[alt' Tb']; % -2 if they don't display the table using the disp or fprintf command
disp('                   Boiling')
disp('       Altitude  Temperature')
disp('         (ft)       (degF)')
disp(tbl)
% -3 if they skip opening, outputting, and closing below
% -1 for each step that they omit
fid1=fopen('boilingtemp_elevation_table.txt','w'); 
fprintf(fid1,'Custom Boiling Temperature to Elevation Conversion Table\n\n');
fprintf(fid1,'    Altitude(ft)        Boiling Temp (degF)\n');
fprintf(fid1,'       %05.0f                  %5.2f       \n',tbl');
fclose(fid1);
disp('Program completed successfully!');
disp('Your table was saved as a file in your current directory');