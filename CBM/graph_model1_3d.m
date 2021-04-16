function [res]=graph_model1_3d(x,phi,phidot,T)
    %rlmt=34;
    x1=x(1,1);
    x2=x(2,1);
    x3=x(3,1);
    x4=x(4,1);
    x5=x(5,1);
    x6=exp(x(6,1));
  
    [phi,phidot]=meshgrid(phi,phidot);
     [n,m]=size(phi);
       final_kf=[];
   for i=1:n
       kf=[];
       for j=1:m
           func_value=(x1*T)+(x2*log(phidot(i,j)))+(x3*log(phi(i,j)))+(x4*phi(i,j))+(x5*T*log(phidot(i,j)))+(log(x6));
           func_value=exp(func_value);
           kf=[kf func_value];
       end
       final_kf=[final_kf;kf];
   end
       
    res=final_kf;
    
end