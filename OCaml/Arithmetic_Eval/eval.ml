(* eval.ml *)

(* Evaluator 
This module evaluates the AST.
*)

open Ast

exception Evaluation_error of string

let rec eval = function
  | Int n -> float_of_int n
  | Float f -> f
  | Add (e1, e2) -> eval e1 +. eval e2
  | Sub (e1, e2) -> eval e1 -. eval e2
  | Mul (e1, e2) -> eval e1 *. eval e2
  | Div (e1, e2) ->
      let v2 = eval e2 in
      if v2 = 0.0 then raise (Evaluation_error "Division by zero")
      else eval e1 /. v2
  | Neg e -> -. (eval e)
  | Paren e -> eval e
