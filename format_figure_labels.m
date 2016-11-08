clear
% Set parameters
AxisFontSize = 21;
AxisLabelFontSize = 24;
AxisFontWeight = 'bold';
AxisLabelFontWeight = 'bold';
line_width = 5;
marker_size = 12;
MarkerType = 'x';

ax=gca; % load the axis data
% ax.FontSize = AxisFontSize; % set axis font size
% ax.FontWeight = AxisFontWeight;
% ax.XLabel.FontSize = AxisLabelFontSize;
% ax.XLabel.FontWeight = AxisLabelFontWeight;
% ax.YLabel.FontSize = AxisLabelFontSize;
% ax.XLabel.FontWeight = AxisLabelFontWeight;


x_label = get(get(gca, 'xlabel'), 'string'); % obtain xlabel
y_label = get(get(gca, 'ylabel'), 'string'); % obtain ylabel

% Create xlabel
xlabel(x_label,'FontSize',AxisLabelFontSize,'FontWeight',AxisLabelFontWeight);
% Create ylabel
ylabel(y_label,'FontSize',AxisLabelFontSize,'FontWeight',AxisLabelFontWeight);
% format axis tixk label
set(gca,'FontSize',AxisFontSize);
set(gca,'FontWeight',AxisFontWeight);

% set(set(gca, 'ylabel'), x_label); % obtain ylabel



Fig1Ax1 = get(1, 'Children'); % get label of the axis
set(Fig1Ax1, 'LineWidth', 1); % set thickness of graph box

% get(gco,'linewidth'); % get linewidth
set(gco, 'linewidth',line_width, 'MarkerSize', marker_size);
set(gco,'Marker',MarkerType); % set marker type

filename = get(gcf,'Filename'); % get the figure filename
S= filename;
S(find(S=='.',1,'last'):end) = [];
filename = S;
clear S

dlgTitle    = 'Save file?';
dlgQuestion = 'Do you wish to save the figure as an eps file?';
choice = questdlg(dlgQuestion,dlgTitle,'Yes','No', 'No');
if (strcmp(choice,'No'))
    break
end
% filename = [filename,'.eps'];
print(filename,'-depsc');
