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
function area_retangulo(lado::Float64, altura::Float64)
    return lado * altura
end
function area_circulo(raio::Float64)
    return (raio^2) * 3.141592653589
end
function perimetro_circulo(raio::Float64)
    return raio * 2 * 3.141592653589
end
function volume_cubo(lado::Float64)
    return lado^3
end
function volume_piramide(altura::Float64, comprimento::Float64, largura::Float64)
    return altura * comprimento * largura / 3
end
function volume_esfera(raio::Float64)
    return raio^3 * 3.141592653589 * 3 / 4
end
function volume_cilindro(raio::Float64, altura::Float64)
    return area_circulo(raio) * altura
end
function volume_cone(raio::Float64, altura::Float64)
    return volume_cilindro(raio,altura) / 3
end
function volume_prisma(a::Float64, b::Float64, comprimento::Float64)
    return area_triangulo(a,b) * comprimento
end

end # module
