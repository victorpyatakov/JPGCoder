clear;
Image_color=imread('C:\Users\Виктор\Desktop\курсуои\lena.bmp');%источник цвета 
Image_ycbcr=rgb2ycbcr(Image_color);%черно-белое изображение для восстановления цвета
a=Image_ycbcr(:,:,1);
b=Image_ycbcr(:,:,2);
c=Image_ycbcr(:,:,3);
figure(1);
imshow(a);
figure(2);
imshow(b);
figure(3);
imshow(c);
figure(4);
imshow(Image_color);