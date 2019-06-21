
removeLista :: [Int] -> Int -> [Int]
removeLista [] elem = []
removeLista (h:t) elem
 | h == elem = removeLista t elem
 | otherwise = h:removeLista t elem

contaIguais :: [Int] -> Int -> Int
contaIguais [] a = 0
contaIguais (h:t) a
 | h == a = 1 + contaIguais t a
 | otherwise = contaIguais t a

contaPares :: [Int] -> Int
contaPares [] = 0
contaPares lista = ((contaIguais lista (lista !! 0)) `div` 2) + (contaPares (removeLista lista (lista !! 0)))

main :: IO ()
main = do
 a <- readLn :: IO [Int]
 print (contaPares a)
