%% Prob02

load fruitData

kdata_highres_al = zeros(192/0.6, 192/(0.6*2));

for i = 1:192/(0.6*2)
    kdata_highres_al( :, i ) = kdata_highres( :, 2*i-1 );  %��ky�� 2 ��� �ø�
end

Im_high_al = ifft2c( kdata_highres_al );

figure;
imshow( abs(Im_high_al), [ ] );
title('Aliased Image');
