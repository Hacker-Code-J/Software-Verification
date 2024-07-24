(*
Q17: Write a function `subsets_of_bitmask` that generates all subsets of a bitmask.
*)

let bit_length x =
  let rec aux n = 
  if (* BLANK *) then (* BLANK *) 
  else (* BLANK *) 
  in
  (* BLANK *);;

let subsets_of_bitmask mask =
  let rec aux i acc =
    if (* BLANK *) then (* BLANK *)
    else
      let subset = mask land (1 lsl i) in
      (* BLANK *) (if subset = 0 then acc else (subset :: acc))
  in
  (* BLANK *);;

(* Tests *)
let () =
  assert (subsets_of_bitmask 5 = [1; 4]); (* Subsets of 0101 are [0001; 0100] *)
  assert (subsets_of_bitmask 7 = [1; 2; 4]); (* Subsets of 0111 are [0001; 0010; 0100] *)
  assert (subsets_of_bitmask 10 = [2; 8]); (* Subsets of 1010 are [0010; 1000] *)
  Printf.printf "Subsets of Bitmask tests passed.\n";;