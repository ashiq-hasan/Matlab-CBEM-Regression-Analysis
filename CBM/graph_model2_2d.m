function [res]=graph_model2_2d(x,phi,phidot,T)
    x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=exp(x(5,1));
   n=size(phi,1);
  temp=[];
   for i=1:n
       func_value=(x1*T)+(x2*log(phidot))+(x3*log(phi(i,1)))+(x4*sqrt(phi(i,1)))+(log(x5));
       func_value=exp(func_value);
       temp=[temp;func_value];
   end
       
    res=temp;
end