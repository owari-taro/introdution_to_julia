mutable struct Stack
    top::Integer
    array::Array{Any}
    length::Integer
end

function Stack(length::Integer)
    return Stack(1,[nothing for i in 1:length],length)
end


function stack_empty(stack::Stack)
    if stack.top==1
        return true
    end
    return false
end

function Base.push!(stack::Stack,x)
    if stack.top<=stack.length
        stack.array[stack.top]=x
        stack.top+=1    
        return 
    else 
        error("over flow")
    end
end

function Base.pop!(stack::Stack)
    if stack_empty(stack)
        error("empty stack")
    end
    res=stack.array[stack.top]
    stack.top-=1
    return res
end