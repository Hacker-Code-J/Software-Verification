(* 
Q11: Write a function `max_of_three` that takes three integers and returns the largest of the three.
*)

let max_of_three x y z =
  if x >= y && x >= z then x
  else if y >= x && y >= z then y
  else z;;

(* Tests *)
let () =
  assert (max_of_three 1 2 3 = 3);
  assert (max_of_three 5 5 1 = 5);
  assert (max_of_three (-1) (-2) (-3) = -1);
  Printf.printf "Max of Three tests passed.\n";;