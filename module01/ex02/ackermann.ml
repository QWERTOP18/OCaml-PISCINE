let ackermann (m : int) (n : int)=
    if m == 0 then n + 1
    else if m > 0 
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc else aux (i - 1) (str ^ acc)
        in
        aux n ""

let test () =
    print_endline (ackernann (-1) 7);
    print_endline (ackernann 0 0 );
    print_endline (ackernann 2 3);
    print_endline (ackernann 4 1);

let () = test ()
