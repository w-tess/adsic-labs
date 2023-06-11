clc
close all
format long e

%% TRAN / STEP Rs

figure(1)
fileID = fopen('./TRAN_simulations/ibm_topology_1_TRAN_step_Rs','r');
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

xlim([0 0.6e-9])
grid minor
legend(steps{:,:})
title('Tran (Step Rs)')

%% TRAN / STEP Cd

figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_1_TRAN_step_Cd','r');
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

xlim([0 0.6e-9])
grid minor
legend(steps{:,:})
title('Tran (Step Cd)')

%% AC   / STEP Rs

figure(3)
fileID = fopen('./AC_simulations/ibm_topology_1_AC_step_Rs','r');
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
legend(steps{:,:})
title('AC (Step Rs)')

%% AC   / STEP Cd

figure(4)
fileID = fopen('./AC_simulations/ibm_topology_1_AC_step_Cd','r');
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
legend(steps{:,:})
title('AC (Step Cd)')
