th = 0.5;% speed
mu = 40;%mean value
sig = 5;%volatility
dt = 1e-2;
t = 0:dt:240;             % Time vector
x = zeros(1,length(t)); % Allocate output vector, set initial condition
rng(2.8);                 % Set random seed
for i = 1:length(t)-1
    x(i+1) = x(i)+th*(mu-x(i))*dt+sig*sqrt(dt)*randn;
end
figure;
plot(t,x);
xlabel('Month')
ylabel('Demand density (trips/mile^2/hr)')