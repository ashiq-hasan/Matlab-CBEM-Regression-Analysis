function [res]=graph_model1_2d(x,phi,phidot,T)
    x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=x(5,1);
    x6=exp(x(6,1));
   n=size(phi,1);
  kf=[];
   for i=1:n
       func_value=(x1*T)+(x2*log(phidot))+(x3*log(phi(i,1)))+(x4*phi(i,1))+(x5*T*log(phidot))+(log(x6));
       func_value=exp(func_value);
       kf=[kf;func_value];
   end
       
    res=kf;
    
end