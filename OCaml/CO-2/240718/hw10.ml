(* 
Q10: Write a recursive function `fibonacci` that returns the nth Fibonacci number.
*)

let rec fibonacci n =
  if n <= 1 then n
  else fibonacci (n - 1) + fibonacci (n - 2);;

(* Tests *)
let () =
  assert (fibonacci 0 = 0);
  assert (fibonacci 1 = 1);
  assert (fibonacci 10 = 55);
  Printf.printf "Fibonacci tests passed.\n";;
