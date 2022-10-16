pkg load control;
pkg load signal;

% a)
alpha = -0.95;
h = [1 0 0 0 0 0 alpha];
zplane(h)

% b)
grid = [0:1/512:1 - 1/512];
[H, W] = freqz(h, 1);
plot(W / pi, abs(H))
xlabel('\omega/\pi');
ylabel('Magnitude');

HFIR = sqrt(1 + 2 * alpha * cos(6 .* W) + alpha^2);
pause

hold on
plot(grid, HFIR, 'm')
hold off
