(* 
Q4: Write a function `is_positive` that takes an integer and returns `true` if the integer is positive and `false` otherwise.
*)

let is_positive n = (* BLANK *);;

(* Tests *)
let () =
  assert (is_positive 5 = true);
  assert (is_positive (-3) = false);
  assert (is_positive 0 = false);
  Printf.printf "Is Positive tests passed.\n";;