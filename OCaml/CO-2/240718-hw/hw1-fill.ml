(* 
Q1: Write a function `add` that takes two integers and returns their sum.
Write a function `subtract` that takes two integers and returns their difference.
Write a function `multiply` that takes two integers and returns their product.
Write a function `divide` that takes two integers and returns their quotient as a float.
*)

let add x y = (* BLANK *);;
let subtract x y = (* BLANK *);;
let multiply x y = (* BLANK *);;
let divide x y = (* HINT: 'float_of_int' *);;

(* Tests *)
let () =
  assert (add 3 4 = 7);
  assert (subtract 10 5 = 5);
  assert (multiply 2 3 = 6);
  assert (divide 8 4 = 2.0);
  assert (divide 7 2 = 3.5);
  Printf.printf "Basic Arithmetic Operations tests passed.\n";;
