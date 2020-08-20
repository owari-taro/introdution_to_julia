a=[1,2,3]
b=[2,3,4]
b.=a

c=[2,3]
#raise error due to size difference between two arrays
c.=a

using StaticArrays
xstatic = @SVector [1, 2]  # turns it into a highly optimized static vector



a=[1,2,3]
@show length(a)
@show max(a)
@show min(a)
@show extrema(a)



a=ones(2,2)
b=ones(2,2)
#matrix multipllication
@show a*b
#element wise multiplication
@show a .*b






a=[10,20,30]
b=[-100,0,100]

b.>a

@show b==a
@show b.==a


a[a .< 0]

t1=(a=1,b=1)
t2=(c=12,d=21)
#create new named tuple
t_new=merge(t1,t2)


#using Parameters



using Parameters

function f(parameters::NamedTuple)::Float64
    @unpack α, β = parameters  # good style, less sensitive to errors
    return α + β
end

params=(α=0.1,β=0.2)
f(params)




function f(x::Int)
    if x > 0.0
        return sqrt(x)
    else
        return nothing
    end
end
x1 = 1.0
x2 = -1.0
y1 = f(x1)
y2 = f(x2)

# check results with isnothing
if isnothing(y1)
    println("f($x2) successful")
else
    println("f($x2) failed");
end




function f(x)
    x > 0.0 ? sqrt(x) : nothing  # the "a ? b : c" pattern is the ternary
end

f(1.0)

#execise1

function compute_asymptotic_var(A, Σ;S0 = Σ * Σ',
    tolerance = 1e-6,
    maxiter = 500)
    V = Σ * Σ'
    S = S0
    err = tolerance + 1
    i = 1
    while err > tolerance && i ≤ maxiter
        next_S = A * S * A' + V
        err = norm(S - next_S)
        S = next_S
        i += 1
    end
    return S
end


function compute_asymptotic_variance(A,∑;S0=Σ * Σ',
    tolerance=1,max_iter=500)
    V=Σ * Σ'
     
    
    S=S0
    err=tolerance+1
    i=1
    while err>tolerance && i<=max_iter
        next_S=A*s*A'+V
        err=norm(S-next_S)
        S=next_S
        i+=1
    end
    return S
end



function simulate_time_series(params::NamedTuple;T::Int=150)
    @unpack γ,θ,σ=params
    y=zeros(T+1)
    #random number with normal distribution
    ω=rand(T)
    for i in 1:T
        y[i+1]=γ+θ*y[i]+σ*ω[i]

    end
    return y
end
params=(γ=0.3,θ=0.1,σ=0.4)
simulate_time_series(params)