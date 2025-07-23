
clc;
clear all;
close all;

Amp = 5;
fm = 2;
fc = 10;
t = 0:0.001:1;

x = Amp * sin(2 * pi * fc * t);
subplot(3,1,1);
plot(t, x);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Smriti/067 - Carrier Signal');
legend('Carrier wave');

y = sign(sin(2 * pi * fm * t));
subplot(3,1,2);
plot(t, y);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Smriti/067 - Message Signal');
legend('Message signal');

a = x .* y;
subplot(3,1,3);
plot(t, a);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Smriti/067 - PSK Signal');
legend('PSK Signal');




