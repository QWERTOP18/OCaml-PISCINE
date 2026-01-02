let say_what_again (str : string) (n : int) =
    if n < 0 then ""
    else
        let rec aux (i : int) acc =
            if i <= 0 then acc else aux (i - 1) (str ^ acc)
        in
        aux n ""

(* let test () =
    print_endline (say_what_again "what" 0);
    print_endline (say_what_again "what" 1);
    print_endline (say_what_again "what" 3);
    print_endline (say_what_again "hello" 2);
    print_endline (say_what_again "test" (-1))

let () = test () *)
