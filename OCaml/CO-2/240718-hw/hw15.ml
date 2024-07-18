(*
Q15: Write a function `hamming_distance` that takes two integers and returns the number of positions at which the corresponding bits are different.
*)

let hamming_distance x y =
  let rec count_bits n =
    if (* BLANK *) then (* BLANK *)
    else (* BLANK *)
  in
  (* BLANK *);;

(* Tests *)
let () =
  assert (hamming_distance 1 4 = 2);
  assert (hamming_distance 3 1 = 1);
  assert (hamming_distance 7 0 = 3);
  Printf.printf "Hamming Distance tests passed.\n";;
