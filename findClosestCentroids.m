function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   this funtion returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m = size(X,1);

idx = zeros(size(X,1), 1);

distances=zeros(K,1);
for i=1:size(X, 1)
	for j=1:K
		%find distance of X.i from cluster centroid centroid.j
		distances(j,1) = sum( (centroids(j,:).- X(i,:)).^2 );
	end
	[val, idx(i,1)] = min(distances);
end

end

