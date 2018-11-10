function [ samples_train, lables_train, samples_test, lables_test ] = SeperateData( samples, lables, PRECENT_FOR_TRAIN )
%SEPERATEDATA Summary of this function goes here
%   Detailed explanation goes here
    [rand_indexes] = randperm(size(samples,1)); % c = 3
    ind70 = rand_indexes(1 : floor(PRECENT_FOR_TRAIN  * size(rand_indexes,2)));
    ind30 = rand_indexes(floor(PRECENT_FOR_TRAIN  * size(rand_indexes,2))+1:size(rand_indexes,2));

    
    
    samples_train = samples(ind70,:);
    samples_test = samples(ind30,:);
    lables_train = lables(ind70);
    lables_test = lables(ind30);
end

