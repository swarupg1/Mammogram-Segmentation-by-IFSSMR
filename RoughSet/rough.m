value=[1,1,1,1,0,0,0,0,1,1,0,1;0,0,0,0,0,0,0,0,0,0,0,0;1,0,1,0,0,0,0,0,0,1,0,0;0,0,0,1,1,1,1,0,1,0,1,1;1,0,0,1,1,1,1,1,0,1,1,0;0,1,0,1,1,1,1,1,1,0,0,1;1,0,0,0,1,1,1,0,0,1,1,1;1,1,1,1,0,0,0,0,1,1,0,1;1,0,1,1,1,0,0,0,1,1,0,1;1,1,1,1,0,0,0,0,1,1,0,1;1,0,1,1,1,0,0,0,1,1,0,1;1,0,1,1,1,0,0,0,1,1,0,1]; 
dec=[1,0,0,0,0,0,0,1,1,1,1,1]; 
funlen=0; 
[ulen,attrlen]=size(value); 
disfun=zeros(1,attrlen); 
upos=pos(value,ulen,dec); 
for i=1:ulen, 
  for j=1:i-1, 
    temp=discern(value,i,j,attrlen,upos,dec); 
    [disfun,funlen]=form(disfun,temp,funlen,attrlen); 
  end 
end 
[result,reslen]=todisjun(disfun,funlen,attrlen); 
[red,redlen]=reduct(result,reslen,attrlen); 
core=ones(1,attrlen); 
for i=1:redlen, 
  core=core&red(i,:); 
end