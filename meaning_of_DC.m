%% Prob04

load fruitData

ky = kdata_highres( : ,161 );  % ky axis (kx=0)
kx = kdata_highres( 161, : );  % kx axis (ky=0)

Im_ky=ifft1c(ky); %kx=0 inverse DFT
Im_kx=ifft1c(kx); %ky=0 inverse DFT

%basis function
ky_basis=zeros(320,320); 
ky_basis(:,161)=kdata_highres(:,161); %kx=0 해당 값들 제외하고 나머지는 0
Im_ky_basis=320*ifft2c(ky_basis); %ifft 이용시 matlab이 자동으로 1/N 까지 계산하므로 N을 곱해서 basis func만 뽑아냄

kx_basis=zeros(320,320);
kx_basis(161,:)=kdata_highres(161,:);
Im_kx_basis=320*ifft2c(kx_basis);

figure;
subplot(4,2,1);plot(abs(ky)); title('ky axis (freq domain)');
subplot(4,2,2);plot(abs(kx)); title('kx axis (freq domain)');
subplot(4,2,3); plot(abs(Im_ky)); title('ky axis (spatial domain)'); 
subplot(4,2,4); plot(abs(Im_kx)); title('kx axis (spatial domain)'); 
subplot(4,2,5); imshow(abs(Im_ky),[ ]); title('ky axis (image)'); 
subplot(4,2,6); imshow(abs(Im_kx),[ ]); title('kx axis (image)');
subplot(4,2,7); imshow(Im_ky_basis,[]); title('ky axis basis function')
subplot(4,2,8); imshow(Im_kx_basis,[]); title('kx axis basis function')
