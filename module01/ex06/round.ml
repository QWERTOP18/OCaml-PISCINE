let round (lst : 'a list) (n : int) =
    if n = 0 then lst
    else
        let rec aux (remaining : int) (acc : 'a list) (rest : 'a list) =
            match rest with
            | [] -> if remaining > 0 then aux (remaining - 1) [] acc else acc
            | hd :: tl ->
                if remaining > 0 then aux (remaining - 1) (acc @ [hd]) tl
                else rest @ acc
        in
        if n > 0 then aux n [] lst
        else aux (-n) [] (List.rev lst)
