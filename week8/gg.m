pkg load signal;
ALFA=0.925; BETA=0.275*pi;
b = [1]
a= [1 -2*ALFA*cos(BETA) ALFA^2]
N=50; n=[0:N-1].';
h=impz(b,a,N);
myh= (ALFA.^n).*((sin(BETA.*(n+1))./(sin(BETA))))
subplot(2,1,1)
stem(n, h)
ylabel('Amplitude')
subplot(2,1,2)
stem(n, h-myh) % difference should be zero (i.e. < 10)
xlabel('n \rightarrow')