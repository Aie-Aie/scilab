
//take input from user 
data= input("Input your name [LNAME  FNAME  MI] :", "s")
name=convstr(data, "u")
printf("\nName: %s\n", name)

//count number of vowels and consonants
asciiofname=asciimat(name)
lenofname= size(asciiofname)

a=ascii('A')
e=ascii('E')
i=ascii('I')
o=ascii('O')
u=ascii('U')
space =ascii(' ')
period=ascii('.')


countvowels=0
countconsonant=0
countextra=0

for j=lenofname(1):lenofname(2),
     if asciiofname(j)==a | (asciiofname(j)==e) | (asciiofname(j)==i)|(asciiofname(j)==o)|(asciiofname(j)==u) then
       countvowels=countvowels+1;
       
     elseif asciiofname(j)== space |(asciiofname(j)==period) then
        countextra=countextra+1;
     else
        countconsonant=countconsonant+1
     end,  
end

printf("Total vowels: %d\n", countvowels)
printf("Total consonant: %d\n", countconsonant)

//create matrix with random digit 6 to 300
mymatrix=ceil(grand(countvowels, countconsonant, 'unf', 6, 300))
//disp(mymatrix)



function []=callinverse(mymatrix)
    //to avoid warning message and protection mode
    funcprot(0)     
    disp(mymatrix)
    
    //cofactor 
    for row1=1:countvowels
        for col1=1:countconsonant
           mymatrix(row1, col1)=((-1)^(row1+col1))*mymatrix(row1, col1)
          
        end,
        
    end
    printf("Cofactor method")
    disp(mymatrix)
    
    q=[2, -2, 2; 2, 3, -3; 0, 10, 0];

    //adjugate matrix
    adjmatrix=q';

    determinant=det(mymatrix);
    invmatrix=(1/determinant)*adjmatrix;
    printf("Display the inverse matrix")
    disp(invmatrix);
    
endfunction


if countvowels == countconsonant then
    disp("Inverse matrix manipulation to be done")
    //matrix of minors
    callinverse(mymatrix)
else
    disp("The matrix has no inverse")
   
end

