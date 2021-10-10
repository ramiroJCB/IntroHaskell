import Distribution.Simple.Utils (xargs)


-- infix functions 


doubleMe :: Num a => a -> a
doubleMe x=x+x

doubleUs :: Num a => a -> a -> a -> a
doubleUs x y c =doubleMe x + doubleMe y *c

doubleSmallN :: (Ord a, Num a) => a -> a
doubleSmallN x = if x>100
                 then x 
                 else x*2

itsMeMario :: String
itsMeMario ="It's  meeeee Marioooooo"

lostOfItems :: [Integer]
lostOfItems = [1, 2,3,4,5]

strings :: [String]
strings =["a","as","sa"] ++ ["asd"]

consOperator :: [Integer]
consOperator = 5:[1] ++ [6]

heads :: [a] -> a
heads x = head x

tails :: [a] -> [a]
tails x= tail x 

lasts :: [a] -> a
lasts x = last x 

initt :: [a] -> [a]
initt x = init x

listLength :: Foldable t => t a -> Int
listLength  x = length x

empty :: Foldable t => t a -> Bool
empty x = null x

slice :: Int -> [a] -> [a]
slice x y = take x y

drops :: Int -> [a] -> [a]
drops x y = drop x y

listReverse :: [a] -> [a]
listReverse x = reverse x 

getMax :: (Foldable t, Ord a) => t a -> a
getMax x =maximum x

getMin :: (Foldable t, Ord a) => t a -> a
getMin x = minimum x

sumLists :: (Foldable t, Num a) => t a -> a
sumLists x  =sum x

multiplyList :: (Foldable t, Num a) => t a -> a
multiplyList x = product x 

exist :: (Foldable t, Eq a) => a -> t a -> Bool
exist x y  = x `elem` y


thisIsARange =[1..100]

rangeLimits= [4..56]

reverLimits :: [Integer]
reverLimits =[5555,5554..4]


cycleOfX :: Int -> [a] -> [a]
cycleOfX x y = take x (cycle y)

repeatX :: Int -> a -> [a]
repeatX  x y = take x (repeat y)


replicateX :: Int -> a -> [a]
replicateX x y = replicate x y

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   

randomize x y =[xs*ys| xs <-y ,ys <-y]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  




