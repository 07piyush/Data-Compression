%% ============= K-Means Clustering on Pixels ===============


fprintf('\nRunning K-Means clustering on pixels from an image.\n\n');

%  Load an image, supply the path
A = double(imread('sample_image2.jpg'));
A = A / 255; % Divide by 255 so that all values are in the range 0 - 1

% Size of the image
img_size = size(A);

X = reshape(A, img_size(1) * img_size(2), 3);

K = 10; 
max_iters = 3;
%initialize the centroids randomly. 
initial_centroids = kMeansInitCentroids(X, K);

% Run K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

fprintf('Program paused. Press enter to continue.\n');
pause;


% =================Image Compression ======================

fprintf('\nApplying K-Means to compress an image.\n\n');

% Find closest cluster members
idx = findClosestCentroids(X, centroids);

% now we have represented the image X as in terms of the
% indices in idx. 

% now recover the image from the indices (idx) by mapping each pixel
% (specified by its index in idx) to the centroid value
X_recovered = centroids(idx,:);

% Reshape the recovered image into proper dimensions
X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);

% Display the original image 
subplot(1, 2, 1);
imagesc(A); 
title('Original');

% Display compressed image side by side
subplot(1, 2, 2);
imagesc(X_recovered)
title(sprintf('Compressed, with %d colors.', K));

imwrite(X_recovered, colormap, 'compressedImg.png');
fprintf('Program paused. Press enter to continue.\n');
pause;
