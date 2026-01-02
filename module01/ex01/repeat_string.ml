let repeat_string ?(str : string = "x") (n : int) =
    if n < 0 then "Error"
    else
      let rec aux (i : int) = if i = 0 then "" else str ^ aux (i - 1) in
      aux n


(* let test () =
  print_endline (repeat_string (-1));
  print_endline (repeat_string ~str: "Toto" 1);
  print_endline (repeat_string 2);
  print_endline (repeat_string ~str:"what" 2)

let () = test () *)