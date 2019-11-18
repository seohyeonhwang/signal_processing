clear all;
N = 8;

n8 = 0:7;

x8 = [ 0 1 2 3 2 1 0 0 ];
x_k8 = fftshift(fft(x8));

orig_y8 = [ 0 0 1 2 3 2 1 0 ];
y8 = circshift(x8,1);
y_k8 = fftshift(fft(y8));
result_y8 = ifft(y_k8);

figure;
subplot(2,2,1); stem(abs(x_k8), 'filled');
subplot(2,2,2); stem(abs(y_k8), 'filled');

subplot(2,2,3); stem(abs(result_y8), 'filled');
subplot(2,2,4); stem(abs(orig_y8), 'filled');
