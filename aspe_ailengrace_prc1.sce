//disp("Hello Philippines and Hello World!")
//printf("Hello world")

data="Aspe Ailen Grace T"

string(data)
disp(data)
x="b"
y="a"


//look for index of a character



//count number of vowels
count_A=strindex(data, 'A')
count1=size(count_A)
disp(count1)


count_a=strindex(data, 'a')
count2=size(count_a)
disp(count2)



count_e=strindex(data, 'e')
count3=size(count_e)
disp(count3)



count_i=strindex(data, 'i')
count4=size(count_i)
disp(count4)


count_o=strindex(data, 'o')
count5=size(count_o)
disp(count5)



count_u=strindex(data, 'u')
count6=size(count_u)
disp(count6)

totalvowel=count1(1,2)+count2(1,2)+ count3(1,2)+count4(1,2)+count5(1,2)+count6(2)
printf("Total count of vowels = %d\n", totalvowel)

//count number of consonants

count_space =strindex(data, ' ')
countspace= size(count_space)
//disp(countspace(2))
printf("Number of spaces = %d\n", countspace(2))

count_totaldata=length(data)
printf("Length of data = %d\n", count_totaldata)
//disp(count_totaldata)

sub=(countspace(2)+totalvowel)
//disp(sub)
printf("To be subtracted =%d\n", sub)

totalconsonant=(count_totaldata-sub)
//disp(totalconsonant)
printf("The total consonants = %d\n", totalconsonant)



//matrix
mymatrix=rand(totalvowel,totalconsonant)
disp(mymatrix)

