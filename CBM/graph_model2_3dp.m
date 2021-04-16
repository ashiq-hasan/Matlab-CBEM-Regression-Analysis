function [res]=graph_model2_3dp(x,phi,phidot,T)
    %rlmt=34;
    x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=exp(x(5,1));
    
    [phidot,T]=meshgrid(phidot,T);
    [n,m]=size(phidot);
 
     final_kf=[];
   for i=1:n
       kf=[];
       for j=1:m
           func_value=(x1*T(i,j))+(x2*log(phidot(i,j)))+(x3*log(phi))+(x4*sqrt(phi))+(log(x5));
           func_value=exp(func_value);
           kf=[kf func_value];
       end
       final_kf=[final_kf;kf];
   end
       
    res=final_kf;   
end