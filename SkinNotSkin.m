clear all;
data = dlmread('Skin_NonSkin.txt');% read dataSet and lables from the disk
samples = data(:,1:3); %seperate samples
lables = data(:,4); %seperate lables
lables(lables > 1) = -1; 
C_vec = [2.^-3:2:15];

PRECENT_FOR_TRAIN = 0.70;
[ValiadationDataSet, ValiadationLablesSet, SamplesTest, LablesTest ] = SeperateData( samples, lables, PRECENT_FOR_TRAIN);

[W_optimal, errors_vec, error_min, C_optimal, Max_Norm, Min_Norm] = SamplesFix(ValiadationDataSet, ValiadationLablesSet, C_vec);

SamplesTestNormalized = NormTestSet(SamplesTest, Max_Norm, Min_Norm);

[num_of_errors_avg, num_of_errors] = errorCalcAvg(W_optimal,SamplesTestNormalized,LablesTest);


disp('num of errors is:');
disp(num_of_errors);

disp('The minimum error avarage is: ');
disp(num_of_errors_avg);






