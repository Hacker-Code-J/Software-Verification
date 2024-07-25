(* Recursive Type Pattern Matching
Q10: Define a polymorphic type expression representing a simple arithmetic expression (Add, Mul, Const). Write a function evaluate that evaluates the expression.
*)

type expr =
  | Const of int
  | Add of expr * expr
  | Mul of expr * expr;;

let rec evaluate = function
  | Const x -> (* BLANK *)
  | Add (e1, e2) -> evaluate (* BLANK *) (* Hint: operation *) evaluate (* BLANK *)
  | Mul (e1, e2) -> evaluate (* BLANK *) (* Hint: operation *) evaluate (* BLANK *);;

(* Tests *)
let () =
  let expr = Add (Const 1, Mul (Const 2, Const 3)) in
  assert (evaluate expr = 7);
  assert (evaluate (Const 5) = 5);
  Printf.printf "Evaluate tests passed.\n";;
