(* 
Q12: Write a function `sum_of_digits` that takes an integer and returns the sum of its digits.
*)

let rec sum_of_digits n =
  (* BLANK *);;

(* Tests *)
let () =
  assert (sum_of_digits 123 = 6);
  assert (sum_of_digits 0 = 0);
  assert (sum_of_digits 9876 = 30);
  Printf.printf "Sum of Digits tests passed.\n";;
