%% Prob03

load fruitData

N = 192 / 0.6;
k = 1:1:N;
m1 = -26; %왼쪽 방향으로 shifting하므로 - 붙여줌
m2 = -26.5; %왼쪽 방향으로 shifting하므로 - 붙여줌

kdata_highres_sh1 = kdata_highres.*exp(-1i*2*pi*m1*k/N); % 26pixel 만큼 shifting
kdata_highres_sh2 = kdata_highres.*exp(-1i*2*pi*m2*k/N); % 26.5pixel 만큼 shifting

Im_high = ifft2c( kdata_highres );
Im_high_sh1 = ifft2c( kdata_highres_sh1 );
Im_high_sh2 = ifft2c( kdata_highres_sh2 );

figure;
subplot(1,3,1); imshow( abs(Im_high), [ ] ); title('Original Image');
subplot(1,3,2); imshow( abs(Im_high_sh1), [ ] ); title('26 Shifted Image');
subplot(1,3,3); imshow( abs(Im_high_sh2), [ ] ); title('26.5 Shifted Image');
