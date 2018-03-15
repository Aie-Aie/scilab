
clc; 

function [fval]=getfunctionval(x)
    fval=evstr(fstr)
    //fval=(cos(10*x*(%pi/180))+sin(27*(%pi/180)))
    
endfunction

function[midval]= getmidpoint(lowerx, upperx)
    midval=(upperx+lowerx)/2
endfunction

function[prodval]=getproductofinterval(xl, xu)
    funcprot(0);
    prodval=xl*xu
endfunction

function [pererror]=getpercenterror(newmid, oldmid)
    pererror=abs((newmid-oldmid)/newmid)*100
endfunction

product=1

fstr=input("enter a function of x:", "s")
while product>=0 do
        
    lowerx= input("Input lower interval: ")
    upperx= input("Input upper interval: ")
  //getvalue of function  
    xl=getfunctionval(lowerx)
    xu=getfunctionval(upperx)
  
  //get f(xl)*f(xu)
    product=getproductofinterval(xl, xu)

    
end




//get xroot  
//interval value: 10 to 20; 50 to 60; 80:90
pererror=100        //initialization for percent error 
iter=1
printf("Iter\t\tLower x\t\tUpper x\t\tRoot\t\tError\n")
mprintf("%d\t\t%f\t%f\t%f\n", iter, lowerx, upperx, getmidpoint(lowerx, upperx))

while pererror >0.001 do
    
  
    funcval=getfunctionval(getmidpoint(lowerx, upperx ))
    prodval =getproductofinterval(xl, funcval)
    iter=iter+1
    if prodval<0 then
        upperx=getmidpoint(lowerx, upperx )
    elseif prodval>0 then
        lowerx=getmidpoint(lowerx, upperx )
    else
        disp("Root is the midpoint")
    end
   
    pererror=getpercenterror(upperx, lowerx)
    mprintf("%d\t\t%f\t%f\t%f\t%f\n", iter, lowerx, upperx, getmidpoint(lowerx, upperx ), pererror)
   
end

printf("\nThe root is %f", getmidpoint(lowerx, upperx ))


