(* Bit Rotation
Q12: Write a function rotate_left that performs a left rotation on an integer by a given number of bits.
*)

(* Note: 32-bit rotation *)
let rotate_left x n =
  (* Hint: Use 'lsl', 'lor', 'lsr' *)

(* Tests *)
let () =
  assert (rotate_left 5 1 = 10);  (* 5: 0101, Rotated: 1010 *)
  assert (rotate_left 5 2 = 20);  (* 5: 0101, Rotated: 10100 *)
  Printf.printf "Rotate_left tests passed.\n";;
