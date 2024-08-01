(* 
Q3: Write a function `is_even` that takes an integer and returns `true` if the integer is even and `false` otherwise.
*)

let is_even n = n mod 2 = 0;;

(* Tests *)
let () =
  assert (is_even 4 = true);
  assert (is_even 7 = false);
  assert (is_even 0 = true);
  Printf.printf "Is Even tests passed.\n";;