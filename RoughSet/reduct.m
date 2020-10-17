function [reduct,redlen]=reduct(result,reslen,attrlen) 
  i=1; 
  while i<=reslen, 
    j=i+1; 
    while j<=reslen, 
      include=compare(result(i,:),result(j,:),attrlen); 
      if include==1 
        result(i,:)=result(reslen,:); 
        reslen=reslen-1; 
        i=i-1; 
        break; 
      elseif include==-1 
        result(j,:)=result(reslen,:); 
        reslen=reslen-1; 
        j=j-1; 
      end 
    j=j+1; 
    end 
  i=i+1; 
  end 
  for i=1:reslen, 
    reduct(i,:)=result(i,:); 
  end 
  redlen=reslen;