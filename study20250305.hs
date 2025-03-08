-- 整数と加算演算子を構成子とする単純な数式型の定義
data Expr = Val Int | Add Expr Expr

-- 制御スタック型の定義
type Cont = [Op]
data Op = Eval Expr | ADD Int

-- 制御スタックから式を評価する関数型の定義
eval :: Expr -> Cont -> Int
eval (Val n) c = exec c n
 where
  exec :: Cont -> Int -> Int
  exec []           n = n
  exec (Eval y : c) n = eval y (ADD n : c)
  exec (ADD n : c)  m = exec c (n + m)

eval (Add x y) c = eval x (Eval y : c)
value :: Expr -> Int
value e = eval e []

