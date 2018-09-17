#! /bin/bash

delta=0.2
i=0
while true;
do
  i=$(bc -q  <<< "$i + $delta")
  (echo -e "HTTP/1.1 200 OK\n\n";
  echo line $i;
  echo sine  $(bc -ql <<< "s( $i)")
  
  ) | nc -l -p 3001
done
