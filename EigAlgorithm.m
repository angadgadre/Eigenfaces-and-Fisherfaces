function [eig_train_dataN3d10, eig_test_dataN3d10, eig_train_dataN3d20, ...
    eig_test_dataN3d20, eig_train_dataN3d30,...
    eig_test_dataN3d30, eig_train_dataN5d10, ...
    eig_test_dataN5d10, eig_train_dataN5d20, eig_test_dataN5d20,...
    eig_train_dataN5d30, eig_test_dataN5d30, eig_train_dataN7d10,...
    eig_test_dataN7d10, eig_train_dataN7d20, eig_test_dataN7d20,...
    eig_train_dataN7d30, eig_test_dataN7d30] = ...
    EigAlgorithm(train_dataN3,validation_dataN3, train_dataN5,...
    train_dataN7, validation_dataN5, validation_dataN7)
%Eigenfaces algorithm
%   Implements the algo and outputs the computed mean faces through
%   analysing principle components.

% clearvars n_trainN3 n_valN3 n_trainN5 n_valN5 n_trainN7 n_valN7
% Get the number of training, validation and test examples

[~, n_featureN3] = size(validation_dataN3);
[~, n_featureN5] = size(validation_dataN5);
[~, n_featureN7] = size(validation_dataN7);

%Center the dataset, condense the data to d' dimensions

%Calculating sizes of sets to call 'eigface' function
n_trainN3= size(train_dataN3, 1);
n_valN3= size(validation_dataN3, 1);
% fprintf('sizes\n');
n_trainN5= size(train_dataN5, 1);
n_valN5= size(validation_dataN5, 1);
n_trainN7= size(train_dataN7, 1) ;
n_valN7= size(validation_dataN7, 1);

[new_train_dataN3_s2, new_validation_dataN3_s2] = downSample(...
    train_dataN3,validation_dataN3,n_featureN3);

% fprintf('new trn %f %f\n',size(new_train_dataN3_s2,1),...
%     size(new_train_dataN3_s2,2));
% fprintf('new val %f %f\n',size(new_validation_dataN3_s2,1),...
%     size(new_validation_dataN3_s2,2));

[eig_train_dataN3d10, eigvect_trainN3d10, psiN3] = ...
    eigface(new_train_dataN3_s2,n_trainN3, 10);

% fprintf('?puedo entrar?\n');

psiN3_val = repmat(psiN3,n_valN3,1);
eig_test_dataN3d10 = (bsxfun(@minus,new_validation_dataN3_s2,...
    psiN3_val)) * eigvect_trainN3d10;

% fprintf('por favor entrar?\n');
% took more than 50 mins, 1st attempt killed

% For d = 20

[eig_train_dataN3d20, eigvect_trainN3d20, psiN3] = ...
    eigface(new_train_dataN3_s2,n_trainN3, 20);

eig_test_dataN3d20 =(bsxfun(@minus,new_validation_dataN3_s2, psiN3_val))...
    * eigvect_trainN3d20;

% For d = 30

[eig_train_dataN3d30, eigvect_trainN3d30, psiN3] = ...
    eigface(new_train_dataN3_s2,n_trainN3, 30);

eig_test_dataN3d30 =(bsxfun(@minus,new_validation_dataN3_s2, psiN3_val))...
    * eigvect_trainN3d30;

% save masterData;
%For N = 5~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[new_train_dataN5_s2, new_validation_dataN5_s2] = downSample(...
    train_dataN5,validation_dataN5,n_featureN5);

% fprintf('\nsampled validation\n');
% size(new_validation_dataN5_s2)

[eig_train_dataN5d10, eigvect_trainN5d10, psiN5] = ...
    eigface(new_train_dataN5_s2,n_trainN5, 10);

% fprintf('?puedo entrar?\n');

psiN5_val = repmat(psiN5,n_valN5,1);

% fprintf('\nsize of psiN5_val:\n');
% size(psiN5_val)

eig_test_dataN5d10 =(bsxfun(@minus,new_validation_dataN5_s2, psiN5_val))...
    * eigvect_trainN5d10;


[eig_train_dataN5d20, eigvect_trainN5d20, psiN5] = ...
    eigface(new_train_dataN5_s2,n_trainN5, 20);

eig_test_dataN5d20 =(bsxfun(@minus,new_validation_dataN5_s2, psiN5_val))...
    * eigvect_trainN5d20;
 
[eig_train_dataN5d30, eigvect_trainN5d30, psiN5] = ...
    eigface(new_train_dataN5_s2,n_trainN5, 30);

eig_test_dataN5d30 =(bsxfun(@minus,new_validation_dataN5_s2, psiN5_val))...
    * eigvect_trainN5d30;

% save masterData;
% For N =7 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

[new_train_dataN7_s2, new_validation_dataN7_s2] = downSample(...
    train_dataN7,validation_dataN7,n_featureN7);

% fprintf('\nsampled validation\n');
% size(new_validation_dataN5_s2)

[eig_train_dataN7d10, eigvect_trainN7d10, psiN7] = ...
    eigface(new_train_dataN7_s2,n_trainN7, 10);

psiN7_val = repmat(psiN7,n_valN7,1);

% fprintf('\nsize of psiN7_val:\n');
% size(psiN7_val)

eig_test_dataN7d10 =(bsxfun(@minus,new_validation_dataN7_s2, psiN7_val))...
    * eigvect_trainN7d10;

[eig_train_dataN7d20, eigvect_trainN7d20, psiN7] = ...
    eigface(new_train_dataN7_s2,n_trainN7, 20);

eig_test_dataN7d20 =(bsxfun(@minus,new_validation_dataN7_s2, psiN7_val))...
    * eigvect_trainN7d20;

[eig_train_dataN7d30, eigvect_trainN7d30, psiN7] = ...
    eigface(new_train_dataN7_s2,n_trainN7, 30);

eig_test_dataN7d30 =(bsxfun(@minus,new_validation_dataN7_s2, psiN7_val))...
    * eigvect_trainN7d30;

% save masterData;

end

