retornaPassos :: (String, Int) -> Int
retornaPassos (a, b) = b

contaPassosDia :: [(String, Int)] -> Int
contaPassosDia [] = 0
contaPassosDia (h:t) = (retornaPassos h) + contaPassosDia t 

contaPassos :: [[(String, Int)]] -> Int -> Int
contaPassos lista 7 = 0
contaPassos lista indice = (contaPassosDia (lista !! indice)) + (contaPassos lista (indice + 1))

main :: IO ()
main = do
 a <- readLn :: IO [[(String, Int)]]
 print (contaPassos a 0)
