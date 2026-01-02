let too_deep (lst : 'a list list) =
    let rec aux (acc : 'a list) (remaining : 'a list list) =
        match remaining with
        | [] -> acc
        | hd :: tl ->
            let rec flatten_inner (inner : 'a list) (inner_acc : 'a list) =
                match inner with
                | [] -> inner_acc
                | x :: xs -> flatten_inner xs (x :: inner_acc)
            in
            aux (flatten_inner hd [] @ acc) tl
    in
    List.rev (aux [] lst)
