(* 
Q1: Write a function `add` that takes two integers and returns their sum.
Write a function `subtract` that takes two integers and returns their difference.
Write a function `multiply` that takes two integers and returns their product.
Write a function `divide` that takes two integers and returns their quotient as a float.
*)

let add x y = x + y;;
let subtract x y = x - y;;
let multiply x y = x * y;;
let divide x y = (float_of_int x) /. (float_of_int y);;

(* Tests *)
let () =
  assert (add 3 4 = 7);
  assert (subtract 10 5 = 5);
  assert (multiply 2 3 = 6);
  assert (divide 8 4 = 2.0);
  assert (divide 7 2 = 3.5);
  Printf.printf "Basic Arithmetic Operations tests passed.\n";;
