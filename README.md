# Switching option code with U-O stochastic process

Sample code that are used for switching option with U-O stochastic process in this study can be found in the repository. 

Guo, Q. W., Chow, J. Y., & Schonfeld, P. (2017). Stochastic dynamic switching in fixed and flexible transit services as market entry-exit real options. Transportation research procedia, 23, 380-399.

Paper can be access freely at: https://www.sciencedirect.com/science/article/pii/S2352146517303009

This code example is the method that we use to find the optimal Q_h and Q_l.

o_u_simu2.m:
This code is used to simulated for the O-U process.

kummerCal.m:
This code is used to calculate the Kummer function in the four nonlinear equations.

SolFourEqu.m:
This code is the four nonlinear equations in our switching option.

search4d.m:
This code is our main function that can obtain the Q_h, Q_l, A_0 and A_1 in the four nonlinear equations. For solving these four equations we use a search method to find the optimal solution that minimizes the difference of the equations.
