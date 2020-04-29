
%% Setup the problem
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mandatory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% contopt_solver_fmincon (datatype binary) Set this to 1 if using fmincon
% of MATLAB to solve the inner optimization problem. Otherwise set this
% to 0 if using any other solver (If set to 0, set up the inner optimization
% problem in "ContinuousOptimization_userdef.m" file).

% infill_strategy (datatype integer) Use one of the following: 
% 1 - Expected Improvement (EI)
% 2 - Coordinate Perturbation (CP)

% num_infill_per_iter (datatype integer) Set the number of infill sampling
% points per AMIEGO iteration

% FileNam (datatype: string) Base name of the output files

% num_xI (datatype: integer) Total of variables in the outer optimization.
% These are typically the integer/discrete type variables of the original
% problem. But may have few continuous type variables, if needed.
% (Recommend passing all the continuous variables to the inner
% optimization).

% var_type (datatype: binary vector) The variable types of the outer
% optimization variables. Assign a value 0 if the variable is an
% integer/discrete type, otherwise assign a value 1. 

% xI_lb (datatype numeric vector) Lower bound of the outer optimization
% variables

% xI_ub (datatype numeric vector) Upper bound of the outer optimization
% variables

% ext_param: A structure that encapsulates all the parameters that are
% needed in the inner optimization. Some of the examples appear below

% num_con: Total number of variables in the inner optimization.
% xC_lb (datatype numeric vector) Lower bound of the inner optimization
% variables

% xC_ub (datatype numeric vector) Upper bound of the inner optimization
% variables

% xC0 (datatype numeric vector) Default starting values of the inner
% optimization variables. If set as empty AMIEGO will take the mid
% value of the upper and lower bounds
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Selection of AMIEGO parameters
contopt_solver_fmincon = 1;    % 1- fmincon, 0-User defined (Need to define the ContininuousOptimization_userdef.m file)
infill_strategy        = 1;    % 1- EI, 2-CP
num_infill_per_iter    = 1;

FileNam = 'TestProb_Branin';

% Outer optimization variables
num_xI   = 1;
var_type = zeros(num_xI,1);
xI_lb    = -5*ones(num_xI,1);
xI_ub    = 10*ones(num_xI,1);

% Inner optimization variables 
%(Following variables are needed if using fmincon of Matlab)
num_con = 1; 
ext_param.xC_lb   = 0*ones(num_con,1);
ext_param.xC_ub   = 15*ones(num_con,1);
ext_param.xC0     = [];
