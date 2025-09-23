#!/bin/bash

echo "Checking OCaml file formatting with ocamlformat..."

find . -name "*.ml" -not -path "./_opam/*" -not -path "./.git/*" | while read file; do
  echo "Checking formatting for: $file"
  
  temp_file=$(mktemp)
  
  if ocamlformat --check "$file" > /dev/null 2>&1; then
    echo "✓ $file is properly formatted"
  else
    echo "✗ $file needs formatting"
    echo "Current content:"
    cat "$file"
    echo ""
    echo "Expected formatting:"
    ocamlformat "$file"
    echo ""
    echo "To fix, run: ocamlformat --inplace $file"
    exit 1
  fi
done

echo "All OCaml files are properly formatted!"
