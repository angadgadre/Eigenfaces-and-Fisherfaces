function [data,top_V,psi] = eigface(input_data,n_input, new_dim)

% clearvars psi psi_mat phi sigma top_V

% fprintf('size of input %f %f\n',size(input_data,1),size(input_data,2));

psi = mean(input_data);
% fprintf('size of psi %f %f\n',size(psi,1),size(psi,2));

psi_mat = repmat(psi,n_input,1);
% fprintf('size of psimat %f %f\n',size(psi_mat,1),size(psi_mat,2));
phi = bsxfun(@minus,input_data,psi_mat);

%Calculate the scatter matrix (covariance matrix)
sigma = phi' * phi;
% fprintf('size of sigma %f %f\n',size(sigma,1),size(sigma,2));
% sigma = cov(phi);

%Compute the eigenvectors for d' (=1) largest eigenvalue of S
% clearvars V D;
[top_V,~] = eigs(sigma,new_dim); %D is eigenvalues and V is eigenvectors
% top_V = V(:,1:new_dim);

% %Compute new vector of d' dimensions
data = phi * top_V;
% fprintf('size of new data %f %f\n',size(data,1),size(data,2));


end

