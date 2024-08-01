(*
Q7: Write a function `bit_count` that takes an integer and returns the number of set bits (1s) in its binary representation.
*)

let rec bit_count x =
  if x = 0 then 0
  else (x land 1) + bit_count (x lsr 1);;

(* Tests *)
let () =
  assert (bit_count 0 = 0);
  assert (bit_count 5 = 2);
  assert (bit_count 15 = 4);
  Printf.printf "Bit Count tests passed.\n";;
