(* Sum Type Pattern Matching
Q7: Write a function count_leaves that counts the number of leaves in a binary tree represented using the tree type.
*)

type 'a tree = Leaf | Node of 'a * 'a tree * 'a tree;;

let rec count_leaves = function
  | Leaf -> (* BLANK *)
  | Node (_, left, right) -> count_leaves (* BLANK *) + count_leaves (* BLANK *);;

(* Tests *)
let () =
  let tree = Node (1, Node (2, Leaf, Leaf), Leaf) in
  assert (count_leaves tree = 3);
  assert (count_leaves Leaf = 1);
  Printf.printf "Count_leaves tests passed.\n";;
