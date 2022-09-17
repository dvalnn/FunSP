n = [0:20];
N = length(n);

x = [ones(1, 10) zeros(1, N - 10)];
h = [2.^-n];
y = conv(x, h);

figure(1);
subplot(3, 1, 1);
stem(n, x);
subplot(3, 1, 2);
stem(n, h);
subplot(3, 1, 3);
stem(n, y(1:N), "mp");
