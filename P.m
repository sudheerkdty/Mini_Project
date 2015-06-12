function [Z] = P(m,g)
n=str2num(m);
Similarity=zeros(n,n);
 [st] = strsplit(g,{' ',},'CollapseDelimiters',true);
for i=1:+1:n
    % q=sprintf('enter the seq:');
%seq=input(q);
 trArray = java_array('java.lang.String', n);
  strArray(i) = java.lang.String(st(i));
 cellArray = cell(strArray);
end
 celldisp(cellArray)
for i=1:+1:n-1
   for j=i+1:+1:n     
       MatchValue=Ma(cellArray{i},cellArray{j});
       Similarity(i,j)=MatchValue;
   end
 
end
% Similarity
%l= zeros(n,n);

[M, Indices]= max(Similarity,[], 1);
MAX= max(M);
%MAX
%Similarity
[I,J] = ind2sub(size(Similarity),find(Similarity==MAX));
SeqDBI=cellArray{I(1)};
SeqDBJ=cellArray{J(1)};
% Similarity(I(1),J(1))=0
 [score, Allignment] =  nwalign(SeqDBI, SeqDBJ);
 Allignment
  m=Allignment(1:3*length(Allignment));
  j=1;
   for i=1:+3:length(m)
    f(j)=m(i);
    j=j+1;
    if(j==length(m)/3+3)
    break
    end
   end
%   f
   str = java_array('java.lang.String', n);
  str(1) = java.lang.String(f);
   j=1;
    for i=3:+3:length(m)
       G(j)=m(i);
    j=j+1;
    if(j==length(m)/3+3)
    break
    end 
    end
 %  g
    str(2) = java.lang.String(G);
    %cellArray{I}=[];
    %cellArray{J}=[];
    I
     cellArray(I(1),:)=[];
    J
     cellArray(J(1)-1,:)=[];
 %cellArray{I(1),J(1)}=0;
% celldisp(cellArray)
 %  Similarity(I,J)=0

  n=n-2;
  l=3;
  while(n~=1)
 %     n
 %     cellArray
      a=1;
 for i=1;+1;n;
     v(a)=Ma(cellArray{i},SeqDBI);
     w(a)=Ma(cellArray{i},SeqDBJ);
     a=a+1;
 end
  [M1, X]= max(v);
  % X1=find(cell2mat(cellArray)==max())
   [M2, Y]= max(w);
  % v
  % w
  % M1
  % M2
  % cellArray{X}
  % cellArray{Y}
 % X
 % SeqDBI
 % char(cellArray{X})
 % Y
 % SeqDBJ
 % char(cellArray{Y})
  
   t=1;
    if(M1>M2)
        [s,ka]= nwalign(SeqDBI,char(cellArray{X}));
            r=ka(1:3*length(ka));
            j=1;
             for i=3:+3:length(r)
                  h(j)=ka(i);
     
                    j=j+1;
                       if(j==length(r)/3+3)
                             break
                        end
             end
             h   
         str(l) = java.lang.String(h);
     
     %    cellArray{X}=[];
        cellArray(X,:)=[];
  %    Similarity(I(1),X)=0
    else
        [S,kb]= nwalign(SeqDBJ,char(cellArray{Y}));
        r=kb(1:3*length(kb));
        j=1;
         for i=3:+3:length(r)
            h(j)=kb(i);
     
            j=j+1;
    if(j==length(r)/3+3)
         break
    end
         end
           h   
        str(l) = java.lang.String(h);
         %  cellArray{Y}=[];
          cellArray(Y,:)=[];
   
    end
    n=n-1;
  %  if(n==1)
  %      break;
  %  end
    l=l+1;
  end
   
     v(1)=Ma(cellArray{1},SeqDBI);
     w(1)=Ma(cellArray{1},SeqDBJ);
     if(v(1)>w(1))
   [S1,kc]= nwalign(SeqDBI,char(cellArray{1}));
     r1=kc(1:3*length(kc));
        j=1;
         for i=3:+3:length(r1)
            h(j)=kc(i);
     
            j=j+1;
    if(j==length(r1)/3+3)
         break
    end
         end
            h
     else
          [S2,kd]= nwalign(SeqDBJ,char(cellArray{1}));
        r2=kd(1:3*length(kd));
        j=1;
         for i=3:+3:length(r2)
            h(j)=kd(i);
     
            j=j+1;
    if(j==length(r2)/3+3)
         break
    end
         end
           h   
     end
        str(l) = java.lang.String(h);
  Array =char( cell(str));
%  Arr =( cell(srg))
 Z= multialign(Array,'terminalGapAdjust',true);
 end


