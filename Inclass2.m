%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2) == 1
        disp (num2str(ii))
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 
for ii = 1:2:19
    disp (num2str(ii))
end
% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

disp (num2str(1:2:19))

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 
ii = 1:100;
Z = ii.*ii;

for ii = 1:100
    z(ii) = ii*ii;
end

%b. 
Z = sum(1:100);

z = 0;
for ii = 1:100
    z = z + ii;
end

%c.

xx = rand(50,2);
XX = xx.^2;
Z = sqrt(sum(XX,2));


xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

% d. what is the formula in c computing?
% It's computing the length of hypotenuse given the lengths of the other
% two sides using pythagorean theorem.

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.
xval = linspace(0, 4*pi, 500);
yval1 = sin(xval);
yval2 = cos(xval);
figure(1)
plot(xval, yval1, 'r--', xval, yval2, 'b');



%b. repeat the above but where each graph is in a different subplot in the
% same figure. 
figure(2)
subplot(2,1,1)
plot(xval, yval1, 'r--')
subplot(2,1,2)
plot(xval, yval2, 'b')

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
figure(3)
xval3 = xy_dat(:,1);
yval3 = xy_dat(:,2);
plot(xval3, yval3);
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
scatter(xval3, yval3, 30, fluor);