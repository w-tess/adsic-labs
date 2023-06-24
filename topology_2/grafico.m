format long e
close all
clear all

%% AC (C4 Escape Wire)
figure(1)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend('1H', '1L')
title('AC (C4 Escape Wire)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);



%% TRAN (C4 Escape Wire)
figure(2)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('1H', '1L')
title('TRAN (C4 Escape Wire)')
set(gcf,'position',[0, 0, 1000, 1000]);

%% AC (Module Wiring )

figure(3)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_5L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend('5H', '5L', '1H', '1L')
title('AC (Module Wiring)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);



%% TRAN (Module Wiring )

figure(4)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_5L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('5H', '5L', '1H', '1L')
title('TRAN (Module Wiring) ')
set(gcf,'position',[0, 0, 1000, 1000]);



%% AC Board vias 
figure(5)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_BackDrill.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_NoStub.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend('With Stub', 'BackDrill', 'NoStub')
title('AC (Board Vias)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);



%% TRAN (Board vias )

figure(6)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_BackDrill.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_NoStub.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('With Stub', 'BackDrill', 'NoStub')
title('TRAN (Board Vias)')
set(gcf,'position',[0, 0, 1000, 1000]);



%% AC Board Wires 
figure(7)
fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_BackDrill.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_BackDrill_BoardWires_2L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_BackDrill_BoardWires_025H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('./AC_simulations/ibm_topology_2_AC_C4_L_ModW_1L_BackDrill_BoardWires_025L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
xlabel('Frequency (Hz)') 
ylabel('V(D_3p) (dB)')
legend('2.0 inch H ', '2.0 inch L ', '0.25 inch H ', '0.25 inch L' )
title('AC (Board Wires)')
xlim([1e8, 40e9])
set(gcf,'position',[0, 0, 1000, 1000]);

%% TRAN Board Wires
figure(8)
fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_BackDrill.txt','r'); % La prima è la migliore della conf precedente
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_BackDrill_BoardWires_2L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_BackDrill_BoardWires_025H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('./TRAN_simulations/ibm_topology_2_TRAN_C4_L_ModW_1L_BackDrill_BoardWires_025L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
xlabel('Time (s)') 
ylabel('Output voltage (V)')
legend('2.0 inch H ', '2.0 inch L ', '0.25 inch H ', '0.25 inch L' )
title('TRAN (Board Wires)')
set(gcf,'position',[0, 0, 1000, 1000]);
