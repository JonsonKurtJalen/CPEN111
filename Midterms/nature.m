clc;
clf;
clear all;
close all;

# To open and read the image
original_image = imread('nature.jpg');

# To display the original image
figure(1), imshow(original_image);

# To convert the image to gray scale and display it for comparison
gray_image = rgb2gray(original_image);
figure(2), imshow(gray_image);

# To show size difference after conversion
whos original_image;
whos gray_image;

# To intensify the color red
img_red = original_image;
img_red(:,:,2) = 0;
img_red(:,:,3) = 0;

# To intensify the color green
img_green = original_image;
img_green(:,:,1) = 0;
img_green(:,:,3) = 0;

# To intensify the color blue
img_blue = original_image;
img_blue(:,:,1) = 0;
img_blue(:,:,2) = 0;

# To display the images with intensified red, green, and blue
figure(3),
subplot(1,3,1), imshow(img_red), title('Intensified Red');
subplot(1,3,2), imshow(img_green), title('Intensified Green');
subplot(1,3,3), imshow(img_blue), title('Intensified Blue');

# To save images as png
imwrite(original_image,'nature.png');
imwrite(gray_image,'nature_grayscale.png');
imwrite(img_red,'nature_red.png');
imwrite(img_green,'nature_green.png');
imwrite(img_blue,'nature_blue.png');
