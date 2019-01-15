--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture 5: Type classes                                                    --
--------------------------------------------------------------------------------

module Lecture5 where

--------------------------------------------------------------------------------
-- Addition on integers

t0 :: Int
t0 = 4

t1 :: Int
t1 = 8

t2 :: Int
t2 = 4 + 8

--------------------------------------------------------------------------------
-- Addition on doubles

t3 :: Double
t3 = 4.2 + 2.3

--------------------------------------------------------------------------------
-- Overloaded integer literals

t4 :: Num a => a
t4 = (-1)

t5 :: Num a => a
t5 = 0

t6 :: Num a => a
t6 = 1

t7 :: Num a => a
t7 = 42

--------------------------------------------------------------------------------
-- Overloaded expressions

t8 :: Num a => a
t8 = 4 * 2

--------------------------------------------------------------------------------
-- Show type class

class OurShow a where
    ourShow :: a -> String

instance OurShow Bool where
    ourShow True  = "True"
    ourShow False = "False"

instance (OurShow a, OurShow b) => OurShow (a,b) where
    ourShow (x,y) = "(" ++ ourShow x ++ "," ++ ourShow y ++ ")"

instance (OurShow a, OurShow b, OurShow c) => OurShow (a,b,c)

instance Num Bool where
    (+) True True = True
    (+) False False = True
    (+) _ _ = False

--------------------------------------------------------------------------------
-- Overloaded functions

--double :: Num a => a -> a
double x = x * 2

--------------------------------------------------------------------------------
