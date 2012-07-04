module QuickSort where

qsort :: Ord a => [a] -> [a]
qsort x = qsort3' x []

qsort3' :: Ord a => [a] -> [a] -> [a]
qsort3' [] y     = y
qsort3' [x] y    = x:y
qsort3' (x:xs) y = part xs [] [x] []  
  where
    part [] l e g = qsort3' l (e ++ qsort3' g y)
    part (z:zs) l e g 
      | z > x     = part zs l e (z:g) 
      | z < x     = part zs (z:l) e g 
      | otherwise = part zs l (z:e) g
