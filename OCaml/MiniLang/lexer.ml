(* lexer.ml 
Tokenizes the input string
into a series of tokens for parsing.
*)

type token =
  | INT of int
  | IDENT of string
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | LPAREN
  | RPAREN
  | IF
  | ELSE
  | PRINT
  | SEMICOLON
  | EOF
  | GT  (* Greater than > *)
  | LT  (* Less than < *)
  | EQ  (* Equality == *)
  | NEQ (* Not equal != *)

exception Lexical_error of string

let is_digit c = c >= '0' && c <= '9'
let is_alpha c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
let is_alnum c = is_alpha c || is_digit c

let rec tokenize input =
  let length = String.length input in
  let rec aux pos =
    if pos >= length then [EOF]
    else match input.[pos] with
      | ' ' | '\t' | '\n' -> aux (pos + 1)
      | '0'..'9' ->
          let start = pos in
          let rec consume_digits pos =
            if pos < length && is_digit input.[pos] then
              consume_digits (pos + 1)
            else pos
          in
          let end_pos = consume_digits pos in
          let num_str = String.sub input start (end_pos - start) in
          INT (int_of_string num_str) :: aux end_pos
      | 'a'..'z' | 'A'..'Z' ->
          let start = pos in
          let rec consume_ident pos =
            if pos < length && is_alnum input.[pos] then
              consume_ident (pos + 1)
            else pos
          in
          let end_pos = consume_ident pos in
          let ident = String.sub input start (end_pos - start) in
          (match ident with
          | "if" -> IF
          | "else" -> ELSE
          | "print" -> PRINT
          | _ -> IDENT ident) :: aux end_pos
      | '+' -> PLUS :: aux (pos + 1)
      | '-' -> MINUS :: aux (pos + 1)
      | '*' -> TIMES :: aux (pos + 1)
      | '/' -> DIVIDE :: aux (pos + 1)
      | '=' -> if pos + 1 < length && input.[pos + 1] = '=' then EQ :: aux (pos + 2) else ASSIGN :: aux (pos + 1)
      | '!' -> if pos + 1 < length && input.[pos + 1] = '=' then NEQ :: aux (pos + 2) else raise (Lexical_error "Unexpected character: !")
      | '>' -> GT :: aux (pos + 1)
      | '<' -> LT :: aux (pos + 1)
      | '(' -> LPAREN :: aux (pos + 1)
      | ')' -> RPAREN :: aux (pos + 1)
      | ';' -> SEMICOLON :: aux (pos + 1)
      | _ -> raise (Lexical_error (Printf.sprintf "Unexpected character: %c" input.[pos]))
  in
  aux 0
