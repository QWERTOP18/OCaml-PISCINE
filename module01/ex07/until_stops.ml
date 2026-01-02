let until_stops (f : int -> int) (pred : int -> bool) (n : int) =
    let rec aux (x : int) acc =
        if pred x then acc
        else aux (f x) (x :: acc)
    in
    List.rev (aux n [])

(* let test () =
    let result1 = until_stops (fun x -> x / 2) (fun x -> x = 0) 10 in
    Printf.printf "until_stops (fun x -> x/2) (fun x -> x=0) 10 = ";
    List.iter (fun x -> Printf.printf "%d " x) result1;
    print_endline "";
    let result2 = until_stops (fun x -> x - 1) (fun x -> x < 0) 5 in
    Printf.printf "until_stops (fun x -> x-1) (fun x -> x<0) 5 = ";
    List.iter (fun x -> Printf.printf "%d " x) result2;
    print_endline ""

let () = test () *)
