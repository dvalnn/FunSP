N = 5;
n = [0:N - 1];
h = 1/5 .* ones(1,5);

figure(1);
stem(n, h);
axis([-1 5 0 0.3])
xlabel("n");
title("Resposta impulsional");
ylabel("h[n]");

% Resposta em frequencia