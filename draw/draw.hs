data Side = Left | Right

ntoxy :: Integer -> Side -> (Real, Real)
ntoxy n s = if Side == Left then (0.0, )

noshift :: Integer -> Integer -> Integer -> [(Integer, Integer)]
noshift p a b = map (\x -> | x <= 2 * a = x + b
                           | x <= 2 * a + b = x - 2 * a
                           | x) [1..p]



pabr_adjacency :: Integer -> Integer -> Integer -> Integer -> [(Integer, Integer)]
pabr_adjacency p a b r = let rolled = map (\x -> 1 + mod (x + r - 1) p) $ noshift p a b
                             in zip [1..p] rolled
