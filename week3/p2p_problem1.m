pkg load control;
pkg load signal;

N = 1E5;
maxlag = 20;
h = [0.8 1 0.5 0.2]; % our system impulse response
x = randn(N, 1); 
sigma = sqrt(x.' * x); 
x = x / sigma;

% to confirm that rx[ell]=DELTA[ell]
[rx, lag] = xcorr(x, maxlag);
stem(lag, rx)
xlabel('\iota (samples)');
ylabel('r_{X}[\iota]');

% To be completed...
%
% Note that in Matlab Eq. (2) is computed as y=conv(h,x);
% Note that in Matlab Eq. (1) is computed as:
% [ryx, lag]=xcorr(y,x, maxlag);
