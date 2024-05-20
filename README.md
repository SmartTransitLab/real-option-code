# Switching option code with U-O stochastic process

Sample code used for switching options with the O-U stochastic process in this study can be found in the repository. 

Guo, Q. W., Chow, J. Y., & Schonfeld, P. (2017). Stochastic dynamic switching in fixed and flexible transit services as market entry-exit real options. Transportation research procedia, 23, 380-399.

Paper can be access freely at: https://www.sciencedirect.com/science/article/pii/S2352146517303009

These code examples demonstrate the method we use to find the optimal Q_h and Q_l.

o_u_simu2.m:
This code simulates the Ornstein-Uhlenbeck (O-U) process.

kummerCal.m:
This code calculates the Kummer function in the four nonlinear equations.

SolFourEqu.m:
This code formulates the four nonlinear equations for our switching option model.

search4d.m:
This code serves as our main function to obtain the Q_h, Q_l, A_0 and A_1 in the four nonlinear equations. For solving these four equations we use a search method to find the optimal solution that minimizes the difference of the equations.


