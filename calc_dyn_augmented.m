function dynamics_augmented = calc_dyn_augmented(in1,in2,in3)
%CALC_DYN_AUGMENTED
%    DYNAMICS_AUGMENTED = CALC_DYN_AUGMENTED(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    02-Dec-2020 21:31:08

J_x = in3(:,1);
J_y = in3(:,2);
J_z = in3(:,3);
eta = in1(11,:);
g = in3(:,5);
m = in3(:,4);
p = in1(14,:);
phi = in1(6,:);
psi = in1(4,:);
q = in1(13,:);
r = in1(12,:);
tau_phi = in2(4,:);
tau_psi = in2(2,:);
tau_theta = in2(3,:);
theta = in1(5,:);
u = in1(7,:);
u1_bar = in2(1,:);
v = in1(8,:);
w = in1(9,:);
zeta = in1(10,:);
t2 = cos(phi);
t3 = cos(psi);
t4 = cos(theta);
t5 = sin(phi);
t6 = sin(psi);
t7 = sin(theta);
t8 = tan(theta);
t9 = -J_z;
t10 = 1.0./J_x;
t11 = 1.0./J_y;
t12 = 1.0./J_z;
t13 = 1.0./t4;
dynamics_augmented = [-v.*(t2.*t6-t3.*t5.*t7)+w.*(t5.*t6+t2.*t3.*t7)+t3.*t4.*u;v.*(t2.*t3+t5.*t6.*t7)-w.*(t3.*t5-t2.*t6.*t7)+t4.*t6.*u;-t7.*u+t4.*t5.*v+t2.*t4.*w;q.*t5.*t13+r.*t2.*t13;q.*t2-r.*t5;p+q.*t5.*t8+r.*t2.*t8;-g.*t7-q.*w+r.*v;p.*w-r.*u+g.*t4.*t5;-p.*v+q.*u-zeta./m+g.*t2.*t4;eta;u1_bar;t12.*tau_psi+p.*q.*t12.*(J_x-J_y);t11.*tau_theta-p.*r.*t11.*(J_x+t9);t10.*tau_phi+q.*r.*t10.*(J_y+t9)];
