function [res]=graph_model2_2dPhidot(x,phi,phidot,T)
    x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=exp(x(5,1));
   n=size(phidot,1);
  temp=[];
   for i=1:n
       func_value=(x1*T)+(x2*log(phidot(i,1)))+(x3*log(phi))+(x4*sqrt(phi))+(log(x5));
       func_value=exp(func_value);
       temp=[temp;func_value];
   end
       
    res=temp;
end