pkg load control;
pkg load signal;

#a)
N = 1E6;
n = [0:N - 1];
omega = 2*pi/80;
A = 1;
#sinal periódico
x = A * sin(omega * n);

#estimação da função distribuição de probabilidade do sinal (pdf):
[H X] = hist(x, 50);
equalize = 50 / (max(x) - min(x));
bar(X, H / sum(H) * equalize, 0.5);
ylabel('PDF');
xlabel('x[n] amplitude');

#cálculo e representação da função autocorrelação
figure(2);
maxlag = 700;
[rd, lag] = xcorr(x, maxlag);
stem(lag, rd);
xlabel('\iota (samples)');
ylabel('r_{X}[\iota]');
title("Autocorrelação de X");

pause;

#b)  -----  SINAL º 2
N=100; 
n=[0:N-1];
alfa=0.9;
xd=alfa.^n*(1-alfa^2)/alfa; 
xd(1)=xd(1)-1/alfa;

figure(1);
stem(n,xd); 
xlabel('n \rightarrow');
ylabel('Amplitude \rightarrow'); 

figure(2);
maxlag=100;
[rn, lag]=xcorr(x, maxlag);
stem(lag, rn);
xlabel('\iota (samples)');
ylabel('r_{X}[\iota]');
title("Autocorrelação de X");

pause;

