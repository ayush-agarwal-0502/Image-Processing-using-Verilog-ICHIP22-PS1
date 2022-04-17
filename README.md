# Image-Processing-using-Verilog-ICHIP22-PS1
Image Processing using Verilog . My solution to PS1 of ICHIP-22 UDYAM 

## Introduction :

* Team name - ARcheus 
* Team members - Ayush Agarwal (me) , Raghavansh Singla 

This project was our submission for the event "I-CHIP" held in 2022 , Verilog and digital electronics event held under "UDYAM", the electronics department fest of IIT BHU . 
In this PS1 , we were required to read a grayscale image and perform image processing operations such as increasing brightness , decreasing brightness , inverting the image , thresholding the image etc . 

## PS1 question :

![image](https://user-images.githubusercontent.com/86561124/163714780-7be4caf1-1472-4e96-8d2c-682e774109db.png)
![image](https://user-images.githubusercontent.com/86561124/163714784-da23b99f-d625-49b3-a7a2-e6f473b2618d.png)
![image](https://user-images.githubusercontent.com/86561124/163714796-78a37504-6498-473c-9a67-bce0b29c2292.png)
![image](https://user-images.githubusercontent.com/86561124/163714804-cc33d8f2-90df-4d63-b9c0-c272df3f4896.png)

## Our solution :

Verilog files for the project have been uploaded in this repository . We have made a module "pixel operator" which takes in a pixel and performs the required operation on it as per the parameter and select line values given to the module . Then we converted the image into a 1D array with hex values using MATLAB, fed it into the verilog testbench , and in it , we fed each pixel one by one , performed the required operation on it, then stored the output pixel value in a 1D array , then outputted the array , and converted the array back to image using MATLAB . 
