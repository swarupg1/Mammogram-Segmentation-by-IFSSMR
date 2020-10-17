function distemp=discern(x,i,j,attrlen,upos,dec) 
  for k=1:attrlen, 
    if x(i,k)~=x(j,k) 
      if (upos(i)==0)&(upos(j)==0) 
        distemp(k)=0; 
      elseif (upos(i)==1)&(upos(j)==1)&(dec(i)==dec(j)) 
        distemp(k)=0; 
      else 
        distemp(k)=1; 
      end 
    else 
      distemp(k)=0; 
    end 
  end 
  if distemp==zeros(1,attrlen) 
    distemp=ones(1,attrlen); 
  end