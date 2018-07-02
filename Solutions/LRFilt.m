function RV=LRFilt(R,L,w)% -2 if they do not have the input/output arguments exactly like this
% -2 if students omit the description like below
%LRFilt calculates the magnitude ratio of an RL filter
%   Input Arguments:
%   R - size of the resistor in ohms
%   L - size of the capacitor in henry
%   w - the frequency of the input signal in rad/s
%   Output Arguments:
%   RV - the magnitude ratio
% -2 if they do not calculate RV correctly
RV=1./sqrt(1+(w*L/R).^2);

end

