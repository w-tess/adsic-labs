format long e

close all
clear
clc


%% AC one driver at a time
figure(1)
fileID = fopen('./only_driver_1.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('./only_driver_2.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./only_driver_3.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))


grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend('Driver 1', 'Driver 2', 'Driver 3', 'Location', 'northwest')
title('Effect of every driver on the far end voltage of the line 2')
xlim([1e8, 40e9])



%% AC, step driver phase
fileID = fopen('driver_2_3_phase_step.txt','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
figure(2)
plot(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
    plot(spice(1,:), spice(2,:))
end

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend(steps{:,:}, 'Location', 'northwest')
title('Voltage at far end of line 2')
xlim([1e8, 40e9])


%% Transient both driver
figure(3)
fileID = fopen('./tran_28.7GHz_in_phase.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f %f', [4, inf]);
plot(spice(1,:), spice(2,:))
hold on
plot(spice(1,:), spice(3,:))
plot(spice(1,:), spice(4,:))

grid minor
legend('FE line 1', 'FE line 2', 'FE line 3', 'Location', 'northwest')
xlabel('Time (s)') 
ylabel('Voltage (V)')
title('Far end voltages of the three lines at 28.7 GHz (phase shift between drivers = 0°)')
xlim([1e-9, 1.2e-9])
set(gcf,'position',[0, 0, 1000, 1000]);


figure(4)
fileID = fopen('./tran_28.7GHz_quadrature.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f %f', [4, inf]);
plot(spice(1,:), spice(2,:))
hold on
plot(spice(1,:), spice(3,:))
plot(spice(1,:), spice(4,:))

grid minor
legend('FE line 1', 'FE line 2', 'FE line 3', 'Location', 'northwest')
xlabel('Time (s)') 
ylabel('Voltage (V)')
title('Far end voltages of the three lines at 28.7 GHz (phase shift between drivers = 180°)')
xlim([1e-9, 1.2e-9])
set(gcf,'position',[0, 0, 1000, 1000]);


