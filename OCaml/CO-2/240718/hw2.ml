(* 
Q2: Write a recursive function `factorial` that computes the factorial of a given non-negative integer.
*)

let rec factorial n =
  if n = 0 then 1
  else n * factorial (n - 1);;

(* Tests *)
let () =
  assert (factorial 0 = 1);
  assert (factorial 5 = 120);
  assert (factorial 6 = 720);
  Printf.printf "Factorial tests passed.\n";;