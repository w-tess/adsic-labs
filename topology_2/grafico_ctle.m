format long e
close all
clear all

%% 10 GHZ
figure(1)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_ctle_10G.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f', [3, inf]);
plot(spice(1,:), spice(3,:))
hold on
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('Without CTLE', 'With CTLE')
title('Impulse response of the channel (100 ps pulse)')


%% 5 GHZ
figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_ctle_5G.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f %f', [3, inf]);
plot(spice(1,:), spice(3,:))
hold on
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('Without CTLE', 'With CTLE')
title('Impulse response of the channel (200 ps pulse)')
