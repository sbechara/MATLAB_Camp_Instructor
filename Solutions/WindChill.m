function Twc = WindChill(T,V) % -2 if they do not have the input/output arguments exactly like this
% -2 if students omit the description like below
%WindChill calculates the percieved air temperature felt by the body on
%exposed skin due to the flow of air.
%   Input arguments:
%   T - air temperature in degrees F
%   V - wind speed in mph
%   Output arguments:
%   Twc - the windchill temperature in degrees F

% -2 if they do not calculate Twc correctly
C1=35.74; C2=0.6215; C3=-35.75; C4=0.4275; % they don't HAVE to do this part
Twc = round(C1+C2*T+C3*V^0.16+C4*T*V^0.16);

end

