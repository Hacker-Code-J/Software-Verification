(* main.ml *)

open Lexer
open Parser
open Eval

(* main.ml *)

open Lexer
open Parser
open Eval

(* Define a set of test programs for automated testing *)
(* let test_programs = [
  "print 5 + 3 * 2;", 11;
  "x = 10; print x + 5;", 15;
  "x = 10; if x > 5 print 100; else print 0;", 100;
  "x = 5; y = 10; if x < y print y - x; else print x - y;", 5;
  "print 10 / 2;", 5;
  "print 2 * (3 + 4);", 14;
  "print 20 - 5;", 15;
  "a = 3; b = 4; print a * b;", 12;
  "x = 1; y = 2; if x == y print 1; else print 0;", 0;
  "z = 7; print z;", 7
] *)

(* Function to run a single test case *)
(* let run_test (program, _expected) =
  try
    let tokens = tokenize program in
    let ast = parse tokens in
    let _ = eval_stmt [] ast in
    Printf.printf "Test passed: %s\n" program
  with
  | Lexer.Lexical_error msg ->
      Printf.printf "Lexical error: %s\n" msg
  | Parser.Syntax_error msg ->
      Printf.printf "Syntax error: %s\n" msg
  | Eval.Runtime_error msg ->
      Printf.printf "Runtime error: %s\n" msg *)

(* Function to handle user commands *)
let rec handle_user_input () =
  Printf.printf "> "; (* Prompt for user input *)
  flush stdout; (* Ensure prompt is displayed immediately *)
  let command = read_line () in
  if command = "exit" then
    Printf.printf "Exiting interpreter.\n"
  else
    try
      let tokens = tokenize command in
      let ast = parse tokens in
      let _ = eval_stmt [] ast in
      handle_user_input () (* Continue reading commands *)
    with
    | Lexer.Lexical_error msg ->
        Printf.printf "Lexical error: %s\n" msg;
        handle_user_input ()
    | Parser.Syntax_error msg ->
        Printf.printf "Syntax error: %s\n" msg;
        handle_user_input ()
    | Eval.Runtime_error msg ->
        Printf.printf "Runtime error: %s\n" msg;
        handle_user_input ()

let () =
  (* Run predefined tests *)
  (* List.iter run_test test_programs; *)

  (* Start interactive mode *)
  handle_user_input ()

