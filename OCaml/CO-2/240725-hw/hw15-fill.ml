(* Polymorphic Type for Bitwise NOT
Q15: Define a polymorphic type bitop representing an integer or a NOT operation (Not). Write a function apply_bitop that applies the NOT operation if bitop is Not, otherwise returns the integer.
*)

type bitop = Int of int | Not of int;;

let apply_bitop = function
  | Int x -> (* BLANK *)
  | Not x -> (* BLANK *);;

(* Tests *)
let () =
  assert (apply_bitop (Int 5) = 5);
  assert (apply_bitop (Not 0) = -1);  (* NOT 0: ...11111111 *)
  Printf.printf "Apply_bitop tests passed.\n";;
