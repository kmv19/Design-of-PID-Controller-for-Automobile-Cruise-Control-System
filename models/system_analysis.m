%%
m = 1000;   %mass
b = 50;     %damping coefficient
u = 500 ; %nominal force
r = 10;  %desired speed

Gs = tf(1, [m, b]); % s-domain
%%
% analysis of step response
figure(1)
step(u*Gs)
%%
% Open-loop poles/zeros
figure(2)
pzmap(Gs)

axis([-1 1 -1 1])
%%
% Open-loop Bode plot
figure(4)
bode(Gz)
