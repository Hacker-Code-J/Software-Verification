(* parser.ml 
Parses tokens into an AST structure.
*)

open Ast
open Lexer

exception Syntax_error of string

let rec parse_expr tokens =
  parse_eq_ne tokens

and parse_eq_ne tokens =
  let lhs, tokens = parse_lt_gt tokens in
  match tokens with
  | EQ :: tokens ->
      let rhs, tokens = parse_lt_gt tokens in
      Eq (lhs, rhs), tokens
  | NEQ :: tokens ->
      let rhs, tokens = parse_lt_gt tokens in
      Neq (lhs, rhs), tokens
  | _ -> lhs, tokens

and parse_lt_gt tokens =
  let lhs, tokens = parse_add_sub tokens in
  match tokens with
  | LT :: tokens ->
      let rhs, tokens = parse_add_sub tokens in
      Lt (lhs, rhs), tokens
  | GT :: tokens ->
      let rhs, tokens = parse_add_sub tokens in
      Gt (lhs, rhs), tokens
  | _ -> lhs, tokens

and parse_add_sub tokens =
  let lhs, tokens = parse_mul_div tokens in
  parse_add_sub_tail lhs tokens

and parse_add_sub_tail lhs tokens =
  match tokens with
  | PLUS :: tokens ->
      let rhs, tokens = parse_mul_div tokens in
      parse_add_sub_tail (Add (lhs, rhs)) tokens
  | MINUS :: tokens ->
      let rhs, tokens = parse_mul_div tokens in
      parse_add_sub_tail (Sub (lhs, rhs)) tokens
  | _ -> lhs, tokens

and parse_mul_div tokens =
  let lhs, tokens = parse_primary tokens in
  parse_mul_div_tail lhs tokens

and parse_mul_div_tail lhs tokens =
  match tokens with
  | TIMES :: tokens ->
      let rhs, tokens = parse_primary tokens in
      parse_mul_div_tail (Mul (lhs, rhs)) tokens
  | DIVIDE :: tokens ->
      let rhs, tokens = parse_primary tokens in
      parse_mul_div_tail (Div (lhs, rhs)) tokens
  | _ -> lhs, tokens

and parse_primary tokens =
  match tokens with
  | INT n :: tokens -> Int n, tokens
  | IDENT v :: tokens -> Var v, tokens
  | LPAREN :: tokens ->
      let expr, tokens = parse_expr tokens in
      (match tokens with
       | RPAREN :: tokens -> expr, tokens
       | _ -> raise (Syntax_error "Expected closing parenthesis"))
  | _ -> raise (Syntax_error "Unexpected token")

let rec parse_stmt tokens =
  match tokens with
  | IDENT var :: ASSIGN :: tokens ->
      let expr, tokens = parse_expr tokens in
      let tokens = match tokens with
        | SEMICOLON :: tokens -> tokens
        | _ -> raise (Syntax_error "Expected semicolon")
      in
      Assign (var, expr), tokens
  | PRINT :: tokens ->
      let expr, tokens = parse_expr tokens in
      let tokens = match tokens with
        | SEMICOLON :: tokens -> tokens
        | _ -> raise (Syntax_error "Expected semicolon")
      in
      Print expr, tokens
  | IF :: tokens ->
      let cond, tokens = parse_expr tokens in
      let then_branch, tokens = parse_stmt tokens in
      let else_branch, tokens =
        match tokens with
        | ELSE :: tokens ->
            let else_branch, tokens = parse_stmt tokens in
            Some else_branch, tokens
        | _ -> None, tokens
      in
      If (cond, then_branch, Option.value ~default:(Seq []) else_branch), tokens
  | _ -> raise (Syntax_error "Unexpected statement")

let rec parse_stmts tokens =
  match tokens with
  | EOF :: _ -> [], tokens
  | _ ->
      let stmt, tokens = parse_stmt tokens in
      let stmts, tokens = parse_stmts tokens in
      stmt :: stmts, tokens

let parse tokens =
  let stmts, _ = parse_stmts tokens in
  Seq stmts
