function include=compare(y,x,arrlen) 
	yx=0; 
	xy=0; 
	for i=1:arrlen, 
		if y(i)>=x(i) 
			yx=yx+1; 
		end 
		if x(i)>=y(i) 
			xy=xy+1; 
		end 
	end 
	if yx==arrlen 
		include=1; 
	elseif xy==arrlen 
		include=-1; 
	else 
		include=0; 
	end