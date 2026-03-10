-- Exercício 3.17: Criptografia Básica
-- Implementa uma cifra simples utilizando os sucessores e predecessores
-- dos caracteres na tabela ASCII.

data Cripto = Mensagem String | Cifrado String | Erro deriving Show

encriptar :: Cripto -> Cripto
encriptar (Mensagem msg) = Cifrado [succ c | c <- msg]
encriptar _ = Erro

decriptar :: Cripto -> Cripto
decriptar (Cifrado msg) = Mensagem [pred c | c <- msg]
decriptar _ = Erro

main :: IO ()
main = do
    putStrLn "--- Exercício 3.17: Criptografia ---"
    let original = Mensagem "FATEC"
    let cifrada = encriptar original
    
    putStrLn $ "Original: " ++ show original
    putStrLn $ "Cifrada: " ++ show cifrada
    putStrLn $ "Decriptada: " ++ show (decriptar cifrada)