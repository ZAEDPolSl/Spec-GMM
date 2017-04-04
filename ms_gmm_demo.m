% demo script for for illustration of the algorithm for Gaussian mixture
% decomposition of protein MS signals

addpath('ms_gmm')

%choose the file with dataset
load ms_data_1
% load ms_data_2

mz = mz(:);
mean_y = mean(y,2); % create mean spectrum

% initialization - remove baseline & trim above zero
YB = msbackadj(mz,mean_y);
ixg0 = find(YB>0);
y_b = YB(ixg0);
mz = mz(ixg0);

% main function for GMM decomposition of MS signal
[ww_gmm,mu_gmm,sig_gmm]=ms_gmm(mz,y_b);

% show results
figure(3)
plot_gmm(mz,y_b,ww_gmm,mu_gmm,sig_gmm);
title('MS signal (black), GMM model (red), components (green)')