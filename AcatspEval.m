function [sol]=AcatspEval(sol,distMatrix,numvars)
%������Ӧ��
%���룺sol -������
%���L���ø��弰����Ӧ��val
val=sum(diag(distMatrix(sol(1:numvars),[sol(2:numvars) sol(1)])));
sol(numvars+1)=val;