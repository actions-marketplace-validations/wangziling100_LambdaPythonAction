root=$(cat config.yaml | grep AppPath)
root=$(echo "$root" | sed 's/.*\:\(.*\)# app path/\1/g')
root=$(echo "$root" | sed 's/ //g')
if [ -e "demo" ]; then
    mv demo $root
fi