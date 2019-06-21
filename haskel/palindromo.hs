reverseA :: String -> String
reverseA "" = ""
reverseA (h:t) = reverseA t ++ [h]

len :: String -> Int
len [] = 0
len (h:t) = 1 + (len t)

removeUltimoLista :: String -> Int -> String
removeUltimoLista "" num = ""
removeUltimoLista palavra num
 | num == ((len palavra) - 1) = ""
 | otherwise = [(palavra !! num)] ++ (removeUltimoLista palavra (num + 1)) 

palindromo :: String -> String
palindromo palavra 
 | palavra == (reverseA palavra) = palavra
 | otherwise = palavra ++ (reverseA (removeUltimoLista palavra 0))

main :: IO ()
main = do 
 a <- getLine
 putStrLn (palindromo a)
