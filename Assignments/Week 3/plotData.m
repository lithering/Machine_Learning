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

adm = find(y==1);
rej=find(y==0);

plot(X(adm,1),X(adm,2),'g+','MarkerSize',6);
plot(X(rej,1),X(rej,2),'ro','MarkerFaceColor','y','MarkerSize',6);


% =========================================================================



hold off;

end
