N = 5;
n = [0:N - 1];
h = 1/5 .* ones(1,5);

figure(1);
stem(n, h);
axis([-1 5 0 0.3])
xlabel("n");
ylabel("h[n]");
title("Resposta impulsional");

% Resposta em frequencia
figure(2);
[H W] = freqz(h, 1, 512, 'whole');
plot(W/pi, abs(H));
xlabel('\omega/\pi \rightarrow');
ylabel('H[\omega] \rightarrow');
title("Resposta impulsional");