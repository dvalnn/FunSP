
N = input("Introduza um tamanho para o vetor de números (N > 30): ");
#printf("O valor é: %d\n", N);
n = [0:N-1];
alpha = .95*exp(j*pi/3);
h = alpha.^n;

plot(n, abs(h));
xlabel('n \rightarrow');
ylabel('Magnitude \rightarrow');
legend("Envelope");
title("Complex Exponential");
pause;

