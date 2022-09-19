N = input("Introduza um tamanho para o vetor de números (N > 30): ");
#printf("O valor é: %d\n", N);
n = [0:N - 1];
alpha = .95 * exp(j * pi / 3);
h = alpha.^n;

plot(n, abs(h));
xlabel('n \Rightarrow');
ylabel('Magnitude \Rightarrow');
legend("Envelope");
title("Complex Exponential");

#sinal x[n] = u[n-20] - u[n-30] --> tamanho total do vetor = N
x = [zeros(1, 20) ones(1, 10) zeros(1, N - 30)];

figure(2);
subplot(3, 1, 1);
stem(n, real(h));

subplot(3, 1, 2);
stem(n, x);

y = conv(x, real(h));
disp("Convolution complete.");

subplot(3, 1, 3);
stem(n, y(1:N), 'mp');

disp(length(y));
