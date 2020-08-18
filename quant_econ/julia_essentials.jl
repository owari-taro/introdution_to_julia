x=1.0
y=2.3

@show 2x - 3y

split("fee,fi,fo", ",")

#Tuples can be constructed with or without parentheses.see  example below

function f()
    return "foo", 1
end



d = Dict("name" => "Frodo", "age" => 33)
#An iterable is something you can put on the right hand side of for and loop over.
actions = ["surf", "ski"]
for action in actions
    println("Charlie doesn't $action")
end



d = Dict("name" => "Frodo", "age" => 33)
d = Dict("name" => "Frodo", "age" => 33)


countries = ("Japan", "Korea", "China")
cities = ("Tokyo", "Seoul", "Beijing")
for (country, city) in zip(countries, cities)
    println("The capital of $country is $city")
end


1 + 1E-8 ≈ 1
f(x) = sin(1 / x)



function chisq(k)
    @assert k > 0
    z = randn(k)
    return sum(z -> z^2, z)  
end



twice(f, x) = f(f(x))  # applies f to itself twice
f(x) = x^2
@show twice(f, 2.0)