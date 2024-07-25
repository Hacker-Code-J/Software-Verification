(* Result Type Handling
Q4: Define a polymorphic type result representing a success (Ok) or an error (Error). Write a function result_to_option that converts a result to an option, discarding the error case.
*)

type ('a, 'e) result = Ok of 'a | Error of 'e;;

let result_to_option = function
  | Ok value -> (* BLANK *)
  | Error _ -> (* BLANK *);;

(* Tests *)
let () =
  assert (result_to_option (Ok 5) = Some 5);
  assert (result_to_option (Error "fail") = None);
  Printf.printf "Result_to_option tests passed.\n";;
