(* ast.ml 
Defines the abstract syntax tree (AST) structure 
for the MiniLang language.
*)

type expr =
  | Int of int
  | Var of string
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr
  | Lt of expr * expr
  | Gt of expr * expr
  | Eq of expr * expr
  | Neq of expr * expr

type stmt =
  | Assign of string * expr
  | Print of expr
  | Seq of stmt list
  | If of expr * stmt * stmt
