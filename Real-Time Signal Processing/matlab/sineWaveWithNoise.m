% a signal of below frequency
frequency = 1;
duration = 1;
samplingRate = 1000;

% our x-axis
t = 0:1/samplingRate:2*pi;

% generating the sine wave
sineWave = sin(2*pi*frequency*t);

% generate the noise
noiseAmplitude = 0.5;
noise = noiseAmplitude * randn(size(t));

noisySignal = sineWave + noise;

% plots
figure;
subplot(3,1,1);
plot(t, sineWave);
title('Sine Wave');

subplot(3,1,2);
plot(t, noise);
title('Noise');

subplot(3,1,3);
plot(t, noisySignal);
title('Noisy Sine Wave');