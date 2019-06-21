anda :: Int -> Int -> Int -> String -> [Int]
anda x y passos direcao
 | direcao == "frente" = [x, (y + passos)]
 | direcao == "tras" = [x, (y - passos)]
 | direcao == "direita" = [(x + passos), y]
 | direcao == "esquerda" = [(x - passos), y]

verificaQuad :: [Int] -> String
verificaQuad [x, y]
 | (x == 0) && (y == 0) = "origem"
 | (y == 0) = "eixo x"
 | (x == 0) = "eixo y"
 | (x > 0) && (y > 0) = "primeiro quadrante"
 | (x > 0) && (y < 0) = "segundo quadrante"
 | (x < 0) && (y < 0) = "terceiro quadrante" 
 | (x < 0) && (y > 0) = "quarto quadrante" 

main :: IO ()
main = do
 x <- readLn :: IO Int
 y <- readLn :: IO Int
 passos <- readLn :: IO Int
 direcao <- getLine

 putStrLn $ (verificaQuad (anda x y passos direcao))
