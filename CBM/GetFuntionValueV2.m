function [Kf] = GetFuntionValueV2(T,x,P,Ps)
Kf=x(5)*(exp(x(1)*T))*(Ps^x(2))*(P^x(3))*(exp(x(4)*sqrt(P)));