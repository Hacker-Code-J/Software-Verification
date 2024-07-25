(* Result Type for Bitwise Comparison
Q16: Write a function compare_bits that takes two integers and returns a result indicating if they have the same number of bits set. Use Ok true, Ok false, or Error if one or both numbers are negative.
*)

let count_bits x =
  (* BLANK *)
  
let compare_bits x y =
    if (* BLANK *) then Error (* Hint: string *)
    else Ok (* Hint: Use 'count_bits' *);;

(* Tests *)
let () =
  assert (compare_bits 5 3 = Ok true);  (* Both have 2 bits set *)
  assert (compare_bits 5 4 = Ok false); (* 5: 2 bits, 4: 1 bit *)
  assert (compare_bits (-1) 5 = Error "Negative input");
  Printf.printf "Compare_bits tests passed.\n";;