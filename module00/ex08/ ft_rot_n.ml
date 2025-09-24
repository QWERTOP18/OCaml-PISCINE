(* char_of_int, int_of_char and String.map *)

let rotate c n =
    if c >= 'a' && c <= 'z' then
      char_of_int
        (((int_of_char c - int_of_char 'a' + n) mod 26) + int_of_char 'a')
    else if c >= 'A' && c <= 'Z' then
      char_of_int
        (((int_of_char c - int_of_char 'A' + n) mod 26) + int_of_char 'A')
    else c

let ft_rot_n (n : int) (str : string) : string =
    String.map (fun c -> rotate c n) str

(* let () =
    ft_rot_n 1 "hello" |> print_endline;
    ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz" |> print_endline;
    ft_rot_n 1 "NBzlk qnbjr !" |> print_endline;
    ft_rot_n 42 "0123456789" |> print_endline *)
