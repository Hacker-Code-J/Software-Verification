(* Either Type for Bitwise XOR
Q13: Define a polymorphic type either representing a value that can be one of two types (Left or Right). Write a function bitwise_xor_either that performs a bitwise XOR operation if both values are Left or both are Right, otherwise return None.
*)

type ('a, 'b) either = Left of 'a | Right of 'b;;

let bitwise_xor_either x y =
  match (x, y) with
  | (Left a, Left b) -> Some (* BLANK *)
  | (Right a, Right b) -> Some (* BLANK *)
  | _ -> None;;

(* Tests *)
let () =
  assert (bitwise_xor_either (Left 5) (Left 3) = Some 6);  (* 5: 0101, 3: 0011, Result: 0110 *)
  assert (bitwise_xor_either (Right 10) (Right 7) = Some 13); (* 10: 1010, 7: 0111, Result: 1101 *)
  assert (bitwise_xor_either (Left 5) (Right 3) = None);
  Printf.printf "Bitwise_xor_either tests passed.\n";;
