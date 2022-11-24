clc;
clf;
clear all;
close all;

# To open, read, and display image
original_image = imread('parrots.jpg');
figure(1), imshow(original_image);

# To find out the size of image
whos original_image;

# Letter c - To convert image to gray scale and display it in full intensity
gray_image = rgb2gray(original_image);
figure(2), imshow(gray_image, [0 255]);

# To convert true color image to gray scale and display it
gray2_image = rgb2gray(original_image);
figure(3), imshow(gray2_image);
