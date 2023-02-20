domain=$(cat domains)
for line in $domain; 
do
  echo $line | waybackurls | grep -E "*.js" > urls
  nuclei -silent -l urls -t ~/Tools/js-secret.yaml
done
