format long e

x = [-9.59143e-007; 0.402296; -0.0212433; 0.0289993; -0.0145152; -0.00167035];
y = [0; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0];

A = zeros(12,6);

for i=1:6
    A(i:(i+5),i) = x;
end

c = A\y
c_n = c./(sum(abs(c)))
y_approx = A*c
y_approx_n = A*c_n



fileID = fopen('./AC_simulations/ibm_topology_2_AC_0.1p_10ohm.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);


f = spice(1,:);
C_f = zeros(1,length(f));
Tb = 0.2e-9;

for i=2:7
    ic = i-1;
    n = i-3;
    C_f = C_f + c_n(ic)*exp(-1i*2*pi*f*Tb*n);
end
tot = 20*log10(abs(C_f))+spice(2,:);

semilogx(f, 20*log10(abs(C_f)))
hold on
semilogx(f, spice(2,:))
semilogx(f, tot)
grid minor
title('FIR filter frequency response')
xlabel('Frequency (Hz)') 
ylabel('Magnitude (dB)')
legend('Original channel', 'FIR', 'Equalized channel', 'location', 'southwest')
xlim([1e8, 40e9])