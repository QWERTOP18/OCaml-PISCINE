let pie_machine (f : 'a -> 'b) (lst : 'a list) : 'b list =
    let rec aux (acc : 'b list) (remaining : 'a list) =
        match remaining with
        | [] -> List.rev acc
        | hd :: tl -> aux (f hd :: acc) tl
    in
    aux [] lst
