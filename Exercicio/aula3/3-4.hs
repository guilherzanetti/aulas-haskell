semVogais :: String -> String
semVogais texto = [c | c <- texto, not (c `elem` "aeiouAEIOU")]

main :: IO ()
main = do
    putStrLn "--- Exercício 3.4: Remoção de Vogais ---"
    let exemplo = "Haskell Framework"
    putStrLn $ "Original: " ++ exemplo
    putStrLn $ "Resultado: " ++ semVogais exemplo