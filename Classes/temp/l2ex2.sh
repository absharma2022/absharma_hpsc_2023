#! bin/bash
for((i=1;i<21;i++));do
    touch file_${i}
    ls > file_${i}
done
    
