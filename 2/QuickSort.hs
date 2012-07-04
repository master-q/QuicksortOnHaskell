module QuickSort where

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort lesser ++ equal ++ qsort greater
  where
    (lesser,equal,greater) = part x xs ([],[x],[])

part :: Ord a => a -> [a] -> ([a],[a],[a]) -> ([a],[a],[a])
part _ [] (l,e,g) = (l,e,g)
part p (x:xs) (l,e,g)
  | x > p     = part p xs (l,e,x:g)
  | x < p     = part p xs (x:l,e,g)
  | otherwise = part p xs (l,x:e,g)
