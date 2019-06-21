retornaEspacos :: Int -> String
retornaEspacos quant
 | quant > 1 = " " ++ retornaEspacos (quant - 1)
 | otherwise = " "

retornaPontos :: Int -> String
retornaPontos quant
 | quant > 1 = "*" ++ retornaPontos (quant - 1)
 | otherwise = "*"

montaTriangulo :: Int -> Int -> String
montaTriangulo atual total
 | atual > 0 = "\"" ++ retornaEspacos atual ++ (retornaPontos (total - atual)) ++ "\"" ++ "\n" ++ montaTriangulo (atual - 1) total
 | otherwise = "\"" ++ retornaPontos total ++ "\""
 

main :: IO ()
main = do
 altura <- readLn :: IO Int
 putStrLn $  (montaTriangulo (altura -1) altura)
  
