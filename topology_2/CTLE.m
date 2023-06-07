format long e
clear
close

fileID = fopen('./AC/ibm_topology_2_AC_original.txt','r');
fgetl(fileID);
[spice] = fscanf(fileID, '%f (%fdB,%f°)', [3, inf]);


A0 = 10^(-18/20);
wz =2*pi*4e9;
wz2 =2*pi*8e9;
wp1 =2*pi*15e9;
wp2 =2*pi*15e9;

tf = zeros(1,length(spice(1,:)));

for i=1:length(spice(1,:))
    s = 1i*2*pi*spice(1,i);
    %tf(i) = A0 * ( (1 + s/wz) / ( (1 + s/wp1) * (1 + s/wp2) ) );
    tf(i) = A0 * ( ((1 + s/wz) * (1 + s/wz2)) / ( (1 + s/wp1) * (1 + s/wp2) ) );
end

%figure(1)
semilogx(spice(1,:), spice(2,:))
hold on
grid minor
semilogx(spice(1,:), 20*log10(abs(tf)))
semilogx(spice(1,:), spice(2,:)+20*log10(abs(tf)))
xlim([2e7,40e9])
