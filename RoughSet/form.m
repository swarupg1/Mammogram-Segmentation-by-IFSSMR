function [disfun,funlen]=form(disfun,temp,funlen,attrlen) 
  diffsum=0; 
  tindnum=0; 
  templen=funlen; 
  k=1; 
  while k<=funlen, 
    funtemp=disfun(k,:); 
    include=compare(funtemp,temp,attrlen); 
    if include==0 
      diffsum=diffsum+1; 
    elseif include==-1 
      break; 
    else 
      tindnum=tindnum+1; 
      if tindnum==1 
        disfun(k,:)=temp; 
      else 
        disfun(k,:)=disfun(funlen,:); 
        funlen=funlen-1; 
      end 
    end 
  k=k+1; 
  end 
  if diffsum==templen 
    funlen=funlen+1; 
    disfun(funlen,:)=temp; 
  end
