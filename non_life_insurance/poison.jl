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

#simulate first occurence time of poisson process
function simulate_occurence_time(λ,Δt,n=1)
    count=0
    Δp=poisson(λ*Δt,1)
    occurence_time=0
    for i in 1:n
        while true
            count+=1
            if rand()<Δp
                occurence_time+=count*Δt
                count=0
                break
            end
        end
    end
    return occurence_time
end

