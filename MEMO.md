# memo
- 既存の型と型変数の組み合わせで新しい型を定義する時は"type"を使う。（再帰型は定義できない。）
  - 例1 : type Pos = (Int, Int)
  - 例2(入れ子) : type Trans = Pos -> Pos
  - 例3(多相的) : type Pair a = (a. a);
- 全く新しい型を定義する時は"data"を使う。（再帰型を定義できる。）
  - 例4(型の構成子を"|"で区切って定義する) : data Move = North | South | East | West
  - 例5(再帰型) : data Nat = Zero | Succ Nat 
