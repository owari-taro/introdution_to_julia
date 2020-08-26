function bisection(f',a,b,ϵ)
    if a>b;a,b=b,a;end
    ya,yb=f'(a),f'(b)
    if ya==0;b =a;end
    if yb==0;a=b;end

    while b-a>ϵ
        x=(a+b)/2
        y=f'(x)
        if y==0
            a,b=x,x
            break
        elseif sign(y)==sign(ya)
            a=x
        else
            b=x
        end
    end
    return (a,b)
end


function bracket_sign_change(f',a,b,;k=2)
    if a>b;a,b=b,a;end
    center,half_width=(b-a)/2,(a+b)/2
    while f'(a)*f'(b)>0
        half_width*=k
        a=center-half_width
        b=center+half_width
    end
    return (a,b)
end