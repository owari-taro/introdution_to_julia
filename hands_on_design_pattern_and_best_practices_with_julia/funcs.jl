export interest,rate,mortgage
function interest(amount,rate)
    return amount*(1+rate)
end

function rate(amount,interest)
    return interest/amount
end

function mortgage(home_price,down_payement,rate,years)
    return payement(home_price-down_payement,rate,years)
end
