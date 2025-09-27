let rec ft_power (b : int) (p : int) : int =
    if p < 0 then 0 (* not implemented *)
    else if p = 0 then 1
    else b * ft_power b (p - 1)

(* let main () =
    print_endline "2^4";
    print_endline (string_of_int (ft_power 2 4));
    print_endline "3^0";
    print_endline (string_of_int (ft_power 3 0));
    print_endline "0^5";
    print_endline (string_of_int (ft_power 0 5));
    print_endline "4^4";
    print_endline (string_of_int (ft_power 4 4))

let () = main () *)
