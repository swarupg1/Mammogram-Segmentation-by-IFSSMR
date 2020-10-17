function upos=pos(u,ulen,dec) 
  upos=ones(1,ulen); 
  check=zeros(1,ulen); 
  for i=1:ulen, 
    if check(i)==1 
      break; 
    else 
      check(i)=1; 
      k=1; 
      temp(k)=i; 
      for j=i+1:ulen, 
        if u(i,:)==u(j,:) 
          check(j)=1; 
          k=k+1; 
          temp(k)=j; 
          upos(j)=upos(i); 
          if (dec(i)~=dec(j))&(upos(j)==1) 
            for l=1:k, 
              upos(temp(l))=0; 
            end 
          end 
        end 
      end 
    end 
  end