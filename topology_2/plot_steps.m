clc
close all
format long e

%% TRAN / STEP Rs

figure(1)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_step_driver_resistance.txt','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f %f', [2, inf]);
    plot(spice(1,:), spice(2,:))
end

xlim([0, 2e-9])
grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend(steps{:,:})
title('Tran (Step Rs)')
set(gcf,'position',[0, 0, 1000, 1000]);

%% TRAN / STEP Cd

figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_step_term_capacitance.txt','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f %f', [2, inf]);
    plot(spice(1,:), spice(2,:))
end

xlim([0, 2e-9])
grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend(steps{:,:})
title('Tran (Step Cd)')
set(gcf,'position',[0, 0, 1000, 1000]);

%% AC   / STEP Rs

figure(3)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_step_driver_resistance','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f (%fdB,%*f°)', [2, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f (%fdB,%*f°)', [2, inf]);
    semilogx(spice(1,:), spice(2,:))
end

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend(steps{:,:}, 'location', 'southwest')
title('AC (Step Rs)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);

%% AC   / STEP Cd

figure(4)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_step_term_capacitance.txt','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f (%fdB,%*f°)', [2, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f (%fdB,%*f°)', [2, inf]);
    semilogx(spice(1,:), spice(2,:))
end

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend(steps{:,:}, 'location', 'southwest')
title('AC (Step Cd)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);
