function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%Initialize predictions vector for second layer

pred_a2 = zeros(size(Theta1, 1));

a1 = [ones(m, 1) X];

% calculate a2 vector

z2 = a1 * Theta1';

pred_a2 = sigmoid(z2);

a2 = [ones(size(pred_a2, 1), 1) pred_a2];

% calculate a3 vector

z3 = a2 * Theta2';

pred_a3 = sigmoid(z3);

% get index of max value in a row = prediction
[M, I] = max(pred_a3, [], 2);

p = I;

% =========================================================================


end
