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

(* let test () =
    let lst1 = [1; 2; 3; 4; 5] in
    let result1 = round lst1 1 in
    Printf.printf "round [1;2;3;4;5] 1 = ";
    List.iter (fun x -> Printf.printf "%d " x) result1;
    print_endline "";
    let result2 = round lst1 2 in
    Printf.printf "round [1;2;3;4;5] 2 = ";
    List.iter (fun x -> Printf.printf "%d " x) result2;
    print_endline "";
    let result3 = round lst1 0 in
    Printf.printf "round [1;2;3;4;5] 0 = ";
    List.iter (fun x -> Printf.printf "%d " x) result3;
    print_endline ""

let () = test () *)
