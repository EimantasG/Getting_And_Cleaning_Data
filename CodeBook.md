## Description of the data

### Initial data

The initial data is provided in Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL)
while carrying a waist-mounted smartphone with embedded inertial sensors. There are two sets of data separated into 'Training' and 'Test' data.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying various filters - eventually there are 561 features measured for each observation.
Also, there is one additional file for both Training/Test data sets containing activity IDs for each observation. These IDs (1-6) stands different activities:

- 1 - WALKING
- 2 - WALKING_UPSTAIRS
- 3 - WALKING_DOWNSTAIRS
- 4 - SITTING
- 5 - STANDING
- 6 - LAYING

One more additional file for both Training/Test data sets is given with the subject IDs (1-30) for each observation 
indicating which person has performed a specific activity.

All of the feature names contains patterns that could be described as follows:

- 't' denotes time
- 'f' denotes frequency domain signals obtained with the Fast Fourier Transform
- 'X'/'Y'/'Z' denote three different dimensions
- 'BodyAcc' stands for body acceleration signals
- 'GravityAcc' stands for gravity acceleration signals
- 'Gyro' stands for gyroscope signals
- 'Jerk' stands for derived Jerk signals
- 'Mag' stands for Euclidian norm magnitude of three dimensional signals

The initial data contains wide set of variables estimated from the signals described above.

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

References:

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


### Data transformations

1. Training and Test data sets are merged into single data set (10299 observations in total). Activity IDs are given in 'activity' column, subject IDs are supplied in column 'subject'.
2. Only mean (mean()) and standard deviation (std()) variables are extracted for each measurement.
3. 'activity' column is replaced from IDs to descriptive labels indicating the specific activity performed.
4. Ensured descriptive column names taking into account the description provided above in this CodeBook.
5. Second data set is derived from step 4 calculating the mean of each variable for each activity and each subject. 


