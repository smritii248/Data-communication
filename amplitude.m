clc;
clear all;
close all;

Amp = 5;
fp = 4;
fc = 50;
t = 0:0.001:1;

x = Amp * sin(2 * pi * fc * t);
subplot(3,1,1)
plot(t, x)
grid on;
xlabel('Time')
ylabel('Amplitude')
title('067 carrier signal')
legend('Carrier Wave')

y = (Amp / 2) * (sign(sin(2 * pi * fp * t)) + 1);
subplot(3,1,2)
plot(t, y)
grid on;
xlabel('Time')
ylabel('Amplitude')
title('-067 Message signal')
legend('Message signal')

a = x .* y;
subplot(3,1,3)
plot(t, a)
grid on;
xlabel('Time')
ylabel('Amplitude')
title('-067 ASK signal')
legend('ASK signal')

