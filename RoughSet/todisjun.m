function [result,reslen]=todisjun(disfun,funlen,attrlen) 
  reslen=0; 
  for i=1:attrlen, 
    if disfun(1,i)==1 
      reslen=reslen+1; 
      result(reslen,:)=zeros(1,attrlen); 
      result(reslen,i)=1; 
    end 
  end 
  for i=2:funlen, 
    for j=1:reslen, 
      temp=result(j,:)&disfun(i,:); 
      if temp==zeros(1,attrlen) 
        for k=1:attrlen, 
          a=zeros(1,attrlen); 
          a(1,k)=1; 
          restemp=result(j,:); 
          if (a&disfun(i,:))==zeros(1,attrlen) 
          else 
              reslen=reslen+1; 
              result(reslen,:)=a|restemp; 
          end 
        end 
        result(j,:)=result(reslen,:); 
 	result(reslen,:)=[]; 
 	reslen=reslen-1; 
      end 
    end 
  end