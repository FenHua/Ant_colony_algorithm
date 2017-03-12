function j=Select_for_aca(R0,Ak,i,Allow,A,B,Pheromone,Heuristic)
AllowCity=find(Allow(Ak,:)>0);
AllowCity=Allow(Ak,AllowCity);
Bpij=(Pheromone(i,AllowCity).^A).*(Heuristic(i,AllowCity).^B);
[Bjv Bj]=max(Bpij);
R=rand;
if(R0>R)
    j=AllowCity(Bj);
else
    Gpij=sum(Bpij);
    Pij=Bpij./Gpij;
    Pij=cumsum(Pij);%cumsum函数通常用于计算一个数组各行的累加值。
    Rd=rand;%赌轮选择
    [Anx Any]=size(AllowCity);
    for FitIn=1:Any
        if Rd<=Pij(FitIn)
            j=AllowCity(FitIn);
            break;
        end
    end
end