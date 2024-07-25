(* Option Type Transformation
Q8: Write a function map_option that applies a function to the value inside a Some, leaving None unchanged.
*)

let map_option f = function
  | Some x -> (* BLANK *)
  | None -> None;;

(* Tests *)
let () =
  assert (map_option ((+) 1) (Some 2) = Some 3);
  assert (map_option String.uppercase_ascii (Some "hello") = Some "HELLO");
  assert (map_option ((+) 1) None = None);
  Printf.printf "Map_option tests passed.\n";;
