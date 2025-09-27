let ft_string_all (f : char -> bool) (str : string) : bool =
    let rec aux i =
        if i >= String.length str then true
        else if f (String.get str i) then aux (i + 1)
        else false
    in
    aux 0

(* let is_digit c = c >= '0' && c <= '9'
let () =
    print_endline "ft_string_all is_digit \"1234567890\"";
    let result = ft_string_all is_digit "1234567890" in
    if result then print_endline "true" else print_endline "false";

    print_endline "ft_string_all is_digit \"1234567890a\"";
    let result = ft_string_all is_digit "1234567890a" in
    if result then print_endline "true" else print_endline "false" *)
