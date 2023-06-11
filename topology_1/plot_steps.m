clc
clear
format long e


fileID = fopen('test.txt','r');
steps = [];
fgetl(fileID);

line = fgetl(fileID);
n_steps = extractBetween(line, "/", ")");
n_steps = str2double(n_steps{1});
steps = [steps extractBetween(line, ": ", "  ")];
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
plot(spice(1,:), spice(2,:))
hold on

for i=1:(n_steps-1)
    steps = [steps extractBetween(fgetl(fileID), ": ","  ")];
    [spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);
    plot(spice(1,:), spice(2,:))
end

grid minor
legend(steps{:,:})
