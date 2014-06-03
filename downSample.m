function [newTrain, newVal] = downSample(train_data,val_data, n_feature)

sigma = std(train_data);
newTrain_sample = [];
newVal_sample = [];

for i = 1 : n_feature
    if (sigma(i) > 0.1)
        newTrain_sample = [newTrain_sample train_data(:,i)];
        newVal_sample = [newVal_sample val_data(:,i)];
    end
end

new_feature = size(newTrain_sample,2);
% Downsampling the data again
newTrain = [];
newVal = [];

for i = 1:10:new_feature
    newTrain = [newTrain newTrain_sample(:,i)];
    newVal = [newVal newVal_sample(:,i)];
end
% train_down = newTrain(2:end,:);
% val_down = newVal(2:end,:);
% fprintf('\nsize of down sampled sets\n'); 
% size(newTrain)
% size(newVal)
end

