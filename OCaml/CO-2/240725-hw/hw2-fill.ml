(* Polymorphic Pair Swapping
Q2: Write a function swap that takes a pair of any type and returns a new pair with the elements swapped.
*)

let swap (x, y) = (* BLANK *);;

(* Tests *)
let () =
  assert (swap (1, "one") = ("one", 1));
  assert (swap (true, 3.14) = (3.14, true));
  Printf.printf "Swap tests passed.\n";;