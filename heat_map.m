% Creates a heatmap from files you create in make_files.m
% You should have 2 files, one .mat with your data and names. 
% Want to make this a loop in which you can create n amount of heatmaps instead of having to run it 
% in single moments.

clear;
close all
clc %% clear command window


save_folder = uigetdir('' , 'Select folder to save data'); % Selects save folder
cd(save_folder)

uiwait(msgbox('Select data for heat map','modal')); % Selects heat map data
file_nm = uigetfile();
load(file_nm)
table = struct2cell(imported_data);

uiwait(msgbox('Select file with data names for heat map','modal')); %Selects column names
column_names = uigetfile();
load(column_names)
names = struct2cell(imported_data);

axis = names{1,1};
xvalues = axis(1,2:width(axis));
yvalues = axis(2:height(axis),1);
table = table{1,1};

dlg_ans  = inputdlg({'What is your graph title?','What is your x-axis representing?', 'What is your y-axis representing?'});

map = heatmap(xvalues, yvalues, table);
map.Title = dlg_ans(1,1);
map.XLabel = dlg_ans(2,1);
map.YLabel = dlg_ans(3,1);
map.Colormap = winter; % https://www.mathworks.com/help/matlab/ref/colormap.html
