struct Point
    x::Int
    y::Int
end

function distance(p::Point)
    return sqrt(p.x^2+p.y^2)
end;


