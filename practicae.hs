
{-Ejercicio 1-}
distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos (x1,y1) (x2,y2) = sqrt ((x2-x1)^2 + (y2-y1)^2)

{-Ejercicio 2-}
hipotenusa :: (Float,Float) -> Float
hipotenusa (x,y) = sqrt ((x^2) + (y^2))

{-Ejercicio 3-}
pendiente :: (Float,Float) -> (Float,Float) -> Float
pendiente (x1,y1) (x2,y2) =  (y2-y1) / (x2-x1)

{-Ejercicio 4-}
raices :: Float -> Float -> Float -> (Float,Float)
raices a b c = ((-b + sqrt((b^2 - 4 * a * c))) / (2 * a), (-b - sqrt ((b^2 - 4 * a * c))) / (2 * a))

{-Ejercicio 5-}
aux_perimetro :: Float -> Float -> Float -> Float
aux_perimetro a b c =  (a+b+c) / 2

areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = sqrt ((aux_perimetro a b c)* ((aux_perimetro a b c) - a)*((aux_perimetro a b c) - b)*((aux_perimetro a b c) - c ))

{-Ejercicio 6-}
comparador :: Int -> Int -> Int
comparador x y = if x == y
    then 0
    else 
        if x < y
            then -1 
            else 1

{-Ejercicio 7-}
aux_maximo :: Int -> [Int] -> Int
aux_maximo p [] = p
aux_maximo p (x:xs) = if p <= x then aux_maximo x xs else aux_maximo p xs

maximo :: Int -> Int -> Int -> Int
maximo x y z = aux_maximo x ([y,z])

{-Ejercicio 8-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = if x > y && y > z && z > w
    then True
    else False
