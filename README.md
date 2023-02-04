# GetandCleanData2

---
title: "CodeBook.md"
author: "BS"
date: "2023-01-31"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Getting and Cleaning Data Project CodeBook  



This code book describes the variables used in this project analyzing the movement
of the human body as measured by wearable devices.  This data describes the total
and calculated acceleration of a person in 3 axes as well as the angular 
velocity of that person in 3 axes.  Data from 30 people is included, who are
performing 7 activities.  

These data were obtained from the "Human Activity Recognition Using Smartphones
Data Set" and downloaded from the coursera website.  Download specifics are 
included in the script.  

Data was obtained, then the means and standard deviations of the 128 readings
for each subject doing each activity were calculated and summarized.  
Information regarding which subject and which activity was added to the table.  
This was performed for the "test" and "train" sets separately, then these were 
combined.  

A summary table containing the mean value in each parameter for each subject 
was then constructed.  

Variables:  
subjects: subject number, 1-30  

activity: activity performed by the subject when measurement was taken
  Options: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,
  LAYING  
  
body acceleration x axis mean: The average of 128 measurements taken in the x axis; measurements
  calculated subtracting the gravity from total acceleration, in standard gravity
  units 'g'  
  
body acceleration y axis mean: The average of 128 measurements taken in the y axis; measurements
  calculated subtracting the gravity from total acceleration, in standard gravity
  units 'g' 
  
body acceleration z axis mean: The average of 128 measurements taken in the z axis; measurements
  calculated subtracting the gravity from total acceleration, in standard gravity
  units 'g'  
  
body acceleration x axis SD: The standard deviation of 128 measurements taken in the x axis;      measurements calculated by subtracting the gravity from total acceleration, in standard         gravity units 'g'  

body acceleration y axis SD: The standard deviation of 128 measurements taken in the y axis;      measurements calculated by subtracting the gravity from total acceleration, in standard         gravity units 'g'  

body acceleration z axis SD: The standard deviation of 128 measurements taken in the z axis; measurements calculated by subtracting the gravity from total acceleration, in standard         gravity units 'g'  

angular velocity x axis mean: the average of 128 angular velocity measurements, as measured by the gyroscope along the x axis, in radians per second  

angular velocity x axis SD: the standard deviation of 128 angular velocity measurements, as measured by the gyroscope along the x axis, in radians per second  

angular velocity y axis mean: the average of 128 angular velocity measurements, as measured by the gyroscope along the y axis, in radians per second  

angular velocity y axis SD: the standard deviation of 128 angular velocity measurements, as measured by the gyroscope along the y axis, in radians per second  

angular velocity z axis mean: the average of 128 angular velocity measurements, as measured by the gyroscope along the z axis, in radians per second  

angular velocity z axis SD: the standard deviation of 128 angular velocity measurements, as measured by the gyroscope along the z axis, in radians per second  

total acceleration x axis mean: The average of 128 measurements taken in the x axis; measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

total acceleration y axis mean: The average of 128 measurements taken in the y axis; measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

total acceleration z axis mean: The average of 128 measurements taken in the z axis; measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

total acceleration x axis SD: The standard deviation of 128 measurements taken in the x axis, measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

total acceleration y axis SD: The standard deviation of 128 measurements taken in the y axis; measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

total acceleration z axis SD: The standard deviation of 128 measurements taken in the z axis; measurements represent the acceleration from the accelerometer, in standard gravity units 'g'  

mean_body_x: average measurement in the x axis of "body acceleration x axis mean" for each subject  

mean_body_y: average measurement in the y axis of "body acceleration y axis mean" for each subject  

mean_body_z: average measurement in the z axis of "body acceleration z axis mean" for each subject  

mean_angular_vel_x: average measurement in the x axis of "angular velocity x axis mean" for each subject  

mean_angular_vel_y: average measurement in the y axis of "angular velocity x axis mean" for each subject  
mean_angular_vel_z: average measurement in the z axis of "angular velocity x axis mean" for each subject  
mean_total_acc_x: average measurement in the x axis of "total acceleration x axis mean" for each subject  
mean_total_acc_y: average measurement in the y axis of "total acceleration x axis mean" for each subject  
mean_total_acc_z: average measurement in the z axis of "total acceleration x axis mean" for each subject  



```

```

## 
