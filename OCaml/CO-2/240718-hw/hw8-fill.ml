(*
Q8: Write a function `is_power_of_two` that takes an integer and returns `true` if the integer is a power of two, and `false` otherwise.
*)

let is_power_of_two n =
  (* BLANK *);;

(* Tests *)
let () =
  assert (is_power_of_two 1 = true);
  assert (is_power_of_two 2 = true);
  assert (is_power_of_two 3 = false);
  assert (is_power_of_two 4 = true);
  assert (is_power_of_two 5 = false);
  Printf.printf "Is Power of Two tests passed.\n";;
