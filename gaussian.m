clear;close all;
a=3.5;sigma=1.5;
x=1:0.01:6;
figure(1)
y=(1/((sqrt(2*pi))*sigma))*exp(-((x-a).^2)/(2*sigma.^2));
plot(x,y,'r','LineWidth',1);
hold on;  % show the plot in the same figure
a=3.5;sigma=0.5;
x=1:0.01:6;
y=(1/((sqrt(2*pi))*sigma))*exp(-((x-a).^2)/(2*sigma.^2));
plot(x,y,'b','LineWidth',1);
ylabel('f(x)');
legend('sigma=1.5','sigma=0.5')
hold off;
grid on;  % show the grid line