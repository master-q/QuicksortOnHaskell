import Criterion.Main
import System.Random
import Control.Parallel.Strategies

import QuickSort

generator :: [Int]
generator = [0..10^3]

main :: IO ()
main = do
  g <- getStdGen
  asc <- return $! (generator `using` rdeepseq)
  des <- return $! ((reverse asc) `using` rdeepseq)
  ram <- return $! ((take (10^3) (randoms g:: [Int])) `using` rdeepseq)
  
  defaultMain [
    bgroup "qsort" [ bench "ascending"   $ nf qsort asc
                    , bench "descending"  $ nf qsort des
                    , bench "randoms"     $ nf qsort ram
                    ]
    ]
