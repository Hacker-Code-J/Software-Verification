(*
Q5: Write three functions `bitwise_and`, `bitwise_or`, and `bitwise_xor` that take two integers and return their bitwise AND, OR, and XOR, respectively.
*)

let bitwise_and x y = x land y;;
let bitwise_or x y = x lor y;;
let bitwise_xor x y = x lxor y;;

(* Tests *)
let () =
  assert (bitwise_and 5 3 = 1);
  assert (bitwise_or 5 3 = 7);
  assert (bitwise_xor 5 3 = 6);
  Printf.printf "Bitwise AND, OR, XOR tests passed.\n";;