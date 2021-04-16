function [X]=model2(name)
    filename=importdata(name);
    
    y=filename(:,4);
    T=filename(:,3);
    phi=filename(:,2);
    phidot=filename(:,1);
    
    b=log(y);
    a1=T;
    a2=log(phidot);
    a3=log(phi);
    a4=sqrt(phi);
    a5=ones(size(filename,1),1);
    
    A=[a1,a2,a3,a4,a5];
    

    X=A\b;
    disp('value of x from model 2');
    disp(X);
    ypol=(A*X);
    disp(rq(ypol,filename));
    
    
 