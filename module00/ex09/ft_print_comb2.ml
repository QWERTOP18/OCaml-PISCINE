(* print_char, print_int *)

let print_int2 n =
    if n < 10 then print_char '0';
    print_int n

let print_format n m =
    print_int2 n;
    print_char ' ';
    print_int2 m;
    if n <> 98 then (
      print_char ',';
      print_char ' ')
    else print_char '\n'

let ft_print_comb2 () =
    let rec aux n m =
        print_format n m;
        if n = 98 then ()
        else
          let rec aux2 n m =
              print_format n m;
              if m = 99 then () else aux2 n (m + 1)
          in
          aux2 n (m + 1);
          aux (n + 1) (n + 2)
    in
    aux 0 1

let () = ft_print_comb2 ()
