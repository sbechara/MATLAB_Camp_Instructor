% %% bechara_samuel_loops.m

% Loops homework assignment solution

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
% 3 points total
% Since this problem doesn't require loops as written! I done goofed

% TO TAs: TEST PROGRAM WITH 190lb and 72 inches
% Output should be "Your BMI value is 25.8, which classifies you as
% overweight"

clear, clc
W=input('Please input your weight in lb: ');
h=input('Please input your height in in: ');
BMI=703*W/h^2;
if BMI<18.5
    fprintf('\nYour BMI value is %.1f, which classifies you as underweight\n\n',BMI)
elseif BMI<25
    fprintf('\nYour BMI value is %.1f, which classifies you as normal\n\n',BMI)
elseif BMI<30
    fprintf('\nYour BMI value is %.1f, which classifies you as overweight\n\n',BMI)
else
    fprintf('\nYour BMI value is %.1f, which classifies you as obese\n\n',BMI)
end

%% Problem 2
% 9 points total

% TO TAs: TEST PROGRAM WITH 1 19 60 2 (male 19yrs 60bpm mediumfitness)
% RHR should be 152
% Then test with 2 21 50 3 (female 21yrs 87 bpm highfitness)
% RHR should be 139


gender = 0;
% loop will continue until user types in 1 or 2
% there are other ways
while gender~=1 & gender~=2 % -2 if their loop doesn't work (note: there are a LOT of variations)
    gender=str2double(input('Please input your gender as number(1 for male)(2 for female): ','s'));
end

% valid ages between 8 and 100 (I didn't specify in HW assignment so
% anything that makes sense is ok
age = 0;
while age<8 | age>100 % -2 if loop doesn't work
    age=input('Please input your age (in years): ');
end

% RHR valid for 30 - 190
RHR = 0;
while RHR<30 | RHR >190 % -2 if loop doesn't work
    RHR=input('Please enter your resting heart rate: ');
end

fit = 0;
while fit~=1 & fit~=2 & fit~=3 % -2 if loop doesn't work
    fit=str2num(input('Please enter your fitness level (1 for low, 2 for medium, or 3 for high: ','s'));
end

% -2 if they don't change the intensity variable based off of fitness level
if fit ==1
    INTEN=0.55;
elseif fit == 2
    INTEN=0.65;
else
    NTEN=0.8;
end

% -2 if they don't have seperate equations for Male and Female
if gender ==1 % male
    THR=((220-age)-RHR)*INTEN+RHR;
else %female
    THR=((206-0.88*age)-RHR)*INTEN+RHR;
end

fprintf('\nThe recommended training heart rate is %.0f\n\n',THR)
