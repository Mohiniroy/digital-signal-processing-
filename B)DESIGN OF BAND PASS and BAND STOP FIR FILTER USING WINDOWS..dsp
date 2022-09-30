# digital-signal-processing-
b) To design Bandstop FIR filter 
clc;
close;
wc=0.5*%pi;
N=13;
alpha=(N-1)/2;
app=0.000001;
n=0:1:N-1;
hbsf=(sin(%pi*(n-alpha+app))-sin(wc2*(n-alpha+app))+sin(wc1*(n-alpha+app)))./(%pi*(n-alpha+app));

//rectangular window
wr=1;
hn=hbsf.*wr
disp('h(n)for rectangular window',hn);

//Hanning window
n=0:1:N-1;
w=.5- (0.5*cos((2*n*%pi)./(N-1)));
disp('hanning window sequence',w);

hn1=hbsf.*w
disp('filter coefficients for hanning window - h(n)',hn1);

figure(1)
[hzm,fr]= frmag(hn,256) ;
subplot(2 ,1 ,1)
plot(2*fr, hzm)
xlabel( ' Normalized Digital Frequency w');
ylabel( 'Magnitude ');
title( ' Frequency Response of FIR BSF using Rectangular Window ')

hzm_dB = 20* log10 (hzm);
subplot (2 ,1 ,2);
plot(2*fr , hzm_dB);
xlabel( ' Normalized Digital Frequency W' );
ylabel( 'Magnitude in dB');

figure(2)
[hzm1,fr1]= frmag(hn1,256) ;
subplot(2 ,1 ,1)
plot(2*fr1, hzm1)
xlabel( ' Normalized Digital Frequency w');
ylabel( 'Magnitude ');
title( ' Frequency Response of FIR BSF using Hanning Window ')

hzm1_dB = 20* log10 (hzm1);
subplot (2 ,1 ,2);
plot(2*fr1 , hzm1_dB);
xlabel( ' Normalized Digital Frequency W' );
ylabel( 'Magnitude in dB');
title('Frequency Response of FIR BSF using Hanning Window');


