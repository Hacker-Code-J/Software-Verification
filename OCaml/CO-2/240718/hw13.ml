(* 
Q13: Write a function `gcd` that takes two integers and returns their greatest common divisor using the Euclidean algorithm.
*)

let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b);;

(* Tests *)
let () =
  assert (gcd 54 24 = 6);
  assert (gcd 20 8 = 4);
  assert (gcd 13 7 = 1);
  Printf.printf "GCD tests passed.\n";;
