function plotDataPoints(X, idx, K)
%PLOTDATAPOINTS plots data points in X, coloring them so that those with the same
%index assignments in idx have the same color
%   PLOTDATAPOINTS(X, idx, K) plots data points in X, coloring them so that those 
%   with the same index assignments in idx have the same color

% Create palette
palette = hsv(K + 1);
colors = palette(idx, :);

% Plot the data
scatter(X(:,1), X(:,2), 15, colors);    
# scatter(x,y,sz,c) 指定圆颜色。要以相同的颜色绘制所有圆圈，请将 c 指定为颜色名称或 RGB 三元数...
# 要使用不同的颜色，请将 c 指定为向量或由 RGB 三元数组成的三列矩阵。

end
