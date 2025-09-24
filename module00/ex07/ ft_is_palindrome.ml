let ft_is_palindrome (str : string) : bool =
    let rec aux i j =
        if i >= j then true
        else if String.get str i != String.get str j then false
        else aux (i + 1) (j - 1)
    in
    aux 0 (String.length str - 1)

(* let test str bool =
    assert (ft_is_palindrome str = bool);
    Printf.printf "%-6s is %s\n" str (if bool then "palindrome" else "not palindrome")

let () = 
    test "level" true;
    test "hello" false;
    test "" true;
    test "a" true;
    test "aa" true;
    test "aba" true;
    test "abba" true;
    test "abca" false;
    test "abca" false *)
