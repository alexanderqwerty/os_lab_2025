#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 number1 number2 ..."
    exit 1
fi

sum=0
for n in "$@"; do
    sum=$((sum + n))
done

echo "Count: $#"
echo "Average: $(awk "BEGIN { printf \"%.2f\", $sum / $# }")"
