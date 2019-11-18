%% N=8 basis functions
N=8;
WNN = zeros(N,N);
for k=1:N
    for n=1:N
        WNN(k,n) = exp(j * 2*pi * (n-1) * (k-1) /N);
    end
end
WNN_Real = real(WNN);
WNN_Imag = imag(WNN);

w = linspace(1,8,8);
    for n=1:N
        figure;
    plot(1:8,WNN_Real(k,n), 'o'); axis([0  8  -1  1]);
        xlabel('omega/pi'); ylabel('real');
    end
for n=1:N
        figure;
    plot(1:8,WNN_Imag(k,n), 'o'); axis([0  8  -1  1]);
        xlabel('omega/pi'); ylabel('imag');
end
    