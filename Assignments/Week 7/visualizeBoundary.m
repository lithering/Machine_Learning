function visualizeBoundary(X, y, model, varargin)
%VISUALIZEBOUNDARY plots a non-linear decision boundary learned by the SVM
%   VISUALIZEBOUNDARYLINEAR(X, y, model) plots a non-linear decision 
%   boundary learned by the SVM and overlays the data on it

% Plot the training data on top of the boundary
plotData(X, y)

% Make classification predictions over a grid of values
x1plot = linspace(min(X(:,1)), max(X(:,1)), 100)';  # 取第1列里最小、最大
x2plot = linspace(min(X(:,2)), max(X(:,2)), 100)';  # 取第2列里最小、最大
# linspace(a1,a2，N)函数生成a1与a2之间等距的数组(等差数列间距)，确定N的方法是间距d=(a2-a1)/(N-1)

[X1, X2] = meshgrid(x1plot, x2plot);  # 生成每一行=x1plot（）的矩阵、以及每一列=x2plot的矩阵...
                                      # 维度均为 x1plot的维度行数，x2plot的维度列数

vals = zeros(size(X1));
for i = 1:size(X1, 2)
   this_X = [X1(:, i), X2(:, i)];
   vals(:, i) = svmPredict(model, this_X);
end

% Plot the SVM boundary
hold on
contour(X1, X2, vals, [0.5 0.5], 'b');
hold off;

end
