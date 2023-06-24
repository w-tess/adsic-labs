format long e
close all
clear all

%% 5 GHZ
Tb = 0.2e-9;
max = 4.34875e-010;
max2 = 3.6174e-010;
figure(1)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_5G.txt','r');
fgetl(fileID);
fileID2 = fopen('./TRAN_simulations/ibm_topology_2_TRAN_ffe_5G.txt','r');
fgetl(fileID2);
spice1 = fscanf(fileID, '%f %f', [2, inf]);
spice2 = fscanf(fileID2, '%f %f', [2, inf]);
plot(spice1(1,:), spice1(2,:))
hold on
plot(spice2(1,:), spice2(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
L = legend('Without FFE', 'With FFE');
L.AutoUpdate = 'off';
title('Measuring of pre and post-cursors (200 ps pulse)')

xline(max, 'r--');
xline(max + 1*Tb, 'r--');
xline(max + 2*Tb, 'r--');
xline(max + 3*Tb, 'r--');
xline(max + 4*Tb, 'r--');
xline(max - 1*Tb, 'r--');

xline(max2, 'b-.');
xline(max2 + 1*Tb, 'b-.');
xline(max2 + 2*Tb, 'b-.');
xline(max2 + 3*Tb, 'b-.');
xline(max2 + 4*Tb, 'b-.');
xline(max2 - 1*Tb, 'b-.');


%% 10 GHZ
Tb = 0.1e-9;
max= 3.08375e-010;
max2 = 2.6803e-010;
figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_10G.txt','r');
fgetl(fileID);
fileID2 = fopen('./TRAN_simulations/ibm_topology_2_TRAN_ffe_10G.txt','r');
fgetl(fileID2);
spice1 = fscanf(fileID, '%f %f', [2, inf]);
spice2 = fscanf(fileID2, '%f %f', [2, inf]);
plot(spice1(1,:), spice1(2,:))
hold on
plot(spice2(1,:), spice2(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
L = legend('Without FFE', 'With FFE');
L.AutoUpdate = 'off';
title('Measuring of pre and post-cursors (100 ps pulse)')
xlim([0, 1.5e-9])

xline(max, 'r--');
xline(max + 1*Tb, 'r--');
xline(max + 2*Tb, 'r--');
xline(max + 3*Tb, 'r--');
xline(max + 4*Tb, 'r--');
xline(max - 2*Tb, 'r--');
xline(max - 1*Tb, 'r--');

xline(max2, 'b-.');
xline(max2 + 1*Tb, 'b-.');
xline(max2 + 2*Tb, 'b-.');
xline(max2 + 3*Tb, 'b-.');
xline(max2 + 4*Tb, 'b-.');
xline(max2 - 2*Tb, 'b-.');
xline(max2 - 1*Tb, 'b-.');
