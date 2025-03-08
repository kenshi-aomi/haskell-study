-- 4.8 練習問題
-- 1
halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

-- 2 TODO
-- a
third_a xs = head (tail (tail xs))
-- b
third_b xs = xs !! 2
-- c
third_c :: [a] -> a
third_c (_:(_:(x:_))) = x

-- 3
-- a
safetail_a xs = if null xs then [] else tail xs
-- b
safetail_b xs | null xs = []
              | otherwise = tail xs
--c
safetail_c [] = []
safetail_c xs = tail xs

-- 4
myor_1 :: Bool -> Bool -> Bool
myor_1 False False = False
myor_1 _ _ = True

myor_2 :: Bool -> Bool -> Bool
myor_2 False False = False
myor_2 False True = True
myor_2 True False = True
myor_2 True True = True

myor_3 :: Bool -> Bool -> Bool
myor_3 False b = b
myor_3 True _ = True

myor_4 :: Bool -> Bool -> Bool
myor_4 b c | b == c  = b
           | otherwise = True 

-- 5
myand :: Bool -> Bool -> Bool
myand x y = if x == True then 
               if y == True then True else False
                  else False
-- 6
myand2 :: Bool -> Bool -> Bool
myand2 x y = if x == True then y else False

-- 7
mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x * y * z))
