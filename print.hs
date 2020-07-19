sequenceZ :: [IO ()] -> IO ()
sequenceZ = foldr (>>) (return ())

putStrZ   :: String -> IO ()
putStrZ s = sequenceZ (map  putChar s)
