import Data.Char (toLower)

-- Función pura para convertir texto a minúsculas
normalizarTexto :: String -> String
normalizarTexto entrada = map toLower entrada

-- Función para filtrar palabras vacías muy básicas
filtrarRelevantes :: [String] -> [String]
filtrarRelevantes palabras = filter (\p -> p /= "el" && p /= "la") palabras

-- Composición de funciones para el pipeline del Chatbot
procesarEntradaChatbot :: String -> [String]
procesarEntradaChatbot = filtrarRelevantes . words . normalizarTexto

-- Función principal obligatoria para ejecutar e imprimir el resultado
main :: IO ()
main = print (procesarEntradaChatbot "Hola la factura tiene un error")