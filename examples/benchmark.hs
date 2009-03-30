--  A simple benchmark for the shuffle function.
module Main where

import Data.Word (Word32)
import System.Random.Mersenne.Pure64 (PureMT, pureMT)
import System.Random.Shuffle (shuffle')


n :: Int
n = 10000000

l :: [Word32]
l = [1 .. fromIntegral n]

generator :: PureMT
-- Make sure to use always the same data
generator = pureMT 777


main :: IO ()
main = do
  print $ length $ shuffle' l n generator
