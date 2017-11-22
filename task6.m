clear; close all;
load('task6.mat')

h1 = plot(Time,V1CH1, 'rx');
hold on
h2 = plot(Time,V2CH1, 'bo');
h3 = plot(Time,V3CH1, 'g*');

ax = gca;
ax.FontName = 'LaTeX';
ax.TickLabelInterpreter = 'LaTeX';
ax.FontSize = 18;
ax.XColor = 'k';
ax.YColor = 'k';

ax.YLabel.String = ('Output Voltage (V)');
ax.YLabel.FontSize = 16;
ax.YLabel.FontWeight = 'bold';
ax.YLabel.Color = 'k';

ax.XLabel.String = ('Time (s)');
ax.XLabel.FontSize = 16;
ax.XLabel.FontWeight = 'bold';
ax.XLabel.Color = 'k';
ax.XLim = [2 9];

ax.Box = 'off';
ax.LineWidth = 1.5;
ax.YGrid = 'on';
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';
legend( [h1 h2 h3], 'Critically Damped', 'Overdamped', 'Underdamped', 'Location', 'Best');
t = title('System Responses for Different Values of R_3 and R_4');
t.Color = 'k';
t.FontSize = 24;