open Cmt_format
open Format

let (|>) x f = f x
let (@@) f x = f x

let filename = "_build/some_fun.cmt"

let () =
  print_endline "Opening binary annotations...";
  (* Printer.print std_formatter filename; *)
  let lnum = 7 in
  let start =
    {Lexing.pos_cnum = 4;
     Lexing.pos_bol = 0;
     Lexing.pos_lnum = lnum;
     Lexing.pos_fname = filename} in
  let end_ =
    {Lexing.pos_cnum = 80;
     Lexing.pos_bol = 0;
     Lexing.pos_lnum = lnum;
     Lexing.pos_fname = filename} in
  let testloc =
    {Location.loc_start = start ;
     Location.loc_end = end_;
     Location.loc_ghost = false} in
  Retype.print_ty_from_cmt testloc filename
(* let cmt = read_cmt filename in *)
(* print_cmt cmt *)
(* let _ = Toploop.execute_phrase true stdout phr in *)
(* let Parsetree.Ptop_def sstr = phr in sstr *)
(* let (_str, sg, _newenv) = Typemod.type_toplevel_phrase env sstr in *)
(* sg *)
