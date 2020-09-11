root=$(cat config.yaml | grep AppPath)
root=$(echo "$root" | sed 's/.*\:\(.*\)# app path/\1/g')
root=$(echo "$root" | sed 's/ //g')
if [ -e "your-app-path" ]; then
    mv your-app-path $root
fi