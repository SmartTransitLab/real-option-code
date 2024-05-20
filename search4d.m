%two dimensional search
clear;%clear all data
clc;%clear the screen

Q_h_vector=35:0.2:60;
num_Q_h=length(Q_h_vector);
Q_l_vector=20:0.2:60;
num_Q_l=length(Q_l_vector);

C_vector=0:0.8:50;
num_C=length(C_vector);
D_vector=0:0.8:50;
num_D=length(D_vector);

res_mat_1=zeros(num_Q_h,num_Q_l,num_C,num_D);%diff1
res_mat_2=zeros(num_Q_h,num_Q_l,num_C,num_D);%diff2
res_mat_3=zeros(num_Q_h,num_Q_l,num_C,num_D);%diff3
res_mat_4=zeros(num_Q_h,num_Q_l,num_C,num_D);%diff4
res_mat_5=zeros(num_Q_h,num_Q_l,num_C,num_D);%diff5=abs()+abs()..

tol=0.05;
for i=1:num_Q_h
    for j=1:num_Q_l
        for k=1:num_C
            for g=1:num_D
                [tmp1,tmp2,tmp3,tmp4]=SolFourEqu( Q_h_vector(i),Q_l_vector(j),C_vector(k),D_vector(g));
                res_mat_1(i,j,k,g)=tmp1;
                res_mat_2(i,j,k,g)=tmp2;
                res_mat_3(i,j,k,g)=tmp3;
                res_mat_4(i,j,k,g)=tmp4;
                res_mat_5(i,j,k,g)=abs(tmp1)+abs(tmp2)+abs(tmp3)+abs(tmp4);
%         if res_mat_1(i,j)<tol && res_mat_1(i,j)>-tol  && res_mat_1(i,j)<tol && res_mat_1(i,j)>-tol 
%             Q_h_vector(i),Q_l_vector(j)
%             break
%         end
            end
        end
    end
end
min_val_1=min(min(min(min(res_mat_5))))
[idx1,idx2,idx3,idx4] = find(res_mat_3==min(res_mat_3(:)));
% Q_h_vector(row),Q_l_vector(col)
% 
% res_mat_1(row,col)
% res_mat_2(row,col)
