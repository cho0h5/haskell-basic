main :: IO ()
main = do c <- getChar
          putChar c

getLine :: IO Bool
getLine = do c <- getChar
             if c == '\n' then return ""
                         else do l <- getLine
                                 return (c:l)
