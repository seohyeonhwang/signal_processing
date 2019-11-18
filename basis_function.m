clear all

k13 = zeros(4,4);
k13(1,3) = 1;
b13 = 16*ifft2(fftshift(k13));
real_b13 = real(b13);
imag_b13 = imag(b13);
angle_b13 = angle(b13)/pi;

k22 = zeros(4,4); 
k22(2,2) = 1;
b22 = 16*ifft2(fftshift(k22));
real_b22 = real(b22);
imga_b22 = imag(b22);
angle_b22 = angle(b22)/pi;




