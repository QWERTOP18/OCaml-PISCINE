(* print_char, String.get and String.length *)

let ft_print_rev (str : string) : unit =
    let rec aux i =
        if i < 0 then ()
        else (
          print_char (String.get str i);
          aux (i - 1))
    in
    aux (String.length str - 1);
    print_char '\n'

let () = ft_print_rev "hello world"
