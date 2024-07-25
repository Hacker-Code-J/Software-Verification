(* Pattern Matching on Tuples
Q9: Write a function second_of_pair that extracts the second element from a pair.
*)

let second_of_pair (_, y) = (* BLANK *);;

(* Tests *)
let () =
  assert (second_of_pair (1, "two") = "two");
  assert (second_of_pair (true, 3.14) = 3.14);
  Printf.printf "Second_of_pair tests passed.\n";;
