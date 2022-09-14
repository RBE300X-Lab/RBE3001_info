%% 
tic
pause(1)
toc
%% 
a = tic;
pause(3)
b = tic;
%% 
toc(a)
toc(b)

%% 
%Best practice live data gathering

%Start your tic
tic

%Preallocate memory
data_arr = zeros(10000000,4);

%Crete
index = 0;
while(toc < 5)
    index = index+1;
    important_data = round(rand(1,3)*100);
    data_arr(index,:) = [important_data toc];
end

%%
%Can only grab the data we generated, and remove all the extra zeros
cleaned_data = data_arr(1:index,:);
%%
%We can plot this data from a variable as a line plot.

plot(linspace(7,12,200),cleaned_data(1:200,1))
title("My plot")
xlabel("Time on Tuesday Night")
ylabel("# of students in line to ask SAs questions")
%It is important to note that I can save and edit this figure later. 
%%
hist(cleaned_data(:,1:3))

%%
scatter(cleaned_data(1:200,2),cleaned_data(1:200,1))
%%
hold on
plot(cleaned_data(1:200,1),'LineWidth',3)
plot(cleaned_data(1:200,2),'LineWidth',3)
plot(cleaned_data(1:200,3),'LineWidth',3)
hold off
%%
hold on
%Row, Column, #plot

subplot(3,1,1)
plot(cleaned_data(1:200,1),'LineWidth',3)
title("Subplots")
subplot(3,1,2)
plot(cleaned_data(1:200,2),'LineWidth',3)
subplot(3,1,3)
plot(cleaned_data(1:200,3),'LineWidth',3)

hold off
