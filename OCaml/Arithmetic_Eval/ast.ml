(* ast.ml *)

(* Abstract Syntax Tree Definitions
This module defines the types used in the AST.
*)

type expr =
  | Int of int
  | Float of float
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr
  | Neg of expr
  | Paren of expr
