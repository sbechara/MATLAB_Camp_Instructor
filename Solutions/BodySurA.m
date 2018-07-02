function BSA = BodySurA(w,h) % -2 if they do not have the input/output arguments exactly like this
% -2 if students omit the description like below
%BSA calculates the body surface area of a patient
%   Input arguments:
%   w - the weight of the patient in kg
%   h - the height of the patient in cm
%   Output arguments:
%   BSA - the body surface are of the patient in m^2

% -2 if they do not calculate BSA correctly
BSA = 0.007184*w^0.425*h^0.75;

end

