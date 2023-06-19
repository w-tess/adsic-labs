format long e

x = [-1.57206e-008; -1.58789e-005; 0.36364 ; 0.0275881; 0.0336614; -0.0541164; 0.0270287];
y = [0; 0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0];

A = zeros(13,7);

for i=1:7
    A(i:(i+6),i) = x;
end

c = A\y
c_n = c./(sum(abs(c)))
y_approx = A*c
y_approx_n = A*c_n

f = linspace(1e3,40e9, 1e3);
C_f = zeros(1,length(f));
Tb = 0.1e-9;

% for i=3:9
%     n = i-5;
%     C_f = C_f + c(i)*exp(-1i*2*pi*f*Tb*n);
% end
% 
% semilogx(f, 20*log10(abs(C_f)))
% hold on
% grid minor
% title('FIR filter frequency response')
% xlabel('frequency (Hz)')
% ylabel('Magnitude (dB)')
% xlim([1e3, 40e9])