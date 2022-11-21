close all;
clear all;
clc;

pkg load image;

# Lines of code for number 1
original_fruit = imread('C:\Users\jonso\Downloads\Lab 1\fruits.png'); # To open the image
figure(1), imshow(original_fruit); # To view the image
imfinfo 'fruits.png' # To show the data type

# Lines of code for number 2
reduced_reso = imresize(original_fruit, 0.5); # To reduce the resolution
imwrite(reduced_reso, 'C:\Users\jonso\Downloads\Lab 1\fruits2.png'); # To save
whos reduced_reso; # To confirm that the size is reduced
figure(2), imshow(reduced_reso); # To view the image

# Lines of code for number 3
converted_to_hsv = rgb2hsv(reduced_reso); # To convert rgb to hsv
imwrite(converted_to_hsv, 'C:\Users\jonso\Downloads\Lab 1\fruits3.png'); # To save
figure(3), imshow(converted_to_hsv); # To view the image

