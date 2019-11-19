function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

t1 = X(find(y==1),:);

plot(t1(:,1), t1(:,2), 'k+','LineWidth', 2, 'MarkerSize', 7);

t2 = X(find(y==0),:);

plot(t2(:,1), t2(:,2), 'ko','MarkerFaceColor', 'y', 'MarkerSize', 7);


%gscatter(X(:,1), X(:,2),y, 'yk', 'xo');







% =========================================================================



hold off;

end
