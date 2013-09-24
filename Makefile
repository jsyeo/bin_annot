CFLAG=-cflag -bin-annot
all: build run

build:
	ocamlbuild $(CFLAG) some_fun.byte
	ocamlbuild $(CFLAG) -pkgs compiler-libs -libs ocamlcommon,ocamltoplevel  get_types.byte

run:
	ocamlrun get_types.byte

clean:
	rm -rf _build
	rm -rf *.native
	rm -rf *.byte
	rm -rf *.cm[oit]
