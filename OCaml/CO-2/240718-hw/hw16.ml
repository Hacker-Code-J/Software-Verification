(*
Q16: Write a function `reverse_bits` that takes an integer and returns its binary reversal.
*)

let reverse_bits x =
  let rec aux n acc =
    if (* BLANK *) then (* BLANK *)
    else (* BLANK *)
  in
  (* BLANK *);;

(* Tests *)
let () =
  assert (reverse_bits 0b1101 = 0b1011);
  assert (reverse_bits 0b100 = 0b001);
  assert (reverse_bits 0b1010 = 0b0101);
  Printf.printf "Bit Reversal tests passed.\n";;
