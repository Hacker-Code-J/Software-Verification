(* 
Q14: Write two functions `logical_and` and `logical_or` that take two boolean values and return their logical AND and OR, respectively.
*)

let logical_and a b = a && b;;
let logical_or a b = a || b;;

(* Tests *)
let () =
  assert (logical_and true false = false);
  assert (logical_and true true = true);
  assert (logical_or true false = true);
  assert (logical_or false false = false);
  Printf.printf "Logical AND and OR tests passed.\n";;
