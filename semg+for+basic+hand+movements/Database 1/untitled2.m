files = {'female_1.mat','female_2.mat','female_3.mat'};

figure
hold on

for i = 1:length(files)

    load(files{i})

    avgHook = mean(hook_ch1,1);

    plot(t, avgHook,'LineWidth',1.5)

end

legend('Female 1','Female 2','Female 3')

xlabel('Time (s)')
ylabel('EMG Amplitude')
title('Hook Grip EMG Comparison')

grid on