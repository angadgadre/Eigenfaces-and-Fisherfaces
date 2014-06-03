function [qracy_train, qracy_test] = knnPredict(train_data, ...
    train_label, test_data, test_label)

% knnPredict predicts the label of given data by using k-nearest neighbor
% classification algorithm

% Input:
% k: the parameter k of k-nearest neighbor algorithm
% data: matrix of data. Each row of this matrix represents the feature 
%       vector of a particular image

% Output:
% accuracy: a matrix of accuracy of the 2 data sets in argument

% Initializing variables ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% clearvars numTrain numTest predicted_label ptest_label class_p class_t...
%     N_t1 N_t2 N_v1 N_v2

% fprintf('\n size of sets in knn\n');

numTrain = size(train_data,1);
numTest = size(test_data,1);
numClass = 15;
class_p = zeros(numTrain,numClass);
class_t = zeros(numTest,numClass);

predicted_label = zeros(numTrain,numClass);
ptest_label = zeros(numTest,numClass);

% Calculating the k-nearest neighbors ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[~,J] = pdist2(train_data,train_data,'euclidean','smallest',2);
[~,Jt] = pdist2(test_data,test_data,'euclidean','smallest',2);

% index = ind(J, numTrain);
% end
% Finding the nearest classes (indices)~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% function [index] = ind(J, numTrain)
% sort_dist = sort(J);
% index = zeros(numTrain,1);
% for j = 1:numTrain
%     min_dist = sort_dist(1,j);
%     index(j) = find( J(j,:) == min_dist);
% end
% end
if numTrain == 45
    
    N_t1 = 0:3:numTrain-3;
    N_t2 = 4:3:numTrain+1;

    N_v1 = 0:8:numTest-8;
    N_v2 = 9:8:numTest+1;
end

if numTrain == 75
    N_t1 = 0:5:numTrain-5;
    N_t2 = 6:5:numTrain+1;

    N_v1 = 0:6:numTest-6;
    N_v2 = 7:6:numTest+1;
end

if numTrain == 105
    N_t1 = 0:7:numTrain-7;
    N_t2 = 8:7:numTrain+1;

    N_v1 = 0:4:numTest-4;
    N_v2 = 5:4:numTest+1;
end

for i = 1:numTrain
    
    for h = 1:15
        if J(2,i) < N_t2(h) && J(2,i) > N_t1(h)
            class_p(i,h) = class_p(i,h) + 1;
        end
%         elseif J(2,i) < N3_2(h) && J(2,i) > 3
%                 class_p(i,2) = class_p(i,2) + 1;
%         elseif J(2,i) < N3_2(h) && J(2,i) > 6
%                 class_p(i,3) = class_p(i,3) + 1;        
%         elseif J(2,i) < 13 && J(2,i) > 9
%                 class_p(i,4) = class_p(i,4) + 1;
%         elseif J(2,i) < 16 && J(2,i) > 12
%                 class_p(i,5) = class_p(i,5) + 1;
%         elseif J(2,i) < 19 && J(2,i) > 15
%                 class_p(i,6) = class_p(i,6) + 1;
%         elseif J(2,i) < 22 && J(2,i) > 18
%                 class_p(i,7) = class_p(i,7) + 1;
%         elseif J(2,i) < 25 && J(2,i) > 21
%                 class_p(i,8) = class_p(i,8) + 1;
%         elseif J(2,i) < 28 && J(2,i) > 24
%                 class_p(i,9) = class_p(i,9) + 1;
%         elseif J(2,i) < 31 && J(2,i) > 27
%                 class_p(i,10) = class_p(i,10) + 1;
%         elseif J(2,i) < 34 && J(2,i) > 30
%                 class_p(i,11) = class_p(i,11) + 1;
%         elseif J(2,i) < 37 && J(2,i) > 33
%                 class_p(i,12) = class_p(i,12) + 1;
%         elseif J(2,i) < 40 && J(2,i) > 36
%                 class_p(i,13) = class_p(i,13) + 1;
%         elseif J(2,i) < 43 && J(2,i) > 39
%                 class_p(i,14) = class_p(i,14) + 1;
%         elseif J(2,i) < 46 && J(2,i) > 42
%                 class_p(i,15) = class_p(i,15) + 1;
%         end
    end
end

for i = 1:numTest
    
    for h = 1:15
        if Jt(2,i) < N_v2(h) && Jt(2,i) > N_v1(h)
            class_t(i,h) = class_t(i,h) + 1;
        end

    end
end

% creating labels in the k-1 encoding

for i = 1:numTrain
    max_class = max(class_p(i,:));
    for j = 1:15
        if class_p(i,j) == max_class
            if j == 1
                predicted_label(i,:) = [1 zeros(1,14)];
            elseif j == 2
                predicted_label(i,:) = [zeros(1,1) 1 zeros(1,13)];
            elseif j ==3
                predicted_label(i,:) = [zeros(1,2) 1 zeros(1,12)];
            elseif j ==4
                predicted_label(i,:) = [zeros(1,3) 1 zeros(1,11)];
            elseif j ==5
                predicted_label(i,:) = [zeros(1,4) 1 zeros(1,10)];
            elseif j ==6
                predicted_label(i,:) = [zeros(1,5) 1 zeros(1,9)];
            elseif j ==7
                predicted_label(i,:) = [zeros(1,6) 1 zeros(1,8)];
            elseif j ==8
                predicted_label(i,:) = [zeros(1,7) 1 zeros(1,7)];
            elseif j ==9
                predicted_label(i,:) = [zeros(1,8) 1 zeros(1,6)];
            elseif j ==10
                predicted_label(i,:) = [zeros(1,9) 1 zeros(1,5)];
            elseif j ==11
                predicted_label(i,:) = [zeros(1,10) 1 zeros(1,4)];
            elseif j ==12
                predicted_label(i,:) = [zeros(1,11) 1 zeros(1,3)];
            elseif j ==13
                predicted_label(i,:) = [zeros(1,12) 1 zeros(1,2)];
            elseif j ==14
                predicted_label(i,:) = [zeros(1,13) 1 zeros(1,1)];
            else
                predicted_label(i,:) = [zeros(1,14) 1];
            end
        end
    end
end    

for i = 1:numTest
    max_class = max(class_t(i,:));
    for j = 1:15
        if class_t(i,j) == max_class
            if j == 1
                ptest_label(i,:) = [1 zeros(1,14)];
            elseif j == 2
                ptest_label(i,:) = [zeros(1,1) 1 zeros(1,13)];
            elseif j ==3
                ptest_label(i,:) = [zeros(1,2) 1 zeros(1,12)];
            elseif j ==4
                ptest_label(i,:) = [zeros(1,3) 1 zeros(1,11)];
            elseif j ==5
                ptest_label(i,:) = [zeros(1,4) 1 zeros(1,10)];
            elseif j ==6
                ptest_label(i,:) = [zeros(1,5) 1 zeros(1,9)];
            elseif j ==7
                ptest_label(i,:) = [zeros(1,6) 1 zeros(1,8)];
            elseif j ==8
                ptest_label(i,:) = [zeros(1,7) 1 zeros(1,7)];
            elseif j ==9
                ptest_label(i,:) = [zeros(1,8) 1 zeros(1,6)];
            elseif j ==10
                ptest_label(i,:) = [zeros(1,9) 1 zeros(1,5)];
            elseif j ==11
                ptest_label(i,:) = [zeros(1,10) 1 zeros(1,4)];
            elseif j ==12
                ptest_label(i,:) = [zeros(1,11) 1 zeros(1,3)];
            elseif j ==13
                ptest_label(i,:) = [zeros(1,12) 1 zeros(1,2)];
            elseif j ==14
                ptest_label(i,:) = [zeros(1,13) 1 zeros(1,1)];
            else
                ptest_label(i,:) = [zeros(1,14) 1];    
            end
        end
    end
end    

% fprintf('\n completed knn\n');

qracy_train = mean(double(predicted_label == train_label)) * 100;
qracy_test = mean(double(ptest_label == test_label)) * 100;

end

