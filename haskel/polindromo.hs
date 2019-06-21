main :: IO ()

main = do
   word <- getLine
   let aux = reverse word

   if (word == aux) then putStrLn word
   else putStrLn $ word ++ tail aux
