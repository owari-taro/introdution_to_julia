@enum Side Right Left 

mutable struct DoubleStack
    left_head::Integer
    right_head::Integer
    array::Array{Any}
    length::Integer
end


function DoubleStack(length::Integer)
    return DoubleStack(0,length+1,[nothing for i in 1:length],length)
end

function is_emtpy(double_stack::DoubleStack,side::Side)
    if side==Left && double_stack.left_head==0
        return true
    elseif side==Right && double_stack.right_head==(doble_stack.length+1)
        return true
    end
    return False
end

function is_full(double_stack::DoubleStack)
    if double_stack.right_head-double_stack.left_head==1
        return true
    end
    return false
end

function pop!(double_stack::DoubleStack,side::Side)
    if is_emtpy(double_stack,side)
        error("pop isnt available for emtpy stack")
    elseif side==Right
        out=double_stack.array[double_stack.right_head]
        stack.right_head+=1
        return out
    elseif side==Left
        out=double_stackarray[double_stack.left_head]
        stack.left_head-=1
        return out
    else
        error("")
    end
end




function Base.push!(double_stack::DoubleStack,side::Side,x)
    if is_full(double_stack)
        error("over flow")
    end

    if side==Left
        double_stack.left_head+=1
        double_stack.array[double_stack.left_head]=x
    elseif side==Right
        double_stack.right_head-=1
        double_stack.array[double_stack.right_head]=x
    else
        error("side is either right or left ")
    end
    return nothing
end

        