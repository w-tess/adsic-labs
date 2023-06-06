format long e

bits = [-5.75322e-005; 0.0107608; 0.243918; 0.0266799; -0.00341971; 0.00139177; -0.000688081];
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