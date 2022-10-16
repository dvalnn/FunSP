FS = 22050;
duration = 4;
NBITS = 16;
r = audiorecorder(FS, NBITS, 1);
fprintf('Start speaking...\n');
record(r); % speak into microphone...
pause(duration); stop(r);
% p = play(r); % listen to complete recording
x = getaudiodata(r, 'single'); % get data normalized to +-1.0
x = x(FS:end); % avoid first second, may contain noise
fprintf('Stop speaking. Now playing...\n');
sound(x, FS);
fprintf('Stop playing.\n');
audiowrite('ficheiro.wav', x, FS, 'BitsPerSample', NBITS);
[x, FS, NBITS] = wavread('soundfile.wav'); % or
[x, FS] = audioread('soundfile.wav');
sound(x, FS); %NOTE: x values are in the range [-1, 1]
N = length(x);
samples = [0:N - 1];
figure(1)
plot(samples / FS, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('soundfile.wav');
