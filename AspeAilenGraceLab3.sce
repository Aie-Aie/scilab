

function [fval]=getfunctionval(x)
    fval=x^6-x-1
    //fval=(cos(10*x*(%pi/180))+sin(27*(%pi/180)))
    
endfunction

function [fval1]= getfunctionval1(x)
   //s = %s; p5 = s^{6}-s-1
   //fval1= evstr(derivat(p5))
    fval1=6*x^5-1
endfunction


function [pererror]=getpercenterror(newmid, oldmid)
    pererror=abs((newmid-oldmid)/newmid)*100
endfunction


initialx = input("Value of x: ")
iter = input("Number of iteration :")
pererror=100
n=0
printf("Iter      Xi-1                Xi                     Error\n")

while iter >= 1
    fval =getfunctionval(initialx)
    fval1 =getfunctionval1(initialx)
    
    upperx = initialx -(fval/ fval1)
    
    pererror =getpercenterror(upperx, initialx)
    initialx=upperx
    
    n= n+1
    mprintf("%d        %f          %f                %f      \n",n, initialx, upperx, pererror)
    iter = iter -1
end

printf("\nThe root: %f", upperx)


