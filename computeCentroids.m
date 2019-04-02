function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid.
%

[m n] = size(X);

centroids = zeros(K, n);

for i=1:K
Xdash = X(find(idx == i), :);
mean = (1/size(Xdash, 1)) * sum(Xdash);
centroids(i,:) = mean;
end

end

