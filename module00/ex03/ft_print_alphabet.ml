(* char_of_int, int_of_char and print_char *)
let print_alphabet () : unit =
    let rec aux c =
        if c > int_of_char 'z' then ()
        else (
          print_char (char_of_int c);
          aux (c + 1))
    in
    aux (int_of_char 'a');
    print_char '\n'

(* let () = print_alphabet () *)
