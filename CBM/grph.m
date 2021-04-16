function grph(name,x1,x2)
    filename=importdata(name);
    
    %limit for the graph
    rlmt=34;
    s1=50;
    s2=100;
    rlmt1=90;
    rlmt2=170;
    
    %all the values of kf,phi,phidot and T
    kf=filename(:,4);
    T=filename(:,3);
    phi=filename(:,2);
    phidot=filename(:,1);

    phidot_min=min(phidot);
    phidot_max=max(phidot);
    phidot_mean=mean(phidot);
    
    phi_min=min(phi);
    phi_max=max(phi);
    phi_mean=mean(phi);
    
    T_min=min(T);
    T_max=max(T);
    T_mean=mean(T);
    
    %phidot and T is fixed
    model1_kf_2d_graph_phi_T_min=graph_model1_2d(x1,phi,phidot_min,T_min);
    model1_kf_2d_graph_phi_T_max=graph_model1_2d(x1,phi,phidot_max,T_max);
    model1_kf_2d_graph_phi_T_mean=graph_model1_2d(x1,phi,phidot_mean,T_mean);
    
    model2_kf_2d_graph_phi_T_min=graph_model2_2d(x2,phi,phidot_min,T_min);
    model2_kf_2d_graph_phi_T_max=graph_model2_2d(x2,phi,phidot_max,T_max);
    model2_kf_2d_graph_phi_T_mean=graph_model2_2d(x2,phi,phidot_mean,T_mean);
    
   %phi and T is fixed
    model1_kf_2d_graph_p_T_min=graph_model1_2dPhidot(x1,phi_min,phidot,T_min);
    model1_kf_2d_graph_p_T_max=graph_model1_2dPhidot(x1,phi_max,phidot,T_max);
    model1_kf_2d_graph_p_T_mean=graph_model1_2dPhidot(x1,phi_mean,phidot,T_mean);
    
    model2_kf_2d_graph_p_T_min=graph_model2_2dPhidot(x2,phi_min,phidot,T_min);
    model2_kf_2d_graph_p_T_max=graph_model2_2dPhidot(x2,phi_max,phidot,T_max);
    model2_kf_2d_graph_p_T_mean=graph_model2_2dPhidot(x2,phi_mean,phidot,T_mean);
    
    %Phi and phidot is fixed
    model1_kf_2d_graph_p_pd_min=graph_model1_2dT(x1,phi_min,phidot_min,T);
    model1_kf_2d_graph_p_pd_max=graph_model1_2dT(x1,phi_max,phidot_max,T);
    model1_kf_2d_graph_p_pd_mean=graph_model1_2dT(x1,phi_mean,phidot_mean,T);
    
    model2_kf_2d_graph_p_pd_min=graph_model2_2dT(x2,phi_min,phidot_min,T);
    model2_kf_2d_graph_p_pd_max=graph_model2_2dT(x2,phi_max,phidot_max,T);
    model2_kf_2d_graph_p_pd_mean=graph_model2_2dT(x2,phi_mean,phidot_mean,T);
    
    
    %figure('name','model_1_2d_graph');
    
    subplot(3,1,1);
    plot(phi(1:rlmt,:),kf(1:rlmt,:),'.-k',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_min(1:rlmt,:),'.-y',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_min(1:rlmt,:),'.-.y',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_max(1:rlmt,:),'.-r',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_max(1:rlmt,:),'.-.r',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_mean(1:rlmt,:),'.-g',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_mean(1:rlmt,:),'.-.g');
    title(['T fixed at min=',num2str(T_min),'  max=',num2str(T_max),'  mean=',num2str(T_mean), ' and phidot fixed at minimum=',num2str(phidot_min),'  max=',num2str(phidot_max),'  mean=',num2str(phidot_mean)]);
    xlabel('Values of Phi');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model1 phidot,T min','Kf from model2 phidot,T min ','kf from model1 phidot,T max','kf from model2 phidot,T max','kf from model1 phidot,T mean','kf from model2 phidot,T mean');
    
    
    subplot(3,1,2);
    plot(phidot(s1:rlmt1,:),kf(s1:rlmt1,:),'.-k',phidot(s1:rlmt1,:),model1_kf_2d_graph_p_T_min(s1:rlmt1,:),'.-y',phidot(s1:rlmt1,:),model2_kf_2d_graph_p_T_min(s1:rlmt1,:),'.-.y',phidot(s1:rlmt1,:),model1_kf_2d_graph_p_T_max(s1:rlmt1,:),'.-r',phidot(s1:rlmt1,:),model2_kf_2d_graph_p_T_max(s1:rlmt1,:),'.-.r',phidot(s1:rlmt1,:),model1_kf_2d_graph_p_T_mean(s1:rlmt1,:),'.-g',phidot(s1:rlmt1,:),model2_kf_2d_graph_p_T_mean(s1:rlmt1,:),'.-.g');
    
    title(['phi fixed at min=',num2str(phi_min),'  max=',num2str(phi_max),'  mean=',num2str(phi_mean), ' and T fixed at minimum=',num2str(T_min),'  max=',num2str(T_max),'  mean=',num2str(T_mean)]);
    xlabel('Values of Phidot');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model1 phi,T min','Kf from model2 phi,T min ','kf from model1 phi,T max','kf from model2 phi,T max','kf from model1 phi,T mean','kf from model2 phi,T mean');
    
   subplot(3,1,3);
   plot(T(s2:rlmt2,:),kf(s2:rlmt2,:),'.-k',T(s2:rlmt2,:),model1_kf_2d_graph_p_pd_min(s2:rlmt2,:),'.-y',T(s2:rlmt2,:),model2_kf_2d_graph_p_pd_min(s2:rlmt2,:),'.-.y',T(s2:rlmt2,:),model1_kf_2d_graph_p_pd_max(s2:rlmt2,:),'.-r',T(s2:rlmt2,:),model2_kf_2d_graph_p_pd_max(s2:rlmt2,:),'.-.r',T(s2:rlmt2,:),model1_kf_2d_graph_p_pd_mean(s2:rlmt2,:),'.-g',T(s2:rlmt2,:),model2_kf_2d_graph_p_pd_mean(s2:rlmt2,:),'.-.g');
    
    title(['phi fixed at min=',num2str(phi_min),'  max=',num2str(phi_max),'  mean=',num2str(phi_mean), ' and phidot fixed at minimum=',num2str(phidot_min),'  max=',num2str(phidot_max),'  mean=',num2str(phidot_mean)]);
    xlabel('Values of T');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model1 phi,phidot min','Kf from model2 phi,phidot min ','kf from model1 phi,phidot max','kf from model2 phi,phidot max','kf from model1 phi,phidot mean','kf from model2 phi,phidot mean');
    
end