function res = fft1c(x)

% res = fftc(x)
% 
% orthonormal forward 1D FFT
%
% (c) Michael Lustig 2005

res = 1/sqrt(length(x(:)))*fftshift(fft(ifftshift(x)));