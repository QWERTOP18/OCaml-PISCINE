let say_what_again (str : string) (n : int) =
    if n < 0 then ""
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc else aux (i - 1) (str ^ acc)
        in
        aux n ""
