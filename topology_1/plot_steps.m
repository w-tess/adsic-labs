clc
clear
format long e


fileID = fopen('test.txt','r');
steps = [];
fgetl(fileID);


steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))
hold on

steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))

steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
[spice] = fscanf(fileID, '%f %f', [2, inf]);
plot(spice(1,:), spice(2,:))


legend(steps{:,:})
