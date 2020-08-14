using InstantiateFromURL
github_project("QuantEcon/quantecon-notebooks-julia", version = "0.8.0")
randn()



Starting with the most direct version, and pretending we are in a world where randn can only return a single value

# poor style
n = 10
eps = zeros(n)
for i in 1:n
    eps[i] = randn()
end

print(eps)
print(typeof(eps))


# better style
n = 10
eps = zeros(n)
for i in eachindex(ϵ)
    eps[i] = randn()
end


for e in eps
    println(e)
end


# still poor style
function generatedata(n::Int)
    ϵ = randn(n) # use built in function

    for i in eachindex(ϵ)
        ϵ[i] = ϵ[i]^2 # squaring the result
    end

    return ϵ
end



# better style
function generatedata(n)
    ϵ = randn(n) # use built in function
    return ϵ.^2
 end
data = generatedata(5)


#simple function
f(x) = x^2



function fixedpointmap(f,iv,tolerance=1e-3,maxiter=1000)

    x_old=iv
    normdiff=inf
    iter=1
    while normdiff>tolerance && iter<=maxiter
        x_new=f(x_old)
        normdiff=norm(x_new-x_old)
        iter+=1
    end
    return (x_old,normdiff,iter)

iter=1


for i in [1,2,3]
    println(iter)
    iter+=1
end






using NLsolve




p = 1.0
β = 0.9
f(v) = p .+ β * v # broadcast the +
sol = fixedpoint(f, [0.8])

println("Fixed point = $(sol.zero), and |f(x) - x| = $(norm(f(sol.zero) - sol.zero)) in " *
        "$(sol.iterations) iterations")