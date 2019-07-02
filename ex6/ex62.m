% Load from ex6data3: 
% You will have X, y in your environment
load('ex6data3.mat');

% Plot training data
plotData(X, y);

% Try different SVM Parameters here
[C, sigma] = dataset3Params(X, y, Xval, yval);
fprintf('C= %f sigma = %f', C, sigma);

% Train the SVM
model = svmTrain(X, y, C, @(x1, x2)gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);