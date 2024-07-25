```bash
ocamlc -c ast.ml
ocamlc -c lexer.ml
ocamlc -c parser.ml
ocamlc -c eval.ml
ocamlc -c main.ml
```

```bash
ocamlc -o arithmetic_eval ast.cmo lexer.cmo parser.cmo eval.cmo main.cmo
```

```bash
./arithmetic_eval
```

