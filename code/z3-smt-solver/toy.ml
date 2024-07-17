let rec factorial n =
  if n = 0 then 1
  else n * factorial (n - 1);;

Printf.printf "%d\n" (factorial 5);;