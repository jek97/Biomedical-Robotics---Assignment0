% loading the data:
raw_data1 = load("data1.mat");
raw_data2 = load("data2.mat");
raw_data3 = load("data3.mat");

% adding the time column:
for i=1:size(raw_data1.data1,1)
    time1(i,1) = (1/2000)*i;
end
data1 = cat(2, time1, raw_data1.data1);

data3 = cat(2, raw_data2.data2(1,:)', raw_data2.data2(2,:)');

for i=1:size(raw_data3.data3,2)
    time3(i,1) = (1/250)*i;
end
data4 = cat(2, time3, raw_data3.data3');

% plotting the three signals:
subplot(1,3,1), plot(data1), title("EMG signal"), xlabel("time[s]"), ylabel("V");
subplot(1,3,2), plot(data3(:,1), data3(:,2)), title("movement data"), xlabel("x[cm]"), ylabel("y[cm]");
subplot(1,3,3), plot(data4), title("EEg signal"), xlabel("time[s]"), ylabel("V");




