import Data.Char (intToDigit, toUpper)

converte :: Int -> String
converte = map toUpper . reverse . recurse
  where recurse numero
          | numero < 16    = [ intToDigit numero ]
          | otherwise = let (a,b) = numero `divMod` 16
                        in (intToDigit b) : recurse a

main :: IO ()
main = do
 numero <- readLn :: IO Int
 putStrLn (converte numero)
