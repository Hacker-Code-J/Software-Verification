(*
Q9: Write a function `set_bit` that takes an integer `x` and a bit position `n` and returns the integer with the nth bit set to 1.
*)

let set_bit x n = (* Hint: 'lor', 'lsl' *);;

(* Tests *)
let () =
  assert (set_bit 5 1 = 7);
  assert (set_bit 5 2 = 5);
  assert (set_bit 0 3 = 8);
  Printf.printf "Set Bit tests passed.\n";;