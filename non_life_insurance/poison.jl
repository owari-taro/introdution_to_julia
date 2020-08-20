using Distributions


#probability function
poisson(λ,k)=exp(-λ)*(λ^k)/factorial(k)
sum=0
for i in 1:100
    tmp=poisson(1,i-1)
    sum+=tmp
    println(sum)
end