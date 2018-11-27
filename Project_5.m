%Mike Kennedy
%108715992

%Include Left and Right image files
R = imread('Right_image_gray.jpg');
R = rgb2gray(R);    %Ensure grayscale image
L = imread('Left_image_gray.jpg');
L = rgb2gray(L);    %Ensure grayscale image
[M, N] = size(R);

%Set focal length and baseline values
f = 650;    %Pixels
b = 150;    %milimeters