function [ equ_diff_1, equ_diff_2,equ_diff_3,equ_diff_4] = SolFourEqu( Q_h,Q_l,C,D)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%variables to find
% Q_h=15;
% Q_l=10;
% C=3
% D=2



sigma=5; % Constant of volatility
rou=0.07; % interest rate
%m=40; % mean value of demand 
miu=0.03; % grow rate

f_plus=400;
f_minus=300;
w1=6.378;%parameter in Et(Expectation)
w2=185.51;
Et=(1/(rou-miu)*(w1*Q_h)-w2/rou);

c1=0.5*((1-2*miu/sigma^2)+((1-2*miu/sigma^2)^2+8*rou/sigma^2)^0.5);
c2=0.5*((1-2*miu/sigma^2)-((1-2*miu/sigma^2)^2+8*rou/sigma^2)^0.5);

eq_1_left=D*Q_h^c1;
eq_1_right=C*Q_h^c2+Et-f_plus;
equ_diff_1=eq_1_left-eq_1_right;

eq_2_left=C*Q_l^c2+Et;
eq_2_right=D*Q_l^c1-f_minus;
equ_diff_2=eq_2_left-eq_2_right;

eq_3_left=D*c1*Q_h^(c1-1);
eq_3_right=C*c2*Q_h^(c2-1)+w1/(rou-miu);
equ_diff_3=eq_3_left-eq_3_right;

eq_4_left=D*c1*Q_l^(c1-1);
eq_4_right=C*c2*Q_l^(c2-1)+w1/(rou-miu);
equ_diff_4=eq_4_left-eq_4_right;
end






