%% Prob01

load fruitData

%% Prob 1-i High reolution data�� ������ ����

im_high = ifft2c(kdata_highres);

subplot(1,3,1); imshow(abs(im_high), [ ] ); title('i. High res');
 
%% Prob 1-ii Low reolution data�� ������ ����

im_low = ifft2c(kdata_lowres);

subplot(1,3,2); imshow(abs(im_low), [ ] ); title('ii. Low res'); 

%% Prob 1-iii Low reolution data�� k-space zero-padding�Ͽ� ������ ����

kzpad = zeros(320,320);  %zero-padding �ϱ� ���� zero matrix ����

kzpad(320/2 - 120/2+1: 320/2+120/2, 320/2 - 120/2+1: 320/2+120/2) = kdata_lowres;  % low resolution data zero-padding

im_low_zpad = ifft2c(kzpad);

subplot(1,3,3); imshow(abs(im_low_zpad), []); title('iii. Low res zero-padding'); 
