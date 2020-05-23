%project_prob
A=40*3.14;
A=A/180;
v0=20;
g=9.8;
t_hit=2*(v0/g)*sin(A);
t=[0:t_hit/10:t_hit]
h=v0*t*sin(A)-0.5*g*t.^2
v=sqrt(v0^2-2*v0*g*t*sin(A)+g^2*t.^2)
plot(t,v,'+-',t,h)

