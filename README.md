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

## Verilog Module :

The logic behind the module an be easily understood by reading it . This module does the required function on a single pixel .
![image](https://user-images.githubusercontent.com/86561124/163806862-9bb2b03a-7f53-4799-b797-fbe8d6206f87.png)
![image](https://user-images.githubusercontent.com/86561124/163806870-16dc0089-bf3f-408e-8d1c-7ec970881c6c.png)

## Verilog testbench :

The code has been explained via comments , please refer to the verilog file attached in this repository .

![image](https://user-images.githubusercontent.com/86561124/163807296-d8856058-50c7-43e5-81aa-b88c1c349cd6.png)

![image](https://user-images.githubusercontent.com/86561124/163807388-58339c61-02fd-4746-b74c-5055cbed77b3.png)

![image](https://user-images.githubusercontent.com/86561124/163807400-2554191d-58a9-4a15-a2d1-0fa46042aac1.png)

![image](https://user-images.githubusercontent.com/86561124/163807407-e62b971a-05e6-4a61-b369-fa9ce57a179d.png)

![image](https://user-images.githubusercontent.com/86561124/163807418-17ac9483-7ef0-45d8-a8ec-44a5e8bc543b.png)

## Results :


