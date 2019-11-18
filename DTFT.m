a=0.9;
omeg_dtft=0:0.01:2*pi;
dtft = 1./(1-a*exp(-j*omeg_dtft)); %DTFT

N=16;
dtft16 = (1-a^N*exp(-j*N*omeg_dtft))./(1-a*exp(-j*omeg_dtft)); % X convolves with W(i.e. distorted DTFT)

xn=zeros(1,N);
for nn=1:N
    xn(nn) = a^(nn-1);
end
dft= fft(xn); % 16 point DFT

omeg_dft = linspace(0, 2*pi, N+1);

figure;
plot(omeg_dtft/pi, abs(dtft), '-', omeg_dtft/pi, abs(dtft16),'-',omeg_dft/pi, abs(dft),'o'); axis([0  2  0  12]);
xlabel('omega (x/pi)');
legend('DTFT x(e^jw))', 'X(e^(jw)) (distorted DTFT)', '16-point DTF');