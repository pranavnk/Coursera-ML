clear ; close all; clc
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
 iterations = 1500;
 alpha = 0.01; 

% J = (1 /(2*m)) * sum( (X * theta - y) .^ 2);
% 

% % temporarily store theta values while calculating
% temp_theta = zeros(2, 1);
% for iter = 1:iterations
%     % calculate for each theta
%     for j = 1:2
%         % The hypothesis function
%         h = theta(1) + X(:,2).*theta(2);
%         % New theta value
%         temp_theta(j) = theta(j) - alpha / m * sum((h-y) .* X(:,j));
%     end
%     theta = temp_theta;
% end
% data

% featureNormalize(data)
MultiX = [ones(m, 1), data];
n = size(MultiX, 2);
multiTheta = zeros(n, 1);
[multiTheta, J_history] = gradientDescentMulti(MultiX, y, multiTheta, alpha, iterations);

% print theta to screen
fprintf('Theta found by multivariate gradient descent:\n');
fprintf('%f\n', multiTheta);
fprintf('Cost at the end:\n');
fprintf('%f\n', J_history(1500));
