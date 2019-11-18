function res = ifft1c(x)
%
%
% res = ifftc(x)
% 
% orthonormal centered 1D ifft
%
% (c) Michael Lustig 2005

res = sqrt(length(x(:)))*ifftshift(ifft(fftshift(x)));
