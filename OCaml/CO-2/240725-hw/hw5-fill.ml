(* Tuple Matching
Q5: Write a function first_of_three that extracts the first element of a triple (tuple of three elements).
*)

let first_of_three (x, _, _) = (* BLANK *);;

(* Tests *)
let () =
  assert (first_of_three (1, 2, 3) = 1);
  assert (first_of_three ("a", "b", "c") = "a");
  Printf.printf "First_of_three tests passed.\n";;
