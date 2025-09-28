let repeat_x n =
    if n < 0 then "Error"
    else
      let rec aux m acc = if m <= 0 then acc else aux (m - 1) (acc ^ "x") in
      aux n ""

let test () =
    print_endline (repeat_x (-1));
    print_endline (repeat_x 2);
    print_endline (repeat_x 5)

let () = test ()
