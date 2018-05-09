#!/bin/bash
cd /

for d in ./*/ ; do (cd "$d" && for d in ./*/ ; do (cd "$d" && pwd && diff -U 0 <(ls ./) <(ls ../) | grep -c ^@); done ); done

pwd
diff -U 0 <(ls ./) <(ls ../) | grep -c ^@
