function ret = newtonRapshon (f,fd,a,b)
  fa=f(a);
  fb=f(b);
  
  if((fa*fb)>0)
      ret = 'Real Root does not exits';
      return;
    end
   
   c(1)=(a+b)/2;
   
   for i=2:50
    c(i)=c(i-1)-(f(c(i-1))/fd(c(i-1)));
  
    if c(i)==c(i-1)
      break;
    end;
  endfor
  
ret=[c'];  
endfunction
