function [Kf] = GetFuntionValue(T,x,P,Ps)
Kf=x(6)*exp(x(1)*T)*(Ps^(x(2)+x(5)*T))*(P^x(3))*(exp(x(4)*P));