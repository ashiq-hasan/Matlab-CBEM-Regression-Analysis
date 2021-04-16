function [res]=graph_model1_2dPhidot(x,phi,phidot,T)
 x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=x(5,1);
    x6=exp(x(6,1));
   n=size(phidot,1);
  kf=[];
   for i=1:n
       func_value=(x1*T)+(x2*log(phidot(i,1)))+(x3*log(phi))+(x4*phi)+(x5*T*log(phidot(i,1)))+(log(x6));
       func_value=exp(func_value);
       kf=[kf;func_value];
   end
       
    res=kf;
    
end