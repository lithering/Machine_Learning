function visualizeFit(X, mu, sigma2)
%VISUALIZEFIT Visualize the dataset and its estimated distribution.
%   VISUALIZEFIT(X, p, mu, sigma2) This visualization shows you the 
%   probability density function of the Gaussian distribution. Each example
%   has a location (x1, x2) that depends on its feature values.
%

[X1,X2] = meshgrid(0:.5:35);  # 从0到35、以0.5为间隔，X1为行变化、X2为列变化
# [x,y]=meshgrid(1:n,1:m)生成网络采样点的数据，x，y的行数等于m，列数等于n。
# [A,B]=meshgrid(a,b)用于从数组a和b产生网格。生成的网格矩阵A和B大小是相同的。
Z = multivariateGaussian([X1(:) X2(:)],mu,sigma2);
Z = reshape(Z,size(X1));

plot(X(:, 1), X(:, 2),'bx');
hold on;
% Do not plot if there are infinities
if (sum(isinf(Z)) == 0) # 判断数组的元素是否是无界的（比如， 无穷大、无穷小）
    contour(X1, X2, Z, 10.^(-20:3:0)');
end
hold off;

end