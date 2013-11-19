--Wolf, goat & Cabbage
{-data Actor = Actor {
			   name :: stirng
			   move :: bool
			       }
data Champions = Champions {
				  "Wolf"    :: Actor
				  "Cabbage" :: Actor
				  "Goat"    :: Actor
				           }
data Cross = Cross {
					  firstSide :: list
					  secondSide :: list
					}
success (cross :: Cross) = if Cross.firstSide == [] && Cross.secondSide == ["Wolf", "Cabbage", "Goat"] 
						 -}  
--replace A, T, G, C

data Letters = A | T | G | C deriving Show

changeLetter A = T
changeLetter T = G
changeLetter G = C
changeLetter C = A

changeWord [] = []
changeWord (x:xs) = changeLetter x : changeWord xs

--chars -> number 

rule (A, T, G) = Just 0
rule (T, G, C) = Just 1
rule (G, C, A) = Just 2
rule (C, A, T) = Just 3
rule (G, A, T) = Just 4
rule (G, C, T) = Just 5
rule (A, C, G) = Just 6
rule (_, _, _) = Nothing

change [] acc rule = acc
change (a : []) acc rule = acc
change (a : b : []) acc rule = acc
change (a : b : c : cs) acc rule = 
							  acc : (rule (a, b, c)) : (change cs acc rule)  
--number -> chars

