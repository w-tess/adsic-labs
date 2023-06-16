format long e

bits = [-1.13043e-008; -2.39409e-005; 0.363646; 0.027235; 0.0343059; -0.0542583; 0.0273995];
y = [0; 0; 1; 0; 0; 0; 0];

A = zeros(13,7);

for i=1:7
    A(i:(i+6),i) = bits;
end

A=A';
c = A\y;
c = c./(sum(abs(c)))


f = linspace(1e3,40e9, 1e3);
C_f = zeros(1,length(f));
Tb = 0.1e-9;

for i=3:9
    n = i-5;
    C_f = C_f + c(i)*exp(-1i*2*pi*f*Tb*n);
end

semilogx(f, 20*log10(abs(C_f)))
hold on
grid minor
title('FIR filter frequency response')
xlabel('frequency (Hz)')
ylabel('Magnitude (dB)')
xlim([1e3, 40e9])