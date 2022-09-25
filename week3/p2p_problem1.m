pkg load control;
pkg load signal;

N = 1E5;
maxlag = 20;
h = [0.8 1 0.5 0.2]; % our system impulse response
x = randn(N, 1);
sigma = sqrt(x.' * x);
x = x / sigma;

% to confirm that rx[l]=DELTA[l]
[rx, lag] = xcorr(x, maxlag);
stem(lag, rx)
xlabel('\iota (samples)');
ylabel('r_{X}[\iota]');
title("Autocorrelação de X");

figure(2)
y = conv(h, x);
[ryx, lag] = xcorr(y, x, maxlag);

stem(lag, ryx)
title("Estimativa da resposta impulsional");
xlabel('\iota (samples)');
ylabel('r_{YX}[\iota]');

% Note that in Matlab Eq. (2) is computed as y=conv(h,x);
% Note that in Matlab Eq. (1) is computed as: [ryx, lag]=xcorr(y,x, maxlag);
