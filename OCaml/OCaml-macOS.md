### Standard ML (SML)
#### Using SML/NJ (Standard ML of New Jersey)

1. **Install Homebrew** (if not already installed):
   Homebrew is a popular package manager for macOS. If you don't have it installed, you can install it by running the following command in the terminal:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install SML/NJ**:
   Once Homebrew is installed, you can install SML/NJ using the following command:
   ```bash
   brew install smlnj
   ```

3. **Write an SML Program**:
   Create a file called `example.sml` with the following content:
   ```sml
   fun factorial 0 = 1
     | factorial n = n * factorial (n - 1);

   val _ = print (Int.toString (factorial 5) ^ "\n");
   ```

4. **Compile and Run the Program**:
   Open a terminal and navigate to the directory containing `example.sml`.
   Start the SML/NJ interactive environment:
   ```bash
   sml
   ```
   In the SML/NJ REPL, load the file:
   ```sml
   - use "example.sml";
   ```

### OCaml
#### Using the OCaml Compiler

1. **Install Homebrew** (if not already installed):
   If you don't have Homebrew installed, follow the instructions in the SML/NJ section above.

2. **Install OCaml**:
   You can install OCaml using Homebrew with the following command:
   ```bash
   brew install ocaml
   ```
   Optionally, you can also install `opam`, the OCaml package manager, to manage OCaml libraries and tools:
   ```bash
   brew install opam
   ```

3. **Initialize Opam (if installed)**:
   Initialize `opam`:
   ```bash
   opam init
   eval $(opam env)
   ```

4. **Write an OCaml Program**:
   Create a file called `example.ml` with the following content:
   ```ocaml
   let rec factorial n =
     if n = 0 then 1
     else n * factorial (n - 1);;

   Printf.printf "%d\n" (factorial 5);;
   ```

5. **Compile and Run the Program**:
   Open a terminal and navigate to the directory containing `example.ml`.
   Compile the OCaml program:
   ```bash
   ocamlc -o example example.ml
   ```
   Run the compiled program:
   ```bash
   ./example
   ```

### Summary

- For **Standard ML (SML)** on macOS, use the SML/NJ compiler. Install it with Homebrew (`brew install smlnj`), write your `.sml` files, and load them in the SML/NJ REPL.
- For **OCaml** on macOS, use the OCaml compiler. Install it with Homebrew (`brew install ocaml`), write your `.ml` files, compile them with `ocamlc`, and run the resulting executable.

These steps should help you get started with compiling and running ML programs on macOS.