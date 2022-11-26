%% visualization part 2
% gcf, gca

%% gcf
close all

x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);

figure;
plot(x,y1,x,y2);
title('My Title');
xlabel('x');
ylabel('y');
legend({'sin', 'cos'});

% fig = gcf returns the current figure handle
gcf
gcf_pos = get(gcf, 'Position')
gcf_pos = [1522 629 411 356];
set(gcf, 'Position', gcf_pos, 'color', 'w')

%% gca
clf

x = linspace(0,10);
y = sin(4*x);
plot(x,y);
xlabel('x');
ylabel('y');

ax = gca % current axes
ax.FontSize = 20;
ax.TickDir = 'out';
ax.TickLength = [0.02 0.02];
ax.YLim = [-2 2];
ax.XLim = [0 5];

set(gca, 'xlim', [0 8], 'ylim', [-3 3], 'TickDir', 'in')

close all