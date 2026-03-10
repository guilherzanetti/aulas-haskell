isPalindromo :: String -> Bool
isPalindromo s = s == reverse s

main :: IO ()
main = do
    putStrLn "--- Exercício 3.7: Palíndromo ---"
    putStrLn $ "É 'arara' um palíndromo? " ++ show (isPalindromo "arara")
    putStrLn $ "É 'haskell' um palíndromo? " ++ show (isPalindromo "haskell")