clear ; close all; clc

%% Setup the parameters you will use for this exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)



load('ex3data1.mat');
m = size(X, 1);

% Load the weights into variables Theta1 and Theta2
load('ex3weights.mat');

%% ================= Part 3: Implement Predict =================
%  After training the neural network, we would like to use it to predict
%  the labels. You will now implement the "predict" function to use the
%  neural network to predict the labels of the training set. This lets
%  you compute the training set accuracy.

pred = predict(Theta1, Theta2, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;

% pred_a2 = zeros(size(Theta1, 1));
% a1 = [ones(m, 1) X];
% z2 = a1 * Theta1';
% pred_a2 = sigmoid(z2);
% a2 = [ones(size(pred_a2, 1), 1) pred_a2];
% z3 = a2 * Theta2';
% pred_a3 = sigmoid(z3)