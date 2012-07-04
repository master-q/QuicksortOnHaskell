module QuickSort where

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (p:xs) = qsort lesser ++ [p] ++ qsort greater
  where
    lesser  = filter (< p) xs
    greater = filter (>= p) xs
