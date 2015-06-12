function [h] = St(n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 
%p = sprintf('enter the seq:');
% n = input(p);
 
 l=length(n);
 [~, s] = strsplit(n,'.','DelimiterType', ...
           'RegularExpression','CollapseDelimiters',false);
        e=1;
     
     for i=1:+1:l
       m(i)=char(s(i));
     
      d=Bin(m(i));
       t=1;
     
       %d 
       
       h(e)=d(t);
       h(e+1)=d(t+1);
       h(e+2)=d(t+2);
       e=e+3;
          
     end
    
 %   while(e<3*l)
 %     w=sprintf('%d',h(e));
      
% end
    
  
 
end

