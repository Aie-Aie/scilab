disp("Array of a")
a=[1, 2, 3;
   4, 5, 6;
   7, 8, 9];
disp(a)

disp("Array of z")
z=a^2

disp(z)


disp("Array of az in column")
azc=[a;z]
disp(azc)



disp("Array of az in column")
azr=[a,z]
disp(azr)


disp("Array of az with 2 rows")
az1=[a; z(1:2,1:3)]
disp(az1)

disp("Array of az with rows and columns")
az2=[a(1:2,1:2), z(1:2,[1,3])]
disp(az2)

for r=1:column
    for j=1:(column*column)
        mymatrix2(j)= mymatrix2(j)*(-1)^(r+c)
       
        
    end,
    disp(mymatrix2)
    c=c+1
end
if column<=col1 then
            //mymatrix4=[mymatrix4; mymatrix3]
            mymatrix2(row1, col1)=my
           
        else
            
        end,
         disp(mymatrix3)
