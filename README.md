# renaming-files-to-sequential-number
A linux command to rename files in a folder to sequential numbers/

1. Sorted in order of modification, later files with later indexes
2. Ignores directories - and not recursive. 
3. Pads indexes. 
4. Maintains original extension.

```bash
ls -1prt | grep -v "/$" | cat -n | while read n f; do mv -n "${f}" "$(printf "%04d" $n).${f#*.}"; done
```
