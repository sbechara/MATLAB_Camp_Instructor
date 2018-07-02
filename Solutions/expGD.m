function [At] = expGD( A0,At1,t1,t )
%expGD Students MUST include a summary of what the function does here. -1
%if the forgot.
%example) expGD calculates exponential growth and decay
%   The students should include a description of the inputs and outputs of
%   the function here. -1 if they omit
%   Input arguments:
%   A0: Quantity at time 0
%   At1: Quantity at time t1
%   t1: The time t1
%   t: time t
%   Output arguments:
%   At: Quantity at time t

k=log(At1/A0)/t1;
At=A0*exp(k*t);



end

