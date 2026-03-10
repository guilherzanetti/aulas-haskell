data Binario = Zero | Um deriving (Show, Eq)
data Funcao = Soma2 | Maior | Menor | Mult2

aplicar :: Funcao -> Binario -> Binario -> Binario
-- Soma2: Lógica de soma binária simples (1+1=0, ignorando o transporte)
aplicar Soma2 Um Um   = Zero
aplicar Soma2 Zero x  = x
aplicar Soma2 x Zero  = x

-- Maior: Retorna Um se pelo menos um for Um
aplicar Maior Um _    = Um
aplicar Maior _ Um    = Um
aplicar Maior _ _     = Zero

-- Mult2: Multiplicação binária (AND lógico)
aplicar Mult2 Um Um   = Um
aplicar Mult2 _ _     = Zero

-- Menor: Retorna Zero se pelo menos um for Zero
aplicar Menor Zero _  = Zero
aplicar Menor _ Zero  = Zero
aplicar Menor _ _     = Um

main :: IO ()
main = do
    putStrLn "--- Exercício 3.11: Operações Binárias ---"
    putStrLn $ "Soma2 Um Um: " ++ show (aplicar Soma2 Um Um)
    putStrLn $ "Maior Zero Um: " ++ show (aplicar Maior Zero Um)
    putStrLn $ "Mult2 Um Zero: " ++ show (aplicar Mult2 Um Zero)