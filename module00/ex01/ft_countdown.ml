let ft_countdown (n : int) : unit =
    let rec aux i =
        if i < 1 then (
          print_int 0;
          print_char '\n')
        else (
          print_int i;
          print_char '\n';
          aux (i - 1))
    in
    aux n

(* Auxiliary function *)

(* let main () =
    print_endline "Countdown from 3:";
    ft_countdown 3;
    print_endline "Countdown from 0:";
    ft_countdown 0;
    print_endline "Countdown from -1";
    ft_countdown (-1)

let () = main () *)
