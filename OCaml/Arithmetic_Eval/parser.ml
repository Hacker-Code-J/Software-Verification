(* parser.ml *)

(* Parser 
This module parses tokens into an AST.
*)

open Ast
open Lexer

exception Syntax_error of string

let rec parse_expr tokens =
  parse_add_sub tokens

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
  | FLOAT f :: tokens -> Float f, tokens
  | LPAREN :: tokens ->
      let expr, tokens = parse_expr tokens in
      (match tokens with
       | RPAREN :: tokens -> Paren expr, tokens
       | _ -> raise (Syntax_error "Expected closing parenthesis"))
  | MINUS :: tokens ->
      let expr, tokens = parse_primary tokens in
      Neg expr, tokens
  | _ -> raise (Syntax_error "Unexpected token")

let parse tokens =
  let ast, tokens = parse_expr tokens in
  match tokens with
  | [EOF] -> ast
  | _ -> raise (Syntax_error "Unexpected tokens at end of expression")

