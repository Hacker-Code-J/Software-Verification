# Makefile for MiniLang Interpreter

# Compiler and flags
OCAML = ocamlc
FLAGS = -g

# List of object files
OBJECTS = ast.cmo lexer.cmo parser.cmo eval.cmo main.cmo

# Target executable
TARGET = arithmetic_eval

# Default rule
all: $(TARGET)

# Rule to build the target
$(TARGET): $(OBJECTS)
	$(OCAML) $(FLAGS) -o $(TARGET) $(OBJECTS)

# Rules for individual modules
ast.cmo: ast.ml
	$(OCAML) $(FLAGS) -c ast.ml

lexer.cmo: lexer.ml
	$(OCAML) $(FLAGS) -c lexer.ml

parser.cmo: parser.ml
	$(OCAML) $(FLAGS) -c parser.ml

eval.cmo: eval.ml
	$(OCAML) $(FLAGS) -c eval.ml

main.cmo: main.ml
	$(OCAML) $(FLAGS) -c main.ml

# Clean rule to remove build artifacts
clean:
	rm -f *.cmo *.cmi $(TARGET)

# Rebuild rule to clean and then build
rebuild: clean all

# PHONY targets are not real files
.PHONY: all clean