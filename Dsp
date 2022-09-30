# digital-signal-processing-
clear;
clc;
n = 0:%pi/150:2*%pi;
x = sin(%pi*n);   //original signal
upsampling_x = zeros(1,2*length(x)); //upsampled by a factor of 2
upsampling_x(1:2:2*length(x)) = x;
subplot(2,1,1)
plot(1:length(x),x);
xtitle('original signal')
subplot(2,1,2)
plot(1:length(upsampling_x),upsampling_x);
xtitle('Upsampled Signal by a factor of 2');
