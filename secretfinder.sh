cat urls | grep -e '.js$' | anew -q js_file

while read line; 
do
  if curl -s $line | grep -q -f ~/Documents/pentest/scripts/regex.txt;
      then 
        curl -s $line | grep -f ~/Documents/pentest/scripts/regex.txt | tr -d '\n'
        echo " > "$line
  fi
done < js_file
