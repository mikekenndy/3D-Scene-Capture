# 3D-Scene-Capture
Take two images and create a depth map

Camera calibration: 
Find focal length in units of pixels:

Place a rod of known length L (e.g. 300 mm) at a known distance Z (e.g. 2000mm) perpendicular to the 
optical axis of the camera. Find the length N of the image of the object in pixels. Compute the camera 
parameter focal length f expressed in units of the size of pixels using the perspective projection 
relation: N/f=L/Z. Print the value of f=NZ/L for your camera. (Note that, if your camera moves the 
lens for autofocusing, then this f will change with Z, but if the distance Z is 20 times or more than 
the focal length, then the change in f is negligible and can be approximated to be a constant. (If 
you are curious, verify this, and find f for different Z and create a table. Roughly, 1/F=1/f + 1/Z 
where F is the actual focal length of the lens of the camera).

Stereo Image Capture

Take Right and Left pictures of an indoor scene with the camera from two positions that are B meters 
apart (e.g. B=150 mm) corresponding to a parallel stereo camera configuration. Try to make sure that 
the shift of the Left camera position with respect to the Right camera position is parallel to the 
image rows (e.g. keep rows horizontal, columns vertical, and shift the camera horizontally with no 
rotation by a distance of baseline B. The epipolar lines should be nearly horizontal along rows). 
Convert the images to gray scale images of size 480 rows and 640 columns through simple averaging of R,G,B, 
channels and simple scaling. You can use matlab library or any other software to do this. Let the two 
images be R(i,j) and L(i,j). (If your computer is taking too long for computing the matches, then reduce 
the image size to 240 rows and 320 columns.) 

Stereo matching and 3D depth-map computation                                 

•	Divide the right image R(i,j) into 8x8 image tiles. For each 8x8 image tile in the right image, 
  find the matching image region of the same size in the same row of the left image L(i,j).
•	Use Sum-of-Squared-Differences (SSD) minimization method to match the stereo images as discussed in class. 
•	Compute and print the 3D coordinates (X,Y,Z) of each 8x8 image tile in the right image R(i,j) 
  (in mm rounded to the nearest mm).
