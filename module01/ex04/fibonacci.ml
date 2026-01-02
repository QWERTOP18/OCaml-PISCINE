let fibonacci (n : int) =
    if n < 0 then -1
    else if n = 0 then 0
    else if n = 1 then 1
    else
        let rec aux (i : int) (prev : int) (curr : int) =
            if i = n then curr
            else aux (i + 1) curr (prev + curr)
        in
        aux 1 0 1
