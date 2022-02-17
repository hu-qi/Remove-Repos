#!/bin/bash

env_file=$(pwd)/.env

function GetKey(){  
    section=$(echo $1 | cut -d '.' -f 1)  
    key=$(echo $1 | cut -d '.' -f 2)  
    sed -n "/\[$section\]/,/\[.*\]/{  
     /^\[.*\]/d  
     /^[ \t]*$/d  
     /^$/d  
     /^#.*$/d  
     s/^[ \t]*$key[ \t]*=[ \t]*\(.*\)[ \t]*/\1/p  
    }" $env_file  
}  
  
token=$(GetKey "server.token")  
username=$(GetKey "server.username")

echo '===============Start================'

for repName in $(cat repos.txt)
do
    echo "Delete "$repName
    echo $repName | sed -n 's/^.*\/\(.*\).git$/\1/p'| xargs -I {} curl -X DELETE -H "Authorization: token $token" -H "Content-Type: application/json" -d '{"name":"'$repName'"}' "https://api.github.com/repos/$username/{}"
done

echo '===============End================'