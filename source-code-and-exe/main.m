% Jetplane
[im,map] = imread("HW1_test_image\Jetplane.bmp","bmp");
imrgb = ind2rgb(im,map);
imgray = rgb2gray(imrgb);
imgrayuint = uint8(imgray*255);

powim = gammaTrans(imgrayuint,2.5); % Call custom gamma function
histim = histogramTrans(imgrayuint);
lapim = laplacianTrans(imgrayuint);

figure(Name='Jetplane')
subplot(2,3,1), imshow(imgray), title('original');
subplot(2,3,2), histogram(imgrayuint,256,BinLimits=[0 255]), title('original histogram');
subplot(2,3,3), histogram(histim,256,BinLimits=[0 255]), title('transform histogram');
subplot(2,3,4), imshow(powim), title('power-law (gamma=2.5)');
subplot(2,3,5), imshow(histim), title('histogram equation');
subplot(2,3,6), imshow(lapim), title('Laplacian operator');

% Lake
[im,map] = imread("HW1_test_image\Lake.bmp","bmp");
imrgb = ind2rgb(im,map);
imgray = rgb2gray(imrgb);
imgrayuint = uint8(imgray*255);

powim = gammaTrans(imgrayuint,0.3);
histim = histogramTrans(imgrayuint);
lapim = laplacianTrans(imgrayuint);

figure(Name='Lake')
subplot(2,3,1), imshow(imgray), title('original');
subplot(2,3,2), histogram(imgrayuint,256,BinLimits=[0 255]), title('original histogram');
subplot(2,3,3), histogram(histim,256,BinLimits=[0 255]), title('transform histogram');
subplot(2,3,4), imshow(powim), title('power-law (gamma=0.3)');
subplot(2,3,5), imshow(histim), title('histogram equation');
subplot(2,3,6), imshow(lapim), title('Laplacian operator');

% Peppers
[im,map] = imread("HW1_test_image\Peppers.bmp","bmp");
imrgb = ind2rgb(im,map);
imgray = rgb2gray(imrgb);
imgrayuint = uint8(imgray*255);

powim = gammaTrans(imgrayuint,5);
histim = histogramTrans(imgrayuint);
lapim = laplacianTrans(imgrayuint);

figure(Name='Peppers')
subplot(2,3,1), imshow(imgray), title('original');
subplot(2,3,2), histogram(imgrayuint,256,BinLimits=[0 255]), title('original histogram');
subplot(2,3,3), histogram(histim,256,BinLimits=[0 255]), title('transform histogram');
subplot(2,3,4), imshow(powim), title('power-law (gamma=5)');
subplot(2,3,5), imshow(histim), title('histogram equation');
subplot(2,3,6), imshow(lapim), title('Laplacian operator');
