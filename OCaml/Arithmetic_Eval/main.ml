(* Main Program to Tie Everything Together *)

(* main.ml *)

open Lexer
open Parser
open Eval

(* Define test cases *)
let test_cases = [
  ("3 + 4 * 2", 11.0);
  ("3 + 4 * 2 / (1 - 5)", 1.0);
  ("(2 + 3) * 4", 20.0);
  ("10 / 2", 5.0);
  ("3.5 * 2", 7.0);
  ("7 - 2 * 3", 1.0);
  ("10 - 4 / 2", 8.0);
  ("8 / 4 * 2", 4.0);
  ("5 + (3 * 2)", 11.0);
  ("(5 + 3) * 2", 16.0);
  ("2.5 + 3.5", 6.0);
  ("3 + 4 * 2 / 2", 7.0);
  ("6 * (2 + 1)", 18.0);
  ("(7 + 2) * 3", 27.0);
  ("10 / (5 / 1)", 2.0);
  ("5 - 3 - 1", 1.0);
  ("10 * 2 / 4", 5.0);
  ("(3 + 4) * (5 - 2)", 21.0);
  ("6 / 2 * 3", 9.0);
  ("3.14 * 2", 6.28);
]

(* Helper function to compare floating point numbers *)
let float_equal a b =
  abs_float (a -. b) < 0.0001

let () =
  List.iter (fun (expr, expected) ->
    try
      (* Tokenize the input *)
      let tokens = tokenize expr in
      (* Parse tokens into an AST *)
      let ast = parse tokens in
      (* Evaluate the AST *)
      let result = eval ast in
      (* Check if the result matches the expected value *)
      if float_equal result expected then
        Printf.printf "Test passed: %s = %f\n" expr result
      else
        Printf.printf "Test failed: %s. Expected %f but got %f\n" expr expected result
    with
    | Lexer.Lexical_error msg ->
        Printf.printf "Lexical error: %s\n" msg
    | Parser.Syntax_error msg ->
        Printf.printf "Syntax error: %s\n" msg
    | Eval.Evaluation_error msg ->
        Printf.printf "Evaluation error: %s\n" msg
  ) test_cases

(* let () =
  let input = "3 + 4 * 2 / (1 - 5)" in
  try
    let tokens = tokenize input in
    let ast = parse tokens in
    let result = eval ast in
    Printf.printf "Result: %f\n" result
  with
  | Lexer.Lexical_error msg -> Printf.printf "Lexical error: %s\n" msg
  | Parser.Syntax_error msg -> Printf.printf "Syntax error: %s\n" msg
  | Eval.Evaluation_error msg -> Printf.printf "Evaluation error: %s\n" msg *)

(* let () =
  (* Read input from the user *)
  Printf.printf "Enter an arithmetic expression: ";
  let input = read_line () in
  try
    (* Tokenize the input *)
    let tokens = tokenize input in
    (* Parse tokens into an AST *)
    let ast = parse tokens in
    (* Evaluate the AST *)
    let result = eval ast in
    (* Print the result *)
    Printf.printf "Result: %f\n" result
  with
  | Lexer.Lexical_error msg ->
      Printf.printf "Lexical error: %s\n" msg
  | Parser.Syntax_error msg ->
      Printf.printf "Syntax error: %s\n" msg
  | Eval.Evaluation_error msg ->
      Printf.printf "Evaluation error: %s\n" msg *)