Code Book for Run_Analysis.R
===============================

The original data set is the Human Activity Recognition Using Smartphones Dataset (Version 1.0) built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
It can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The output from Run_Analysis.R script contains the following variables:
- Subject: An integer identifying a single test subject. There are 30 subjects in total.
- Activity: A factor identify the type of activity the measurements were derived from. Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
- TimeBodyAccelerometer-Mean-X: mean linear acceleration of the body in the x coordinate
- TimeBodyAccelerometer-Mean-Y: mean linear acceleration of the body in the y coordinate
- TimeBodyAccelerometer-Mean-Z: mean linear acceleration of the body in the z coordinate
- TimeBodyAccelerometer-Standard Deviation-X: Standard Deviation of the linear acceleration on the body in the x coordinate
- TimeBodyAccelerometer-Standard Deviation-Y: Standard Deviation of the linear acceleration on the body in the y coordinate
- TimeBodyAccelerometer-Standard Deviation-Z: Standard Deviation of the linear acceleration on the body in the z coordinate
- TimeGravityAccelerometer-Mean-X: mean of the linear acceleration due to gravityin the x coordinat
- TimeGravityAccelerometer-Mean-Y: mean of the linear acceleration due to gravity in the y coordinate
- TimeGravityAccelerometer-Mean-Z: mean of the linear acceleration due to gravity in the z coordinate
- TimeGravityAccelerometer-Standard Deviation-X: standard deviation of the linear acceleration due to gravity in the x coordinate
- TimeGravityAccelerometer-Standard Deviation-Y: standard deviation of the linear acceleration due to gravity in the y coordinate
- TimeGravityAccelerometer-Standard Deviation-Z: standard deviation of the linear acceleration due to gravity in the z coordinate
- TimeBodyAccelerometerJerk-Mean-X: mean of the "jerk" linear acceleration on the body in the x coordinate
- TimeBodyAccelerometerJerk-Mean-Y: mean of the "jerk" linear acceleration on the body in the y coordinate
- TimeBodyAccelerometerJerk-Mean-Z: mean of the "jerk" linear acceleration on the body in the z coordinate
- TimeBodyAccelerometerJerk-Standard Deviation-X: standard deviation of the linear "jerk" acceleration on the body in the x coordinate
- TimeBodyAccelerometerJerk-Standard Deviation-Y: standard deviation of the linear "jerk" acceleration on the body in the y coordinate
- TimeBodyAccelerometerJerk-Standard Deviation-Z: standard deviation of the linear "jerk" acceleration on the body in the z coordinate
- TimeBodyGyrometer-Mean-X: mean of the rotational acceleration on the body in the x coordinate
- TimeBodyGyrometer-Mean-Y: mean of the rotational acceleration on the body in the y coordinate
- TimeBodyGyrometer-Mean-Z: mean of the rotational acceleration on the body in the z coordinate
- TimeBodyGyrometer-Standard Deviation-X: standard deviation of the rotational acceleration on the body in the x coordinate
- TimeBodyGyrometer-Standard Deviation-Y: standard deviation of the rotational acceleration on the body in the y coordinate
- TimeBodyGyrometer-Standard Deviation-Z: standard deviation of the rotational acceleration on the body in the z coordinate
- TimeBodyGyrometerJerk-Mean-X: mean of the rotational "jerk" acceleration on the body in the x coordinate
- TimeBodyGyrometerJerk-Mean-Y: mean of the rotational "jerk" acceleration on the body in the y coordinate
- TimeBodyGyrometerJerk-Mean-Z: mean of the rotational "jerk" acceleration on the body in the z coordinate
- TimeBodyGyrometerJerk-Standard Deviation-X: standard deviation of the rotational "jerk" acceleration on the body in the x coordinate
- TimeBodyGyrometerJerk-Standard Deviation-Y: standard deviation of the rotational "jerk" acceleration on the body in the y coordinate
- TimeBodyGyrometerJerk-Standard Deviation-Z: standard deviation of the rotational "jerk" acceleration on the body in the z coordinate
- TimeBodyAccelerometerMagnitude-Mean: mean of the magnitude of the linear acceleration of the body
- TimeBodyAccelerometerMagnitude-Standard Deviation: standard deviation of the magnitude of the linear acceleration of the body 
- TimeGravityAccelerometerMagnitude-Mean: mean magnitude of the rotational acceleration due to gravity
- TimeGravityAccelerometerMagnitude-Standard Deviation: standard deviation magnitude of the linear acceleration due to gravity
- TimeBodyAccelerometerJerkMagnitude-Mean: mean magnitude of the linear "jerk" acceleration 
- TimeBodyAccelerometerJerkMagnitude-Standard Deviation: standard deviation magnitude of the linear "jerk" acceleration 
- TimeBodyGyrometerMagnitude-Mean: mean magnitude of the rotational acceleration 
- TimeBodyGyrometerMagnitude-Standard Deviation: standard deviation magnitude of the rotational acceleration 
- TimeBodyGyrometerJerkMagnitude-Mean: mean magnitude of the rotational "jerk" acceleration  
- TimeBodyGyrometerJerkMagnitude-Standard Deviation: standard deviation magnitude of the rotational "jerk" acceleration 
- FrequencyBodyAccelerometer-Mean-X: mean of the fft of the linear acceleration on the body in the x coordinate
- FrequencyBodyAccelerometer-Mean-Y: mean of the fft of the linear acceleration on the body in the y coordinate
- FrequencyBodyAccelerometer-Mean-Z: mean of the fft of the linear acceleration on the body in the z coordinate
- FrequencyBodyAccelerometer-Standard Deviation-X: standard deviation of the fft of the linear acceleration on the body in the x coordinate
- FrequencyBodyAccelerometer-Standard Deviation-Y: standard deviation of the fft of the linear acceleration on the body in the y coordinate
- FrequencyBodyAccelerometer-Standard Deviation-Z: standard deviation of the fft of the linear acceleration on the body in the z coordinate
- FrequencyBodyAccelerometerJerk-Mean-X: standard deviation of the fft of the linear "jerk" acceleration on the body in the x coordinate
- FrequencyBodyAccelerometerJerk-Mean-Y: standard deviation of the fft of the linear "jerk" acceleration on the body in the y coordinate
- FrequencyBodyAccelerometerJerk-Mean-Z: standard deviation of the fft of the linear "jerk" acceleration on the body in the z coordinate
- FrequencyBodyAccelerometerJerk-Standard Deviation-X: mean of the fft of the linear "jerk" acceleration on the body in the x coordinate
- FrequencyBodyAccelerometerJerk-Standard Deviation-Y: mean of the fft of the linear "jerk" acceleration on the body in the y coordinate
- FrequencyBodyAccelerometerJerk-Standard Deviation-Z: mean of the fft of the linear "jerk" acceleration on the body in the z coordinate
- FrequencyBodyGyrometer-Mean-X: mean of the fft of the rotational acceleration on the body in the x coordinate
- FrequencyBodyGyrometer-Mean-Y: mean of the fft of the rotational acceleration on the body in the y coordinate
- FrequencyBodyGyrometer-Mean-Z: mean of the fft of the rotational acceleration on the body in the z coordinate
- FrequencyBodyGyrometer-Standard Deviation-X: standard deviation of the fft of the rotational acceleration on the body in the x coordinate
- FrequencyBodyGyrometer-Standard Deviation-Y: standard deviation of the fft of the rotational acceleration on the body in the y coordinate
- FrequencyBodyGyrometer-Standard Deviation-Z: standard deviation of the fft of the rotational acceleration on the body in the z coordinate
- FrequencyBodyAccelerometerMagnitude-Mean: mean of the fft of the rotational acceleration on the body
- FrequencyBodyAccelerometerMagnitude-Standard Deviation: mean of the fft of the rotational acceleration on the body
- FrequencyBodyAccelerometerJerkMagnitude-Mean: magnitude mean fft of the linear "jerk" acceleration on the body
- FrequencyBodyAccelerometerJerkMagnitude-Standard Deviation: magnitude standard deviation fft of the linear acceleration on the body
- FrequencyBodyGyrometerMagnitude-Mean: magnitude mean fft of the rotational acceleration on the body
- FrequencyBodyGyrometerMagnitude-Standard Deviation: magnitude standard deviation fft of the rotational acceleration on the body
- FrequencyBodyGyrometerJerkMagnitude-Mean: magnitude mean fft of the rotational "jerk" acceleration on the body
- FrequencyBodyGyrometerJerkMagnitude-Standard Deviation: magnitude standard deviation fft of the rotational "jerk" acceleration on the body
