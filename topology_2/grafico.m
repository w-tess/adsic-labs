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
legend('1H', '1L')
title('AC C4 Escape Wire        [ Module Wiring 5H - Board vias With Stub - Board wires 2H ]')


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
legend('1H', '1L')
title('TRAN C4 Escape Wire        [ Module Wiring 5H - Board vias With Stub - Board wires 2H ]')

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
legend('5H', '5L', '1H', '1L')
title('AC Module Wiring        [ C4 Escape wire L - Board vias With Stub - Board wires 2H ]')

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
legend('5H', '5L', '1H', '1L')
title('TRAN Module Wiring        [ C4 Escape wire L - Board vias With Stub - Board wires 2H ]')

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
legend('With Stub', 'BackDrill', 'NoStub')
title('AC Board Vias         [ C4 Escape wire L - Module Wiring 1L - Board wires 2H ]')

%% TRAN (Module Wiring )

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
legend('With Stub', 'BackDrill', 'NoStub')
title('TRAN Board Vias         [ C4 Escape wire L - Module Wiring 1L - Board wires 2H ]')

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
legend('2.0 inch H ', '2.0 inch L ', '0.25 inch H ', '0.25 inch L' )
title('AC Board Wires         [ C4 Escape wire L - Module Wiring 1L - Board Vias BackDrill ]')

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
legend('2.0 inch H ', '2.0 inch L ', '0.25 inch H ', '0.25 inch L' )
title('TRAN Board Wires         [ C4 Escape wire L - Module Wiring 1L - Board Vias BackDrill ]')