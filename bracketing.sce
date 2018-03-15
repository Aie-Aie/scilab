clc;


// STEP 3 get the value of the function if variable x is given

function [fval] = getfunctionval(x)
    fval = evstr(fstr)
endfunction


function [xr] =bisection(xl,xu)
    xr=(xl+xu)/2
endfunction

// STEP 1 enter a function

fstr=input("enter a function of x:", "s")

// STEP 2 enter upper bound and lower bound

xl=input("enter lower interval xl: ")
xu=input("enter upper interval xu: ")

// input number of iterations

iter =input("Number of iterations: ")
n=0

mprintf("%s\t%s\t%s\t%s\t\t%s\t\t%s\t\t%s\n", "iter", "lowerval", "upperval", "root", "f(xl)", "f(xu)", "f(xr)")

while iter >= 1
    
    lowervalue = getfunctionval(xl)
    uppervalue = getfunctionval(xu)
    xr = bisection(xl, xu)
    rootvalue = getfunctionval(xr)
    
    n= n+1   
    mprintf("%d\t%d\t\t%d\t\t%f\t%f\t%f\t%f\n",n, xl, xu, xr, lowervalue, uppervalue, rootvalue)
    if (lowervalue * uppervalue)<0 then
        xu = xr
        xl = xl
        elseif (lowervalue * uppervalue)> 0 then
                xu =xu
                xl = xr
                
                break;

    end
    
    iter = iter -1
    
     
end


