function grph3d(name,x1,x2)
    filename=importdata(name);
    %rlmt=34;
    %kf=filename(:,4);
    T=filename(:,3);
    phi=filename(:,2);
    phidot=filename(:,1);

    %phidot_min=min(phidot);
    %phidot_max=max(phidot);
    phidot_mean=mean(phidot);
    
    %phi_min=min(phi);
    %phi_max=max(phi);
    phi_mean=mean(phi);
    
    %T_min=min(T);
    %T_max=max(T);
    T_mean=mean(T);
    
   
    
    %model1_kf_3d_graph_T_min=graph_model1_3d(x1,phi,phidot,T_min);
    %model1_kf_3d_graph_T_max=graph_model1_3d(x1,phi,phidot,T_max);
    model1_kf_3d_graph_T_mean=graph_model1_3d(x1,phi,phidot,T_mean);
   
    %model2_kf_3d_graph_T_min=graph_model2_3d(x2,phi,phidot,T_min);
    %model2_kf_3d_graph_T_max=graph_model2_3d(x2,phi,phidot,T_max);
    model2_kf_3d_graph_T_mean=graph_model2_3d(x2,phi,phidot,T_mean);
    
    %model1_kf_3d_graph_phidot_min=graph_model1_3dpd(x1,phi,phidot_min,T);
    %model1_kf_3d_graph_phidot_max=graph_model1_3dpd(x1,phi,phidot_max,T);
    model1_kf_3d_graph_phidot_mean=graph_model1_3dpd(x1,phi,phidot_mean,T);
   
    %model2_kf_3d_graph_phidot_min=graph_model2_3dpd(x2,phi,phidot_min,T);
    %model2_kf_3d_graph_phidot_max=graph_model2_3dpd(x2,phi,phidot_max,T);
    model2_kf_3d_graph_phidot_mean=graph_model2_3dpd(x2,phi,phidot_mean,T);
    
    %model1_kf_3d_graph_phi_min=graph_model1_3dp(x1,phi_min,phidot,T);
    %model1_kf_3d_graph_phi_max=graph_model1_3dp(x1,phi_max,phidot,T);
    model1_kf_3d_graph_phi_mean=graph_model1_3dp(x1,phi_mean,phidot,T);
   
    %model2_kf_3d_graph_phi_min=graph_model2_3dp(x2,phi_min,phidot,T);
    %model2_kf_3d_graph_phi_max=graph_model2_3dp(x2,phi_max,phidot,T);
    model2_kf_3d_graph_phi_mean=graph_model2_3dp(x2,phi_mean,phidot,T);
    
    
    [xx,yy]=meshgrid(phi,phidot);
    [xx1,yy1]=meshgrid(phidot,T);
    [xx2,yy2]=meshgrid(phi,T);
    
    
    
    figure('name','case:phi at mean')
    subplot(1,2,1);
    surf(xx1,yy1,model1_kf_3d_graph_phi_mean);
    title(['Phi fixed at mean=',num2str(phi_mean)]);
    xlabel('Values of Phidot')
    ylabel('Values of T')
    zlabel('Values of kf')
    legend('Kf from model1')
    
    subplot(1,2,2)
    surf(xx1,yy1,model2_kf_3d_graph_phi_mean)
    title(['phi fixed at mean=',num2str(phi_mean)])
    xlabel('Values of Phidot')
    ylabel('Values of T')
    zlabel('Values of kf')
    legend('Kf from model2')
    
    figure('name','case:phidot at mean')
        subplot(1,2,1)
    surf(xx2,yy2,model1_kf_3d_graph_phidot_mean)
    title(['phidot fixed at mean=',num2str(phidot_mean)])
    xlabel('Values of Phi')
    ylabel('Values of T')
    zlabel('Values of kf')
    legend('Kf from model1')
    
    subplot(1,2,2)
    surf(xx2,yy2,model2_kf_3d_graph_phidot_mean)
    title(['phidot fixed at maean=',num2str(phidot_mean)])
    xlabel('Values of Phi')
    ylabel('Values of T')
    zlabel('Values of kf')
    legend('Kf from model2')
    
     figure('name','case:T at mean')
        subplot(1,2,1)
    surf(xx,yy,model1_kf_3d_graph_T_mean)
    title(['T fixed at mean=',num2str(T_mean)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model1')
    
    subplot(1,2,2)
    surf(xx,yy,model2_kf_3d_graph_T_mean)
    title(['T fixed at mean=',num2str(T_mean)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model2')
  
    
   
end