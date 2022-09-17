n = [-5:5];
N = length(n);

x = [zeros(1, 5) 0.5 1 0.5 zeros(1, N - 8)];
h = [zeros(1, 5) ones(1, 3) .* 1/4 zeros(1, N - 8)];
y = conv(x, h, "same");

figure(1);
subplot(3, 1, 1);
stem(n, x);
subplot(3, 1, 2);
stem(n, h);
subplot(3, 1, 3);
stem(n, y);
