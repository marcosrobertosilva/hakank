%
% All interval problem in MiniZinc.
% 
% Different approaches inspired by
% http://www.dis.uniroma1.it/~tmancini/index.php?currItem=research.publications.webappendices.csplib2x.problemDetails&problemid=007
%
% Also see
%   http://www.hakank.org/minizinc/all_interval1.mzn
%   http://www.hakank.org/minizinc/all_interval2.mzn
%   http://www.hakank.org/minizinc/all_interval3.mzn
%   http://www.hakank.org/minizinc/all_interval4.mzn
%   http://www.hakank.org/minizinc/all_interval5.mzn
%   http://www.hakank.org/minizinc/all_interval6.mzn
%

% 
% Model created by Hakan Kjellerstrand, hakank@bonetmail.com
% See also my MiniZinc page: http://www.hakank.org/minizinc


int: n= 12;
set of int: classes = 0..n-1;

% Search space: The set of permutations of integer range [0..n-1]
array[classes] of var classes: series;

solve :: int_search(series, first_fail, indomain_min, complete) satisfy;

constraint
   %  C1: Each pitch class occurs exactly once
   forall(i, j in classes where i != j) (
     series[i] != series[j]
   )
   /\
   % C2: Differences between neighbouring notes are all different
   forall(i,j in classes where j < n-1 /\ i < n-1 /\ i!=j) (
     abs(series[i+1] - series[i]) != abs(series[j+1] - series[j])
   )
   /\
   % SBSO: Symmetry-breaking by selective ordering
   % The first note is less than last one
   series[0] < series[n-1]
;


output
[ show(series)
];