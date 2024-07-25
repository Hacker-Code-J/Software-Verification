(* Either Type Representation
Q3: Define a polymorphic type either representing a value that can be one of two types (Left or Right). Write a function is_left that checks if an either value is Left.
*)

type ('a, 'b) either = Left of 'a | Right of 'b;;

let is_left = function
  | Left _ -> (* BLANK *)
  | Right _ -> (* BLANK *);;

(* Tests *)
let () =
  assert (is_left (Left 1) = true);
  assert (is_left (Right "error") = false);
  Printf.printf "Is_left tests passed.\n";;