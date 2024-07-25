(* eval.ml 
Evaluates the AST.
*)

open Ast

exception Runtime_error of string

type value =
  | VInt of int

type env = (string * value) list

let rec eval_expr env = function
  | Int n -> VInt n
  | Var v ->
      (try List.assoc v env with Not_found -> raise (Runtime_error (Printf.sprintf "Undefined variable: %s" v)))
  | Add (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (v1 + v2)
  | Sub (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (v1 - v2)
  | Mul (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (v1 * v2)
  | Div (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      if v2 = 0 then raise (Runtime_error "Division by zero")
      else VInt (v1 / v2)
  | Lt (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (if v1 < v2 then 1 else 0)
  | Gt (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (if v1 > v2 then 1 else 0)
  | Eq (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (if v1 = v2 then 1 else 0)
  | Neq (e1, e2) ->
      let VInt v1 = eval_expr env e1 in
      let VInt v2 = eval_expr env e2 in
      VInt (if v1 <> v2 then 1 else 0)

let rec eval_stmt env = function
  | Assign (v, e) ->
      let value = eval_expr env e in
      (v, value) :: env
  | Print e ->
      let VInt v = eval_expr env e in
      Printf.printf "%d\n" v;
      env
  | Seq stmts ->
      List.fold_left eval_stmt env stmts
  | If (cond, then_branch, else_branch) ->
      let VInt v = eval_expr env cond in
      if v != 0 then eval_stmt env then_branch
      else eval_stmt env else_branch
