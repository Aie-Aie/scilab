n=['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O','U']
lenofn =(size(n))

for i=lenofn(1):lenofn(2)
    //printf("%s\n", n(i))
end

arrayofvowels=['A', 'E', 'I', 'O', 'U']

lenofarr=size(arrayofvowels)

for j=lenofarr(1):lenofarr(2)
      data=(ascii(arrayofvowels(j)))
      //disp(data)
end

a="HELLO WORLD"
txt=asciimat(a)
//disp(txt)


mymatrix=[2, 2, 0; -2, 3, 10; 2, -3, 0]
disp(mymatrix)
mymatrix2=[]

//step1 find matrix of minors
rowcolumn=size(mymatrix)
for i=1:rowcolumn(2)
    mymatrix2=[mymatrix2; mymatrix(i, 1:3)]
    
end
disp(mymatrix2)

if countconsonant>countvowels then
        gaprow=countconsonant-countvowels
        while gaprow>=1
           
            //mymatrix2=[mymatrix; zeros(1, countconsonant)]
            mymatrix2=[mymatrix; zeros(1, countconsonant)]
            gaprow=gaprow-1;
        end
    else
        aprow=countconsonant-countvowels
        while gaprow>=1
            disp(gaprow);
            gaprow=gaprow-1;
        end
    end,
