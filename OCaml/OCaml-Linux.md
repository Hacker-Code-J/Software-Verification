### Standard ML (SML)
#### Using SML/NJ (Standard ML of New Jersey)

1. **Install SML/NJ**:
   - On Debian-based systems (like Ubuntu), you can install SML/NJ using `apt`:
     ```bash
     sudo apt update
     sudo apt install smlnj
     ```
   - On Red Hat-based systems (like Fedora), you can use `dnf`:
     ```bash
     sudo dnf install smlnj
     ```

2. **Write an SML Program**:
   - Create a file called `example.sml` with the following content:
     ```sml
     fun factorial 0 = 1
       | factorial n = n * factorial (n - 1);

     val _ = print (Int.toString (factorial 5) ^ "\n");
     ```

3. **Compile and Run the Program**:
   - Open a terminal and navigate to the directory containing `example.sml`.
   - Start the SML/NJ interactive environment:
     ```bash
     sml
     ```
   - In the SML/NJ REPL, load the file:
     ```sml
     - use "example.sml";
     ```

### OCaml
#### Using the OCaml Compiler

1. **Install OCaml**:
   - On Debian-based systems (like Ubuntu), you can install OCaml using `apt`:
     ```bash
     sudo apt update
     sudo apt install ocaml
     ```
   - On Red Hat-based systems (like Fedora), you can use `dnf`:
     ```bash
     sudo dnf install ocaml
     ```
   - Optionally, you can also install `opam`, the OCaml package manager, to manage OCaml libraries and tools:
     ```bash
     sudo apt install opam   # For Debian-based systems
     sudo dnf install opam   # For Red Hat-based systems
     ```

2. **Initialize Opam (if installed)**:
   - Initialize `opam`:
     ```bash
     opam init
     eval $(opam env)
     ```

3. **Write an OCaml Program**:
   - Create a file called `example.ml` with the following content:
     ```ocaml
     let rec factorial n =
       if n = 0 then 1
       else n * factorial (n - 1);;

     Printf.printf "%d\n" (factorial 5);;
     ```

4. **Compile and Run the Program**:
   - Open a terminal and navigate to the directory containing `example.ml`.
   - Compile the OCaml program:
     ```bash
     ocamlc -o example example.ml
     ```
   - Run the compiled program:
     ```bash
     ./example
     ```

### Summary

- **Standard ML (SML)**:
  - Install SML/NJ with `sudo apt install smlnj` or `sudo dnf install smlnj`.
  - Write your `.sml` files and load them in the SML/NJ REPL with `sml` and `use "example.sml";`.

- **OCaml**:
  - Install OCaml with `sudo apt install ocaml` or `sudo dnf install ocaml`.
  - Optionally, install `opam` for package management with `sudo apt install opam` or `sudo dnf install opam`.
  - Write your `.ml` files, compile them with `ocamlc`, and run the resulting executable.

These steps should help you get started with compiling and running ML programs on a Linux system.