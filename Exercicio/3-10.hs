revNum :: Int -> String -> String
revNum n s = reverse (take n s) ++ drop n s

main :: IO ()
main = do
    putStrLn "--- Exercício 3.10: revNum ---"
    -- Exemplo do enunciado: revNum 4 "FATEC" = "ETAFC"
    putStrLn $ "revNum 4 \"FATEC\": " ++ revNum 4 "FATEC"
    putStrLn $ "revNum 2 \"HASKELL\": " ++ revNum 2 "HASKELL"