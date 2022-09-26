a=1/2; 
b=1/3;
N=50; 
n=[0:N-1];
% input sequence
x=a.^n;
% impulse response
h=b.^n;

yn = conv(x,h);
ya = (a.^(n.+1)-b.^(n.+1))/(a-b);

figure(1);
subplot(3,1,1);
stem(n,yn(1:N));
title("Numerical y[n]");
subplot(3,1,2);
stem(n,ya(1:N));
title("Analitical y[n]");
subplot(3,1,3);
stem(n,ya(1:N)-yn(1:N));
title("Difference");