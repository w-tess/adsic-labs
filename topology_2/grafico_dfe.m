format long e
close all
clear all

%% 5 GHZ
Tb = 0.2e-9;
max = 3.6138e-010;
figure(1)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_dfe_5G.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f', [3, inf]);
plot(spice(1,:), spice(2,:))
hold on
plot(spice(1,:), spice(3,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
L = legend('Without DFE', 'With DFE');
L.AutoUpdate = 'off';
title('Measuring of the post-cursors (200 ps pulse)')

xline(max, '--');

xline(max + 1*Tb, '--');
xline(max + 2*Tb, '--');
xline(max + 3*Tb, '--');
xline(max + 4*Tb, '--');
xline(max + 5*Tb, '--');
xline(max + 6*Tb, '--');
xline(max + 7*Tb, '--');


%% 10 GHZ
Tb = 0.1e-9;
max = 2.68026e-010;
figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_dfe_10G.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f', [3, inf]);
plot(spice(1,:), spice(2,:))
hold on
plot(spice(1,:), spice(3,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
L = legend('Without DFE', 'With DFE');
L.AutoUpdate = 'off';
title('Measuring of the post-cursors (100 ps pulse)')
xlim([0, 1.5e-9])

xline(max, '--');

xline(max + 1*Tb, '--');
xline(max + 2*Tb, '--');
xline(max + 3*Tb, '--');
xline(max + 4*Tb, '--');
xline(max + 5*Tb, '--');
xline(max + 6*Tb, '--');
xline(max + 7*Tb, '--');
