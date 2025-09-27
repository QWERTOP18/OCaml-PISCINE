(* print_int, print_string *)

let print_3 n =
    if n <= 9 then print_string "00" else if n < 90 then print_string "0";
    print_int n;
    if n <> 789 then print_string ", " else print_string "\n"

let ft_print_comb () =
    let rec aux n =
        if n > 789 then ()
        else if
          let a = n / 100 in
          let b = n / 10 mod 10 in
          let c = n mod 10 in
          a >= b || b >= c
        then aux (n + 1)
        else (
          print_3 n;
          aux (n + 1))
    in
    aux 0

let () = ft_print_comb ()
(* # ft_print_comb ();;
012, 013, 014, 015, 016, 017, 018, 019, 023, <more numbers>, 789
- : unit = () *)
