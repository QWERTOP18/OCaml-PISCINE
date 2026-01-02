let bazinga (n : int) =
    if n < 0 then 0
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc
            else aux (i - 1) (acc + (i * i) - i)
        in
        aux n 0
