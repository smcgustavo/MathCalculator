module MathCalculator

using Base: Float64

function pitagoras(hipotenusa::Float64, catetoo::Float64, catetoa::Float64)
    if hipotenusa <= 0
        return sqrt((catetoo^2) + (catetoa^2))
    elseif catetoo <= 0
        return sqrt((hipotenusa^2) - (catetoa^2))
    else
        return sqrt((hipotenusa^2) - (catetoo^2))
    end
end

function area_triangulo_eq(lado::Float64)
    return (lado^2) / 2
end
function area_triangulo(base::Float64, altura::Float64)
    return base * altura / 2
end
function area_quadrado(lado::Float64)
    return lado^2
end
function area_circulo(raio::Float64)
    return (raio^2) * 3.141592653589
end

end # module
