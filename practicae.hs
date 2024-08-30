
{-Ejercicio 1-}
distanciaPuntos :: (Double,Double) -> (Double,Double) -> Double
distanciaPuntos (x1,y1) (x2,y2) = sqrt ((x2-x1)^2 + (y2-y1)^2)



{-Ejercicio 3-}
pendiente :: (Double,Double) -> (Double,Double) -> Double
pendiente (x1,y1) (x2,y2) =  (y2-y1) / (x2-x1)


{-Ejercicio 5-}
aux_perimetro :: Double -> Double -> Double -> Double
aux_perimetro a b c =  (a+b+c) / 2

areaTriangulo :: Double -> Double -> Double -> Double
areaTriangulo a b c = sqrt ((aux_perimetro a b c)* ((aux_perimetro a b c) - a)*((aux_perimetro a b c) - b)*((aux_perimetro a b c) - c ))

{-Ejercicio 7-}
aux_maximo :: Int -> [Int] -> Int
aux_maximo p [] = p
aux_maximo p (x:xs) = if p <= x then aux_maximo x xs else aux_maximo p xs

maximo :: Int -> Int -> Int -> Int
maximo x y z = aux_maximo x ([y,z])
