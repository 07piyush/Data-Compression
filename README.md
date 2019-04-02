# Data-Compression

Input Requirement: an image of N X N size.

K-Means Clustering algorithm is an unsupervised learning algorith which automatically creates k clusters in the given data set.
Implemented this algorithm to cluster different color segments of an RBG image into k colors.

In this project, MATLAB programming language is used to implement the algorithm.
Following scripts are involved:
  1) Kmeans.m
     This is the Driver script which loads the provided image into language variable.
  2) kMeansInitCentroids.m
     This is a helper script, used to initialize the centroids which will further be improved.
  3) computerCentroids.m
     Returns the new centroids by computing the means of the data points assigned to each centroid.
  4) findClosestCentroids.m
     For each data point this script finds the closest centroid, and assign them to cluster of that centroid.
  5) runKmeans.m
     This script collectively uses helper funtions along with number of iterations to run, value of K taken as parameter and return new        centroids.
