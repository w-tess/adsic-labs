format long e

%% AC (Driver H)
figure(1)
fileID = fopen('ibm_topology_1_AC_H_1H_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('ibm_topology_1_AC_H_5H_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_AC_H_1L_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_AC_H_5L_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
legend('1H', '5H', '1L', '5L')
title('AC (Driver H)')


%% AC (Driver L)
figure(2)
fileID = fopen('ibm_topology_1_AC_L_1H_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))
hold on

fileID = fopen('ibm_topology_1_AC_L_5H_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_AC_L_1L_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_AC_L_5L_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f�)', [3, inf]);
semilogx(spice(1,:), spice(2,:))

grid minor
legend('1H', '5H', '1L', '5L')
title('AC (Driver L)')

%% Tran (Driver H)
figure(3)
fileID = fopen('ibm_topology_1_TRAN_H_1H_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('ibm_topology_1_TRAN_H_5H_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_H_1L_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_H_5L_H.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
legend('1H', '5H', '1L', '5L')
title('Tran (Driver H)')

%% Tran (Driver L)
figure(4)
fileID = fopen('ibm_topology_1_TRAN_L_1H_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('ibm_topology_1_TRAN_L_5H_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_L_1L_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_L_5L_L.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
legend('1H', '5H', '1L', '5L')
title('Tran (Driver L)')

%% Tran (Long pulse)
figure(5)
fileID = fopen('ibm_topology_1_TRAN_H_1H_H_2.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

fileID = fopen('ibm_topology_1_TRAN_H_5H_H_2.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_L_1L_L_2.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

fileID = fopen('ibm_topology_1_TRAN_L_5L_L_2.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

grid minor
legend('1H', '5H', '1L', '5L')
title('Tran (Long pulse)')