

t=[0:100]
for i=1:10
    v=((2/%pi)-(4*cos(2*%pi*t/60)))/(%pi*i*(i+2))
    plot(v)
end
