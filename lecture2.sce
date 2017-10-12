//matrix of cofactors


column=4
row=4
mymatrix3=[]
mymatrix4=[]

mymatrix(1:column, 1:column)=1
mymatrix2=[1, 2, 4, 5;3, 4, 5, 5; 6,7, 8, 7; 1, 2, 3, 4]


disp(mymatrix2)

for row1=1:row
    for col1=1:column
       mymatrix2(row1, col1)=((-1)^(row1+col1))*mymatrix2(row1, col1)
      
    end,
    
end
disp(mymatrix2)


///////////////////////////////////////////////

for i=1:column
    
    z=(-1)^i
    //disp(z)
    
end

for i=1:column
    
    
   // disp(row)
    row=row+1
   
    
end
