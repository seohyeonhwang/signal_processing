%% Prob01

load fruitData

%% Prob 1-i High reolution data로 복원한 영상

im_high = ifft2c(kdata_highres);

subplot(1,3,1); imshow(abs(im_high), [ ] ); title('i. High res');
 
%% Prob 1-ii Low reolution data로 복원한 영상

im_low = ifft2c(kdata_lowres);

subplot(1,3,2); imshow(abs(im_low), [ ] ); title('ii. Low res'); 

%% Prob 1-iii Low reolution data를 k-space zero-padding하여 복원한 영상

kzpad = zeros(320,320);  %zero-padding 하기 위해 zero matrix 생성

kzpad(320/2 - 120/2+1: 320/2+120/2, 320/2 - 120/2+1: 320/2+120/2) = kdata_lowres;  % low resolution data zero-padding

im_low_zpad = ifft2c(kzpad);

subplot(1,3,3); imshow(abs(im_low_zpad), []); title('iii. Low res zero-padding'); 

