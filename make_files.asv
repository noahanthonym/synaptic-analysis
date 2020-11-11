% use this script to make files for analysis. Before running this script,
% create an empty folder where the data will be saved. 

clear
close all
clc

folder = uigetdir('' , 'Select folder to save data');

array = inputdlg('Enter the number of arrays to import');

[import_file , import_path] = uigetfile('' , 'Select file to import data');

for stepper = 1:array;
    file_nm = inputdlg('Enter the file name you want to use for the data');
    imported_data = uiimport(import_file); 
    save(file_nm , 'imported_data');
end