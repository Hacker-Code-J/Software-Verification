(* Bit Count
Q11: Write a function count_bits that counts the number of set bits (1s) in an integer.
*)

let count_bits x =
  let rec aux n acc =
    if n = 0 then acc
    else (* BLANK *)
  in (* BLANK *);;

(* Tests *)
let () =
  assert (count_bits 5 = 2);  (* 5: 0101 *)
  assert (count_bits 7 = 3);  (* 7: 0111 *)
  assert (count_bits 0 = 0);
  Printf.printf "Count_bits tests passed.\n";;
