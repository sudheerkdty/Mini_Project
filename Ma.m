function [Match_per] = Ma(p,q)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%p = sprintf('enter the seq:');
if(length(p)==length(q))
seq1=St(p);
%seq1
%q= sprintf('enter the seq:');
seq2=St(q);
%seq2
else if(length(p)>length(q))
        for i=length(q)+1:+1:length(p)
            q(i)='-';
        end
        seq1=St(p);
        seq2=St(q);
    else 
         for i=length(p)+1:+1:length(q)
            p(i)='-';
         end
         seq1=St(p);
         seq2=St(q);
    end
end

xnor=~xor(seq1,seq2);
i=1;
j=1;
e=1;

 for i=1:+3:length(seq1)
    if ((xnor(i))==1&&(xnor(i+1))==1&&(xnor(i+2))==1)
        k=1;
         
    else
        k=0;
    end
        t=1;
      h(e)=k(t);
      
      e=e+1;
   
 end
% h
 b=length(seq1)/3;
 
 count=0;
 i=1;
 while(i<=b)
     if(h(i)==1)
         count=count+1;
         
     end
      i=i+1;
 end
% count
Match_per=count*100/b;
 end




