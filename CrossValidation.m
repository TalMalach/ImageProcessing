function [ W, error_average ] = CrossValidation(samples, PRECENT_FOR_TRAINING, lables, C)


[ samples_train, lables_train, samples_test, lables_test ] = SeperateData( samples, lables, PRECENT_FOR_TRAINING );



%   samples training    |   lables training

%   samples test        |   lables test



    W = mySVM(samples_train, lables_train, C); % for training
    
    error_average = errorCalcAvg(W,samples_test,lables_test); % for testing
    

end

