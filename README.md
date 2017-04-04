# Spec-GMM

Matlab scripts and function for illustration of the algorithm for Gaussian mixture
decomposition of protein MS signals
Please cite:
Signal partitioning algorithm for highly efficient Gaussian mixture modeling in mass spectrometry 
by Andrzej Polanski, Michal Marczyk, Monika Pietrowska, Piotr Widlak and Joanna Polanska 
PLOS ONE 2015, 10(7): e0134256 

Computations are started by launching Matlab script
 
                ms_gmm_demo

One computational experiment includes illustrating modeling splitters (figure 1) and 
segments (figure 2) and the resulting whole spectrum model (figure 3).  

LIST OF FILES:

Matlab script file:
ms_gmm_demo: script file for demonstratig the algorithm for Gaussian mixture decomposition
             of MS signals by patitioning of spectral signal

Matlab function files:
ms_gmm: main function for GMM decomposition of MS signal
ms_gmm_params: set all paramters for ms_gmm
find_split_peaks: find splitting peaks
f_par_mcv: auxiliary function for find_split_peaks
find_split_segment: find splitter segment around a split peak
gmm_decomp_split_segment: gmm decomposition of splitter segment (dynamic programming initialization)
find_segment: find segment between two neighboring splitters
gmm_decomp_segment: gmm decomposition of a segment (dynamic programming initialization)
my_EM_iter: function for iterations of the EM algorithm
dyn_pr_split_w: dynamic programming algorithm for computing initial conditions for EM iterations
dyn_pr_split_w_aux: auxiliary function for dynamic programming - compute quality index matrix
my_qu_ix_w: auxiliary function - computing quality index for dynamic programming
qua_scal: compute quality indices and scale of gmm model of the segment or splitter segment
bindata: auxiliary function published in internet by Dr. Patrick Mineault
plot_gmm: plot MS signal and its GMM model
plot_res_new_scale: plot MS signal versus GMM model (used for for segments)
find_ranges: auxiliary function find reasonable ranges for a group of Gaussian components
fill_red: auxiliary function for filling splitter components in red
emcor: emergency correction function launched in the case of (rare) overlap between splitters

Data files:
ms_data_1
ms_data_2

USAGE:
Copy all files to one folder, launch: ms_gmm_demo

**Authors**:
[Andrzej Polanski][Michał Marczyk][Joanna Polanska; joanna.polanska@polsl.pl]

