%In this file we are going to generate a variable in the workspace, edit it
%in the variables tab, save to a .mat file, clear our workspace, and reload
%the data back into our workspace to use again.

%(Also covering 'clear all', and running sections of code in a file in matlab
%%
%MATLAB Workspace is where all of your variables are stored. 
%You can view them, edit, and save them as a .mat file and reload them.
important_data = round(rand(1,3)*100);

%% 
disp(important_data)

%% 
%You can reload data from a .mat file into your workspace to use variables
%across files if you wanted
disp(important_data)