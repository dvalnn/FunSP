N = 20;
n = [0:N - 1];

h = 1/5 .* [ones(1, 5), zeros(1, N - 5)];
stem(n, h);
xlabel('n');
ylabel('h[n]');
title("Resposta impulsional");