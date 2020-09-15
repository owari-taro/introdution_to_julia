using Distributions


#probability function
poisson(λ,k)=exp(-λ)*(λ^k)/factorial(k)
λ=1
Δt=0.001
Δp=poisson(λ*Δt,1)
array=[0]
count=0
for  i in 1:100_000_000
    if rand()<Δp
        #print(i,":",count)
        count+=1
        push!(array,count)
    end
end
print(array)