function ret = falsePosition (f,a,b)
  fa(1)=f(a(1));
  fb(1)=f(b(1));
  c=(a*fb(1)-b*fa(1))/(fb(1)-fa(1));
  fc(1)=f(c(1));
  
 if (fa(1)*fb(1)>=0)
   ret='The real root does not exit';
  return;
 endif;
 
 for i=2:50
   if fa(i-1)*fc(i-1)<0,
     a(i)=a(i-1);
     b(i)=c(i-1);
    else
     a(i)=c(i-1);
     b(i)=b(i-1);
    endif;
  
  fa(i)=f(a(i));
  fb(i)=f(b(i));
  c=(a*fb(i)-b*fa(i))/(fb(i)-fa(i));
  fc(i)=f(c(i));  
 
 if abs(fc(i))<0.0001
      break;
    endif
  endfor
  
  ret=[a' b' fa' fb' c' fc'];

endfunction
