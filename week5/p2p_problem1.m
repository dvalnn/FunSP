pkg load control;
pkg load signal;

% a)
alpha = -0.95;
h = [1 0 0 0 0 0 alpha];
zplane(h)

% b)
grid = [0:1/512:1 - 1/512];
% [H, W] = freqz(h, 1);
[H, W] = freqz(h, 1, 512, 'whole', 8e3);
plot(W, abs(H))
xlabel('\omega');
ylabel('Magnitude');
printf("done\n")
% xlabel('\omega/\pi');

% HFIR = sqrt(1 + 2 * alpha * cos(6 .* W) + alpha^2);
% pause()

% hold on
% % plot(grid, HFIR, 'm')
% hold off
