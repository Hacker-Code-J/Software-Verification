(* arithmetic.ml *)

open Z3

let ctx = mk_context []

let solve_arithmetic () =
  let x = Arithmetic.Integer.mk_const_s ctx "x" in
  let y = Arithmetic.Integer.mk_const_s ctx "y" in

  let solver = Solver.mk_solver ctx None in
  let constraints = [
    Boolean.mk_eq ctx x (Arithmetic.Integer.mk_numeral_i ctx 5);
    Boolean.mk_eq ctx y (Arithmetic.mk_add ctx [x; Arithmetic.Integer.mk_numeral_i ctx 3]);
  ] in
  Solver.add solver constraints;

  match Solver.check solver [] with
  | Solver.SATISFIABLE ->
      Printf.printf "Satisfiable\n";
      (match Solver.get_model solver with
       | Some model ->
           (match Model.eval model x true with
            | Some x_val -> Printf.printf "x = %s\n" (Expr.to_string x_val)
            | None -> Printf.printf "x not found in model\n");
           (match Model.eval model y true with
            | Some y_val -> Printf.printf "y = %s\n" (Expr.to_string y_val)
            | None -> Printf.printf "y not found in model\n")
       | None -> Printf.printf "No model found\n")
  | Solver.UNSATISFIABLE ->
      Printf.printf "Unsatisfiable\n"
  | Solver.UNKNOWN ->
      Printf.printf "Unknown\n"

let () = solve_arithmetic ()
