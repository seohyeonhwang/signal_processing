%% Prob03

load fruitData

N = 192 / 0.6;
k = 1:1:N;
m1 = -26; %���� �������� shifting�ϹǷ� - �ٿ���
m2 = -26.5; %���� �������� shifting�ϹǷ� - �ٿ���

kdata_highres_sh1 = kdata_highres.*exp(-1i*2*pi*m1*k/N); % 26pixel ��ŭ shifting
kdata_highres_sh2 = kdata_highres.*exp(-1i*2*pi*m2*k/N); % 26.5pixel ��ŭ shifting

Im_high = ifft2c( kdata_highres );
Im_high_sh1 = ifft2c( kdata_highres_sh1 );
Im_high_sh2 = ifft2c( kdata_highres_sh2 );

figure;
subplot(1,3,1); imshow( abs(Im_high), [ ] ); title('Original Image');
subplot(1,3,2); imshow( abs(Im_high_sh1), [ ] ); title('26 Shifted Image');
subplot(1,3,3); imshow( abs(Im_high_sh2), [ ] ); title('26.5 Shifted Image');