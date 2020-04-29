
%% Additional AMIEGO settings
% (Takes the default values if left empty)

% AMIEGO run number. This is used as identifier in output files (Default: 1)
Run_no = []; 

% Convergence tolerance for expected improvement infill criteria (Default 0.1%)
ei_tol_per = []; 

% Maximum allowed function count (Default: 1e10)
max_FunCount = []; 

% Allowed number of inner optimization (Default: 20*number of
% variables of the outer optimization)
max_inner_contopt = []; 

% Maximum number of outer optimization (Default: 25)
iter_max = [];

% Starting number of initial data points (inner optimization) to be generated. These are the
% number of points needed to build the first surrogate before starting to
% locate the infill(s) (Default: 2*number of
% variables of the outer optimization + 1)
num_initial_points = [];
