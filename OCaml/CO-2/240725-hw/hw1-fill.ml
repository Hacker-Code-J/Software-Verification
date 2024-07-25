(* Option Type Handling
Q1: Write a function get_or_default that takes an option type and a default value. If the option is None, return the default value; otherwise, return the value inside the Some.
*)

let get_or_default opt default =
  match (* BLANK *) with
  | Some (* BLANK *) -> (* BLANK *)
  | None -> (* BLANK *);;

(* Tests *)
let () =
  assert (get_or_default (Some 10) 0 = 10);
  assert (get_or_default None 5 = 5);
  Printf.printf "Get_or_default tests passed.\n";;