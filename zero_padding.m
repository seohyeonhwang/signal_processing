clear all;

n20 = 0:19;
n40 = 0:39;
n60 = 0:59;
n120 = 0:119;

x20 = cos(0.24*pi*n20)+cos(0.3*pi*n20);
x40 = cos(0.24*pi*n40)+cos(0.3*pi*n40);
x60 = cos(0.24*pi*n60)+cos(0.3*pi*n60);
x120 = cos(0.24*pi*n120)+cos(0.3*pi*n120);

x20_z1024=zeros(1,1024); x20_z1024(1:20)=x20;
x40_z1024=zeros(1,1024); x40_z1024(1:40)=x40;
x60_z1024=zeros(1,1024); x60_z1024(1:60)=x60;
x120_z1024=zeros(1,1024); x120_z1024(1:120)=x120;

k20 = fftshift(fft(x20));
k40 = fftshift(fft(x40));
k60 = fftshift(fft(x60));
k120 = fftshift(fft(x120));

k20_z1024 = fftshift(fft(x20_z1024));
k40_z1024 = fftshift(fft(x40_z1024));
k60_z1024 = fftshift(fft(x60_z1024));
k120_z1024 = fftshift(fft(x120_z1024));

figure;
subplot(2,2,1); stem(abs(k20),'filled'); 
subplot(2,2,2); stem(abs(k40),'filled');
subplot(2,2,3); stem(abs(k60),'filled');
subplot(2,2,4); stem(abs(k120),'filled');

figure;
subplot(2,2,1); stem(abs(k20_z1024),'filled');
subplot(2,2,2); stem(abs(k40_z1024),'filled');
subplot(2,2,3); stem(abs(k60_z1024),'filled');
subplot(2,2,4); stem(abs(k120_z1024),'filled');