(* lexer.ml *)

(* Tokenizer 
This module converts the input string into a list of tokens.
*)

type token =
  | INT of int
  | FLOAT of float
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | LPAREN
  | RPAREN
  | EOF

exception Lexical_error of string

let tokenize input =
  let length = String.length input in
  let rec aux pos =
    if pos >= length then [EOF]
    else match input.[pos] with
      | ' ' | '\t' | '\n' -> aux (pos + 1)
      | '0'..'9' ->
          let start = pos in
          let rec consume_digits pos =
            if pos < length && (input.[pos] >= '0' && input.[pos] <= '9') then
              consume_digits (pos + 1)
            else pos
          in
          let end_pos = consume_digits pos in
          if end_pos < length && input.[end_pos] = '.' then
            let end_pos = consume_digits (end_pos + 1) in
            let num_str = String.sub input start (end_pos - start) in
            FLOAT (float_of_string num_str) :: aux end_pos
          else
            let num_str = String.sub input start (end_pos - start) in
            INT (int_of_string num_str) :: aux end_pos
      | '+' -> PLUS :: aux (pos + 1)
      | '-' -> MINUS :: aux (pos + 1)
      | '*' -> TIMES :: aux (pos + 1)
      | '/' -> DIVIDE :: aux (pos + 1)
      | '(' -> LPAREN :: aux (pos + 1)
      | ')' -> RPAREN :: aux (pos + 1)
      | c -> raise (Lexical_error (Printf.sprintf "Unexpected character: %c" c))
  in
  aux 0
