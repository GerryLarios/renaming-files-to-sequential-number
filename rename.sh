ls -1prt | grep -v "/$" | cat -n | while read n f; do mv -n "${f}" "$(printf "%04d" $n).${f#*.}"; done
