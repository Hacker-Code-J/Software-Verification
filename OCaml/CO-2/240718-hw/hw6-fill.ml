(*
Q6: Write two functions `left_shift` and `right_shift` that take an integer and a shift amount and return the result of shifting the integer left and right by the given amount.
*)

let left_shift x n = (* Hint: 'lsl' *);;
let right_shift x n = (* Hint: 'lsr' *);;

(* Tests *)
let () =
  assert (left_shift 2 1 = 4);
  assert (left_shift 3 2 = 12);
  assert (right_shift 4 1 = 2);
  assert (right_shift 8 2 = 2);
  Printf.printf "Left and Right Shift tests passed.\n";;