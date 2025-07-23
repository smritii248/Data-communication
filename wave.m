clc;
clear all;
close all;

Amp = 5;
fp = 4;      % message frequency
fc1 = 50;    % carrier 1 frequency
fc2 = 100;   % carrier 2 frequency

fs = 1000;           % sampling frequency
t = 0:1/fs:1;        % time vector

% Carrier signals
c1 = (Amp/2) * sin(2*pi*fc1*t);
c2 = (Amp/2) * sin(2*pi*fc2*t);

subplot(4,1,1);
plot(t, c1);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('ACE079BCT068 / Carrier 1 Signal');
legend('Carrier 1 Wave');

subplot(4,1,2);
plot(t, c2);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('ACE079BCT067 / Carrier 2 Signal');
legend('Carrier 2 Wave');

% Message signal
m = (Amp/2) * (sign(sin(2*pi*fp*t)) + 1);  % Binary message (0 or Amp)

subplot(4,1,3);
plot(t, m);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('ACE079BCT067/ Message Signal');
legend('Message Signal');

% FSK signal generation
a = zeros(size(t));
for i = 1:length(t)
    if m(i) == 0
        a(i) = c2(i);
    else
        a(i) = c1(i);
    end
end

subplot(4,1,4);
plot(t, a);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('ACE079BCT067 / FSK Signal');
legend('FSK Signal');
